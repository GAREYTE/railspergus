package railspergus
class CommandeDetailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [commandeDetailInstanceList: CommandeDetail.list(params), commandeDetailInstanceTotal: CommandeDetail.count()]
    }

    def create() {
        [commandeDetailInstance: new CommandeDetail(params)]
    }

    def save() {
        def commandeDetailInstance = new CommandeDetail(params)
        if (!commandeDetailInstance.save(flush: true)) {
            render(view: "create", model: [commandeDetailInstance: commandeDetailInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'commandeDetail.label', default: 'CommandeDetail'), commandeDetailInstance.id])
        redirect(action: "show", id: commandeDetailInstance.id)
    }

    def show(Long id) {
        def commandeDetailInstance = CommandeDetail.get(id)
        if (!commandeDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commandeDetail.label', default: 'CommandeDetail'), id])
            redirect(action: "list")
            return
        }

        [commandeDetailInstance: commandeDetailInstance]
    }

    def edit(Long id) {
        def commandeDetailInstance = CommandeDetail.get(id)
        if (!commandeDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commandeDetail.label', default: 'CommandeDetail'), id])
            redirect(action: "list")
            return
        }

        [commandeDetailInstance: commandeDetailInstance]
    }

    def update(Long id, Long version) {
        def commandeDetailInstance = CommandeDetail.get(id)
        if (!commandeDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commandeDetail.label', default: 'CommandeDetail'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (commandeDetailInstance.version > version) {
                commandeDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'commandeDetail.label', default: 'CommandeDetail')] as Object[],
                          "Another user has updated this CommandeDetail while you were editing")
                render(view: "edit", model: [commandeDetailInstance: commandeDetailInstance])
                return
            }
        }

        commandeDetailInstance.properties = params

        if (!commandeDetailInstance.save(flush: true)) {
            render(view: "edit", model: [commandeDetailInstance: commandeDetailInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'commandeDetail.label', default: 'CommandeDetail'), commandeDetailInstance.id])
        redirect(action: "show", id: commandeDetailInstance.id)
    }

    def delete(Long id) {
        def commandeDetailInstance = CommandeDetail.get(id)
        if (!commandeDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commandeDetail.label', default: 'CommandeDetail'), id])
            redirect(action: "list")
            return
        }

     
            commandeDetailInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'commandeDetail.label', default: 'CommandeDetail'), id])
            redirect(action: "list")
    
    }
}
