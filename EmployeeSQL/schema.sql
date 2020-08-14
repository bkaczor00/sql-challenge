CREATE TABLE "employees" (
	"emp_no" int NOT NULL,
	"emp_title_id" varchar(100) NOT NULL,
	"birth_date" date NOT NULL,
	"first_name" varchar(50) NOT NULL, 
	"last_name" varchar(50) NOT NULL,
	"sex" varchar(3) NOT NULL,
	"hire_date" date NOT NULL 
);

CREATE TABLE "departments" (
    "dept_no" varchar(100) NOT NULL,
    "dept_name" varchar(100) NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" int NOT NULL,
    "dept_no" varchar(100) NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(100) NOT NULL,
    "emp_no" int NOT NULL
);

CREATE TABLE "titles" (
    "title_id" varchar(100) NOT NULL,
    "title" varchar(100) NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" int NOT NULL,
    "salary" int NOT NULL
);
	
