package app

class LoginController {
    def LoginService

    def index() {
    }

    def authentication(){
        def userId=LoginService.getUser(params.userName, params.pasword)
        if(userId==null){
            flash.error="Τα στοιχεία δεν είναι έγκυρα. Παρακαλώ εισάγετε σωστά στοιχεία"
            redirect(controller:"login", action :"index")
        }else {
            session["user"]=params.userName
            redirect(controller: "employee", action: "index", params: [offset: 0, max: 5])
        }
    }
    def logout(){
        session.invalidate()
        redirect( controller: "login", action: "index")
    }
}
