package app

class EmployeeController {
    def EmployeeService

    def index() {
        def employee = EmployeeService.getAllEmployee()
        ['Employee': employee]
    }

    def insertE() {

        EmployeeService.insertE(params.lastName, params.firstName,params.isActive, params.dateOFBirth)
        redirect(action:"index")
    }
def delete(){
    println(params)
    EmployeeService.deleteEmployee(params.id)
    redirect(action: "index")
}
}