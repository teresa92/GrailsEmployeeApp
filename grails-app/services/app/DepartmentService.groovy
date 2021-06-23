package app

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class DepartmentService {
    def dataSource

    def getAllDepartment(def max, def offset) {
        Sql sql = new Sql(dataSource)
        try {
            return sql.rows("""select *from department LIMIT '${max}' offset '${offset}'  """)
        }
        catch (Exception e) {
            e.printStackTrace()
            return []
        }
    }

    def getPageOfDepartment() {
        Sql sql = new Sql(dataSource)
        try {
            return sql.firstRow('SELECT COUNT(DISTINCT department_id) as count FROM department')

        }
        catch (Exception e) {
            e.printStackTrace()
            return []
        }
    }

        def getDepartmentById(def id) {
            Sql sql = new Sql(dataSource)
            try {
                return sql.firstRow("""SELECT * FROM department WHERE department_id='${id}'""")
            }
            catch (Exception e) {
                e.printStackTrace()
                return null
            }

        }

        def createDepartment(def department_name) {
            Sql sql = new Sql(dataSource)
            try {
                return sql.executeInsert("""INSERT INTO department(department_name) VALUES (${department_name})""")
            }
            catch (Exception e) {
                e.printStackTrace()
                return []
            }
        }

        def deleteDepartment(def id) {
            Sql sql = new Sql(dataSource)
            try {
                return sql.execute("""DELETE FROM department WHERE(department_id='${id}')""")
            }
            catch (Exception e) {
                e.printStackTrace()
                return []
            }
        }

        def updateDepartment(def id, def department_name) {
            Sql sql = new Sql(dataSource)
            try {
                return sql.executeUpdate("""UPDATE department SET department_name='${department_name}' WHERE department_id='${id}'""")
            } catch (Exception e) {
                e.printStackTrace()
                return 0
            }
        }
    }
