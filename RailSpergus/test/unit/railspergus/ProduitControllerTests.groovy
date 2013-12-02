package railspergus



import org.junit.*
import grails.test.mixin.*

@TestFor(ProduitController)
@Mock(Produit)
class ProduitControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/produit/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.produitInstanceList.size() == 0
        assert model.produitInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.produitInstance != null
    }

    void testSave() {
        controller.save()

        assert model.produitInstance != null
        assert view == '/produit/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/produit/show/1'
        assert controller.flash.message != null
        assert Produit.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/produit/list'

        populateValidParams(params)
        def produit = new Produit(params)

        assert produit.save() != null

        params.id = produit.id

        def model = controller.show()

        assert model.produitInstance == produit
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/produit/list'

        populateValidParams(params)
        def produit = new Produit(params)

        assert produit.save() != null

        params.id = produit.id

        def model = controller.edit()

        assert model.produitInstance == produit
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/produit/list'

        response.reset()

        populateValidParams(params)
        def produit = new Produit(params)

        assert produit.save() != null

        // test invalid parameters in update
        params.id = produit.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/produit/edit"
        assert model.produitInstance != null

        produit.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/produit/show/$produit.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        produit.clearErrors()

        populateValidParams(params)
        params.id = produit.id
        params.version = -1
        controller.update()

        assert view == "/produit/edit"
        assert model.produitInstance != null
        assert model.produitInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/produit/list'

        response.reset()

        populateValidParams(params)
        def produit = new Produit(params)

        assert produit.save() != null
        assert Produit.count() == 1

        params.id = produit.id

        controller.delete()

        assert Produit.count() == 0
        assert Produit.get(produit.id) == null
        assert response.redirectedUrl == '/produit/list'
    }
}
