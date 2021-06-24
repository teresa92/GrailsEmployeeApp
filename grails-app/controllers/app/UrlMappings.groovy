package app

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "login",action: "index")
        "/employee"(controller: "employee" ,action: "index")
        "/department"(controller : "department", action: "index")
        "/employee/add"(controller: "employee", action: "addEmployee")
        "/department/add"(controller: "department",action: "addDepartment")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
