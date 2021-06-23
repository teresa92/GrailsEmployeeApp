package app

class EmployeeController {
    def EmployeeService


    def index() {
        def pageEmployee = EmployeeService.getPageOFEmployee()
        def employee = EmployeeService.getAllEmployee(params.max,params.offset)
        if (employee == []) {
            flash.error = "Δεν υπάρχουν εργάζομενοι"
            ['Employee': employee,'pageEmployee':pageEmployee]
        } else {
            ['Employee': employee,'pageEmployee':pageEmployee.count]
        }
    }

    def addEmployee() {
        def department = EmployeeService.getAllDepartmentForEmployee()
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
            redirect(action: "index" ,params: [offset:0,max:5])
        }
    }


    def editEmployee() {
        def employeeById = EmployeeService.getEmployeeById(params.id)
        def departments = EmployeeService.getAllDepartmentForEmployee()
        if (employeeById == null) {
            flash.error = "Ο εργαζόμενος που εισάγατε δεν υπάρχει. Παρακαλώ εισάγετε τα στοιχεία του εργαζομένου"
            redirect(action:"addEmployee" )
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
            redirect(action: "index",params: [offset:0,max:5])
        }
    }

    def delete() {
        def deleteTheEmployee = EmployeeService.deleteEmployee(params.id)
        if (deleteTheEmployee == []) {
            flash.error = "Κάτι πήγε στραβά"
            redirect(action: "index")
        } else {
            redirect(action: "index",params: [offset:0,max:5])
        }
    }
}
