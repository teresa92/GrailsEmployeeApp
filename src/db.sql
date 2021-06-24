CREATE TABLE users(
                         users_id BIGSERIAL PRIMARY KEY,
                         users_name VARCHAR(50) NOT null,
                         users_password VARCHAR(50) NOT null
);
CREATE TABLE department(
                            department_id BIGSERIAL PRIMARY KEY ,
                            department_name VARCHAR(50) NOT null,
                            CONSTRAINT department_name UNIQUE (department_name)
);

CREATE TABLE employee(
                         employee_id    BIGSERIAL PRIMARY KEY ,
                         last_name  VARCHAR(50) NOT NULL,
                         first_name  VARCHAR(50) NOT NULL,
                         is_active BOOLEAN NOT NULL,
                         date_of_birth DATE NOT NULL,
                         department_id BIGINT REFERENCES department(department_id)
                             CONSTRAINT afm UNIQUE (afm)
);









INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Rhonda','Hanna','True','22/05/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Erin','Chava','True','21/08/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Genevieve','Fiona','True','25/01/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Maya','Tamara','True','12/09/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Claire','Holly','True','22/07/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Ciara','Isabella','True','15/05/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Violet','Courtney','True','05/08/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Amethyst','Sierra','True','09/07/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Nell','Ariana','True','11/11/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Cathleen','Bree','True','14/02/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Brynne','Whilemina','True','16/11/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Hillary','Uta','True','25/06/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Eugenia','Desiree','True','19/03/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Minerva','Elizabeth','True','11/03/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Kessie','Juliet','True','30/08/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Hadassah','Jenna','True','13/07/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Yael','Genevieve','True','03/04/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Germane','Maris','True','06/11/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Erin','Guinevere','True','04/01/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Morgan','Michelle','True','09/10/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Yael','Latifah','True','27/11/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Eugenia','Nicole','True','25/04/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Brianna','Lacey','True','14/04/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Amy','Kerry','True','12/08/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Illana','Jeanette','True','11/03/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Dara','Blaine','True','13/09/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Germane','Ann','True','28/09/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Uma','Sigourney','True','26/03/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Rowan','Octavia','True','22/07/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Nerea','Charlotte','True','16/06/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Germane','Carissa','True','13/12/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Uta','Cynthia','True','28/08/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Willa','Rae','True','28/07/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Yolanda','Melanie','True','26/07/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Clio','Daryl','True','09/07/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Rama','Madonna','True','25/08/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Cynthia','Tasha','True','01/05/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Abra','Roanna','True','30/08/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Sage','Selma','True','13/02/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Fay','Madonna','True','20/08/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Tanya','Shana','True','24/09/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Brielle','Amela','True','21/08/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Donna','Desiree','True','12/07/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('India','Kessie','True','17/07/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Kessie','Alisa','True','14/04/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Kylan','Galena','True','22/05/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Veronica','Amelia','True','22/01/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Autumn','Leandra','True','15/01/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Hedda','Ora','True','13/08/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Inga','Haley','True','19/11/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Quon','Marcia','True','23/09/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Fallon','Sonia','True','23/05/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Kelly','Morgan','True','17/11/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Lois','Haley','True','05/06/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Adara','Sonya','True','29/11/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Lareina','Lee','True','24/11/2020',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Deborah','Zenia','True','23/01/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Quinn','Laurel','True','27/03/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Meredith','Quemby','True','10/11/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Ella','Roary','True','16/06/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Hiroko','Kelsie','True','08/05/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Clare','Summer','True','09/04/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Mara','Aphrodite','True','28/10/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Basia','Felicia','True','14/06/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Tanisha','Scarlet','True','27/01/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Ivy','Lois','True','02/05/2022',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Anastasia','Allegra','True','01/05/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Yuri','Jennifer','True','14/02/2021',31);
INSERT INTO "employee" (last_name,first_name,is_active,date_of_birth,department_id) VALUES ('Ora','Serina','True','27/03/2022',31);

