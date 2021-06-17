package app

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class DepartmentService {
    def dataSource

    def getAllDepartment() {
        Sql elementDepartment = new Sql(dataSource)
        return elementDepartment.rows('SELECT* FROM department' )
    }
}
