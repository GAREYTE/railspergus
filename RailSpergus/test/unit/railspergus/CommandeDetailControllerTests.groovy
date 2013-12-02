package railspergus



import org.junit.*
import grails.test.mixin.*

@TestFor(CommandeDetailController)
@Mock(CommandeDetail)
class CommandeDetailControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/commandeDetail/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.commandeDetailInstanceList.size() == 0
        assert model.commandeDetailInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.commandeDetailInstance != null
    }

    void testSave() {
        controller.save()

        assert model.commandeDetailInstance != null
        assert view == '/commandeDetail/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/commandeDetail/show/1'
        assert controller.flash.message != null
        assert CommandeDetail.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/commandeDetail/list'

        populateValidParams(params)
        def commandeDetail = new CommandeDetail(params)

        assert commandeDetail.save() != null

        params.id = commandeDetail.id

        def model = controller.show()

        assert model.commandeDetailInstance == commandeDetail
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/commandeDetail/list'

        populateValidParams(params)
        def commandeDetail = new CommandeDetail(params)

        assert commandeDetail.save() != null

        params.id = commandeDetail.id

        def model = controller.edit()

        assert model.commandeDetailInstance == commandeDetail
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/commandeDetail/list'

        response.reset()

        populateValidParams(params)
        def commandeDetail = new CommandeDetail(params)

        assert commandeDetail.save() != null

        // test invalid parameters in update
        params.id = commandeDetail.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/commandeDetail/edit"
        assert model.commandeDetailInstance != null

        commandeDetail.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/commandeDetail/show/$commandeDetail.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        commandeDetail.clearErrors()

        populateValidParams(params)
        params.id = commandeDetail.id
        params.version = -1
        controller.update()

        assert view == "/commandeDetail/edit"
        assert model.commandeDetailInstance != null
        assert model.commandeDetailInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/commandeDetail/list'

        response.reset()

        populateValidParams(params)
        def commandeDetail = new CommandeDetail(params)

        assert commandeDetail.save() != null
        assert CommandeDetail.count() == 1

        params.id = commandeDetail.id

        controller.delete()

        assert CommandeDetail.count() == 0
        assert CommandeDetail.get(commandeDetail.id) == null
        assert response.redirectedUrl == '/commandeDetail/list'
    }
}
