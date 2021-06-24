package app

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class LoginService {
    def dataSource

    def getUser(def usersName, def usersPassword) {
        Sql sql = new Sql(dataSource)
        try {
            return sql.firstRow("""select users_id from users where users_name=${usersName} and users_password=${usersPassword}""")

        } catch (Exception e) {
            return null
        }

    }
}
