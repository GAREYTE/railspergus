package railspergus

class ProduitController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [produitInstanceList: Produit.list(params), produitInstanceTotal: Produit.count()]
    }

    def create() {
        [produitInstance: new Produit(params)]
    }

    def save() {
        def produitInstance = new Produit(params)
        if (!produitInstance.save(flush: true)) {
            render(view: "create", model: [produitInstance: produitInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'produit.label', default: 'Produit'), produitInstance.id])
        redirect(action: "show", id: produitInstance.id)
    }

    def show(Long id) {
        def produitInstance = Produit.get(id)
        if (!produitInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produit.label', default: 'Produit'), id])
            redirect(action: "list")
            return
        }

        [produitInstance: produitInstance]
    }

    def edit(Long id) {
        def produitInstance = Produit.get(id)
        if (!produitInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produit.label', default: 'Produit'), id])
            redirect(action: "list")
            return
        }

        [produitInstance: produitInstance]
    }

    def update(Long id, Long version) {
        def produitInstance = Produit.get(id)
        if (!produitInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produit.label', default: 'Produit'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (produitInstance.version > version) {
                produitInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'produit.label', default: 'Produit')] as Object[],
                          "Another user has updated this Produit while you were editing")
                render(view: "edit", model: [produitInstance: produitInstance])
                return
            }
        }

        produitInstance.properties = params

        if (!produitInstance.save(flush: true)) {
            render(view: "edit", model: [produitInstance: produitInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'produit.label', default: 'Produit'), produitInstance.id])
        redirect(action: "show", id: produitInstance.id)
    }

    def delete(Long id) {
        def produitInstance = Produit.get(id)
        if (!produitInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produit.label', default: 'Produit'), id])
            redirect(action: "list")
            return
        }

      
            produitInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'produit.label', default: 'Produit'), id])
            redirect(action: "list")
     
    }
}
