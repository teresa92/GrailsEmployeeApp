package app

class SignUpController {
    def SignUpService
    def index() {

    }


    def goToLogin() {
        println(params)
        craeteuser= SignUpService.CreateUser(params.userName,params.pasword)
        redirect(controller:"login", action:"index")
    }

}