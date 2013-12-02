package railspergus
class CommandeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [commandeInstanceList: Commande.list(params), commandeInstanceTotal: Commande.count()]
    }

    def create() {
        [commandeInstance: new Commande(params)]
    }

    def save() {
        def commandeInstance = new Commande(params)
        if (!commandeInstance.save(flush: true)) {
            render(view: "create", model: [commandeInstance: commandeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'commande.label', default: 'Commande'), commandeInstance.id])
        redirect(action: "show", id: commandeInstance.id)
    }

    def show(Long id) {
        def commandeInstance = Commande.get(id)
        if (!commandeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commande.label', default: 'Commande'), id])
            redirect(action: "list")
            return
        }

        [commandeInstance: commandeInstance]
    }

    def edit(Long id) {
        def commandeInstance = Commande.get(id)
        if (!commandeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commande.label', default: 'Commande'), id])
            redirect(action: "list")
            return
        }

        [commandeInstance: commandeInstance]
    }

    def update(Long id, Long version) {
        def commandeInstance = Commande.get(id)
        if (!commandeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commande.label', default: 'Commande'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (commandeInstance.version > version) {
                commandeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'commande.label', default: 'Commande')] as Object[],
                          "Another user has updated this Commande while you were editing")
                render(view: "edit", model: [commandeInstance: commandeInstance])
                return
            }
        }

        commandeInstance.properties = params

        if (!commandeInstance.save(flush: true)) {
            render(view: "edit", model: [commandeInstance: commandeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'commande.label', default: 'Commande'), commandeInstance.id])
        redirect(action: "show", id: commandeInstance.id)
    }

    def delete(Long id) {
        def commandeInstance = Commande.get(id)
        if (!commandeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commande.label', default: 'Commande'), id])
            redirect(action: "list")
            return
        }

            commandeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'commande.label', default: 'Commande'), id])
            redirect(action: "list")
    }
}
