package railspergus



class SalarieController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [salarieInstanceList: Salarie.list(params), salarieInstanceTotal: Salarie.count()]
    }

    def create() {
        [salarieInstance: new Salarie(params)]
    }

    def save() {
        def salarieInstance = new Salarie(params)
        if (!salarieInstance.save(flush: true)) {
            render(view: "create", model: [salarieInstance: salarieInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'salarie.label', default: 'Salarie'), salarieInstance.id])
        redirect(action: "show", id: salarieInstance.id)
    }

    def show(Long id) {
        def salarieInstance = Salarie.get(id)
        if (!salarieInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salarie.label', default: 'Salarie'), id])
            redirect(action: "list")
            return
        }

        [salarieInstance: salarieInstance]
    }

    def edit(Long id) {
        def salarieInstance = Salarie.get(id)
        if (!salarieInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salarie.label', default: 'Salarie'), id])
            redirect(action: "list")
            return
        }

        [salarieInstance: salarieInstance]
    }

    def update(Long id, Long version) {
        def salarieInstance = Salarie.get(id)
        if (!salarieInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salarie.label', default: 'Salarie'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (salarieInstance.version > version) {
                salarieInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'salarie.label', default: 'Salarie')] as Object[],
                          "Another user has updated this Salarie while you were editing")
                render(view: "edit", model: [salarieInstance: salarieInstance])
                return
            }
        }

        salarieInstance.properties = params

        if (!salarieInstance.save(flush: true)) {
            render(view: "edit", model: [salarieInstance: salarieInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'salarie.label', default: 'Salarie'), salarieInstance.id])
        redirect(action: "show", id: salarieInstance.id)
    }

    def delete(Long id) {
        def salarieInstance = Salarie.get(id)
        if (!salarieInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salarie.label', default: 'Salarie'), id])
            redirect(action: "list")
            return
        }

           salarieInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'salarie.label', default: 'Salarie'), id])
            redirect(action: "list")
     
    }
}
