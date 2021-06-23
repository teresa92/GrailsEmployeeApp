package app

class EmployeeController {
    def EmployeeService
    def DepartmentService

    def index() {
        def employee = EmployeeService.getAllEmployee( )
        if (employee == []) {
            flash.error = "Δεν υπάρχουν εργάζομενοι"
            ['Employee': employee]
        } else {
            ['Employee': employee]
        }
    }

    def addEmployee() {
        def department = DepartmentService.getAllDepartment()
        if (department == []) {
            flash.error = "Κάτι εκανες λαθος"
            ['department': department]
        } else {
            ['department': department]
        }
    }

    def create() {
        def employee = EmployeeService.createEmployee(params.lastName, params.firstName, params.isActive, params.dateOFBirth, params.departmentId)
        if (employee == []) {
            flash.error = "Κάτι έκανες λάθος"
            redirect(action: "addEmployee")
        } else {
            redirect(action: "index")
        }
    }


    def editEmployee() {
        def employeeById = EmployeeService.getEmployeeById(params.id)
        def departments = DepartmentService.getAllDepartment()
        if (employeeById == null) {
            flash.error = "Ο εργαζόμενος που εισάγατε δεν υπάρχει. Παρακαλώ εισάγετε τα στοιχεία του εργαζομένου"
            redirect(action:"addEmployee")
        } else {
            ['employeeById': employeeById, 'department': departments]

        }
    }


    def update() {
        def updateEmployee = EmployeeService.update(params.lastName, params.firstName, params.dateOFBirth, params.id, params.departmentId)
        if (updateEmployee == 0) {
            flash.error = "Κάτι έκανες λάθος"
            redirect(action: "edit", id: params.id)
        } else {
            redirect(action: "index")
        }
    }

    def delete() {
        def deleteTheEmployee = EmployeeService.deleteEmployee(params.id)
        if (deleteTheEmployee == []) {
            flash.error = "Κάτι πήγε στραβά"
            redirect(action: "index")
        } else {
            redirect(action: "index")
        }
    }
}
