CREATE TABLE "Title" (
    "title_ID" varchar(45)   NOT NULL,
    "title" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "title_ID"
     )
);

CREATE TABLE "Employees" (
    "emp_no" varchar(45)   NOT NULL,
    "emp_title__id" varchar(45)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(45)   NOT NULL,
    "last_name" varchar(45)   NOT NULL,
    "sex" varchar(45)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Dept-manager" (
    "dept_no" varchar(45)   NOT NULL,
    "emp_no" varchar(45)   NOT NULL
);

CREATE TABLE "Dept-emp" (
    "emp_no" varchar(45)   NOT NULL,
    "dempt_no" varchar(45)   NOT NULL
);

CREATE TABLE "Salaries" (
    "emp_no" varchar(10)   NOT NULL,
    "salary" int   NOT NULL
);

CREATE TABLE "Departments" (
    "dept_no" varchar(45)   NOT NULL,
    "dept_name" varchar(45)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title__id" FOREIGN KEY("emp_title__id")
REFERENCES "Title" ("title_ID");

ALTER TABLE "Dept-manager" ADD CONSTRAINT "fk_Dept-manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept-manager" ADD CONSTRAINT "fk_Dept-manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept-emp" ADD CONSTRAINT "fk_Dept-emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept-emp" ADD CONSTRAINT "fk_Dept-emp_dempt_no" FOREIGN KEY("dempt_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");
