package app

class LoginController {

    def index() {
        ["something":'']
    }
    def authentication(){
        redirect( controller:"employee", action:"index", params: [offset:0,max:5])
    }
    def goToSignUp(){
        redirect( controller: "signUp", action : "index")
    }
}
