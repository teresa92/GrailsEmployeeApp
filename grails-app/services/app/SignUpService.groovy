package app

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class SignUpService {

    def dataSource

    def CreateUser(def users_name, def users_pasword) {
        Sql sql = new Sql(dataSource)
        return sql.executeInsert ("""insert into users(users_name, users_password) values(${users_name},${users_password})""")
    }

}
