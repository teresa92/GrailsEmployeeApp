package app

class DepartmentController {
    def DepartmentService

    def index() {
        println(params)
        def department = DepartmentService.getAllDepartment()

        ['Department': department]

    }
}
