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

