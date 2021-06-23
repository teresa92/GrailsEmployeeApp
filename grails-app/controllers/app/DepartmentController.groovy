package app

class DepartmentController {
    def DepartmentService
    def index() {
        def pageDepartment = DepartmentService.getPageOfDepartment()
        def department = DepartmentService.getAllDepartment(params.max,params.offset)
        if (department == []) {
            flash.error = "Κάτι πήγε στραβά"
            ['Department': department,'pageDEpartment':pageDepartment]
        } else {
            ['Department': department,'pageDEpartment':pageDepartment.count]
        }
    }

    def addDepartment() {}

    def create() {
        def addEmployee = DepartmentService.createDepartment(params.DepartmentName)
        if (addEmployee == []) {
            flash.error = "Αυτό το τμήμα υπάρχει ήδη. Παρακαλώ εισάγετε ένα καινούργιο τμήμα"
            redirect(action: "addDepartment")
        }
        else{
            redirect(action: "index",params: [offset:0,max:5])
        }
    }

    def delete() {
        def deleteADepartment = DepartmentService.deleteDepartment(params.id)
        if (deleteADepartment == []) {
            flash.error = "Το τμήμα δεν μπορει να διαγραφεί γιατι έχει εργαζομένους"
            redirect(controller:"department", action: "index")
        } else {
            redirect(controller:"department", action: "index",params: [offset:0,max:5])
        }
    }


    def edit() {
        def departmentById = DepartmentService.getDepartmentById(params.id)
        if (departmentById == null) {
            flash.error = "Το τμήμα δεν υπάρχει. Παρακαλώ εισάγετε νέο τμήμα"
            redirect(action:"addDepartment")
        } else {
            ['departmentById': departmentById]
        }

    }

    def update() {
        def updateADepartment = departmentService.updateDepartment(params.id, params.DepartmentName)
        if (updateADepartment == 0) {
            flash.error = "Το τμήμα υπάρχει ήδη."
            redirect(action: "edit", id: params.id)
        } else {
            redirect(action: "index", params: [offset:0,max:5])
        }

    }
}
