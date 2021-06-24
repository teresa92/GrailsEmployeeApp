package app

import grails.testing.web.interceptor.InterceptorUnitTest
import spock.lang.Specification

class LoginInterceptorSpec extends Specification implements InterceptorUnitTest<LoginInterceptor> {

    def setup() {
    }

    def cleanup() {

    }

    void "Test security interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"security")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
