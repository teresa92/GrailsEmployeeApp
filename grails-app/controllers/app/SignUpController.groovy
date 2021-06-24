package app

class SignUpController {
    def SignUpService

    def index() {

    }


    def addUser() {
        def create=SignUpService.CreateUser(params.userName,params.password)
        if(create==[]){
            flash.error="Το ονομα χρήστη που εισάγατε υπάρχει ήδη."
            redirect (controller: "signUp", action: "index")
        }else {
            redirect(controller: "login", action: "index")
        }
    }

}