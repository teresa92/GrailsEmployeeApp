package app

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class SignUpService {

    def dataSource

    def CreateUser(def users_name, def users_password) {
        Sql sql = new Sql(dataSource)
        try {
            return sql.executeInsert("""insert into users(users_name, users_password) values(${users_name},${users_password})""")
        }catch(Exception e){

            return []
        }
    }

}
