package app

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class EmployeeService {
    def dataSource

    def getAllEmployee() {
        Sql elementsEmployee = new Sql(dataSource)
        return elementsEmployee.rows('SELECT * FROM employee')

    }
    def insertE(def last_name , def first_name, def is_active , def date_of_birth) {
        Sql insetEmployee = new Sql(dataSource)
        return insetEmployee.executeInsert(
                """INSERT INTO employee(last_name,first_name,is_active,date_of_birth) 
                VALUES ('${last_name}','${first_name}','true','${date_of_birth}')""")
    }
    def deleteEmployee(def id){
        Sql deleteEmployee= new Sql(dataSource)
        return deleteEmployee.execute(""" DELETE FROM employee WHERE employee_id='${id}'""")
    }
}
