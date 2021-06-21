package app

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class EmployeeService {
    def dataSource

    def getAllEmployee() {
        Sql sql = new Sql(dataSource)
        try {
            return sql.rows("""SELECT *, to_char(date_of_birth, 'DD-MM-YYYY') as date_of_birth
                            FROM employee,department WHERE number_deparment_id=department_id AND is_active=true""")
        }catch(Exception e){
            e.printStackTrace()
            return []
        }
    }

    def getEmployeeById(def id) {
        Sql sql = new Sql(dataSource)
        try {
            return sql.firstRow(" SELECT * FROM employee, department WHERE employee_id='${id}'AND number_deparment_id=department_id")
        }catch(Exception e){
            e.printStackTrace()
            return null
        }
    }

    def createEmployee(def last_name, def first_name, def is_active, def date_of_birth, def department_id) {
        Sql sql = new Sql(dataSource)
        try {
            return sql.executeInsert(
                    """INSERT INTO employee(last_name,first_name,is_active,date_of_birth,number_deparment_id) 
                VALUES ('${last_name}','${first_name}','true','${date_of_birth}','${department_id}')""")
        }
        catch (Exception e) {
            e.printStackTrace()
            return []
        }
    }

    def deleteEmployee(def id) {
        Sql sql = new Sql(dataSource)
        try {
            return sql.execute(""" DELETE FROM employee WHERE employee_id='${id}'""")
        }
        catch (Exception e){
            e.printStackTrace()

            return []
        }
    }

    def update(def last_name, def first_name, def date_of_birth, def employee_id, def number_deparment_id) {
        Sql sql = new Sql(dataSource)
        try {
            return sql.executeUpdate("""update employee
                set last_name=${last_name},first_name=${first_name}, date_of_birth='${date_of_birth}'
                ,number_deparment_id='${number_deparment_id}'
                where employee_id ='${employee_id}'""")
        } catch (Exception e) {
            e.printStackTrace()
            return 0

        }
    }
}



