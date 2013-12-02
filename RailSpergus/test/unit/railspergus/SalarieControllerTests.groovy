package railspergus



import org.junit.*
import grails.test.mixin.*

@TestFor(SalarieController)
@Mock(Salarie)
class SalarieControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/salarie/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.salarieInstanceList.size() == 0
        assert model.salarieInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.salarieInstance != null
    }

    void testSave() {
        controller.save()

        assert model.salarieInstance != null
        assert view == '/salarie/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/salarie/show/1'
        assert controller.flash.message != null
        assert Salarie.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/salarie/list'

        populateValidParams(params)
        def salarie = new Salarie(params)

        assert salarie.save() != null

        params.id = salarie.id

        def model = controller.show()

        assert model.salarieInstance == salarie
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/salarie/list'

        populateValidParams(params)
        def salarie = new Salarie(params)

        assert salarie.save() != null

        params.id = salarie.id

        def model = controller.edit()

        assert model.salarieInstance == salarie
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/salarie/list'

        response.reset()

        populateValidParams(params)
        def salarie = new Salarie(params)

        assert salarie.save() != null

        // test invalid parameters in update
        params.id = salarie.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/salarie/edit"
        assert model.salarieInstance != null

        salarie.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/salarie/show/$salarie.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        salarie.clearErrors()

        populateValidParams(params)
        params.id = salarie.id
        params.version = -1
        controller.update()

        assert view == "/salarie/edit"
        assert model.salarieInstance != null
        assert model.salarieInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/salarie/list'

        response.reset()

        populateValidParams(params)
        def salarie = new Salarie(params)

        assert salarie.save() != null
        assert Salarie.count() == 1

        params.id = salarie.id

        controller.delete()

        assert Salarie.count() == 0
        assert Salarie.get(salarie.id) == null
        assert response.redirectedUrl == '/salarie/list'
    }
}
