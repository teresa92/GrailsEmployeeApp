package app

import grails.testing.web.interceptor.InterceptorUnitTest
import spock.lang.Specification

class securitySpec extends Specification implements InterceptorUnitTest<security> {

    def setup() {
    }

    def cleanup() {

    }

    void "Test authentication interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"authentication")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
