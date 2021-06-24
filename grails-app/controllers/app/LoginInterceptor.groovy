package app


class LoginInterceptor {

    LoginInterceptor() {
        matchAll().excludes(controller: "login").excludes(controller: 'signUp')
    }

    boolean before() {
        if (!session["user"]) {
            redirect(controller: "login", action: "index")
            return false
        }
        return true
    }
}
