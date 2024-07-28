-- Create the departments table
CREATE TABLE "departments" (
    "dept_no" VARCHAR(5) NOT NULL,  -- Department number, primary key
    "dept_name" VARCHAR(50) NOT NULL,  -- Department name
    CONSTRAINT "pk_departments" PRIMARY KEY ("dept_no")  -- Primary key constraint
);

-- Create the dept_emp table to link employees to departments
CREATE TABLE "dept_emp" (
    "emp_no" INTEGER NOT NULL,  -- Employee number, part of composite primary key
    "dept_no" VARCHAR(5) NOT NULL,  -- Department number, part of composite primary key
    CONSTRAINT "pk_dept_emp" PRIMARY KEY ("emp_no", "dept_no")  -- Composite primary key constraint
);

-- Create the dept_manager table to link department managers to departments
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(5) NOT NULL,  -- Department number, part of composite primary key
    "emp_no" INTEGER NOT NULL,  -- Employee number, part of composite primary key
    CONSTRAINT "pk_dept_manager" PRIMARY KEY ("dept_no", "emp_no")  -- Composite primary key constraint
);

-- Create the employees table
CREATE TABLE "employees" (
    "emp_no" INTEGER NOT NULL,  -- Employee number, primary key
    "emp_title_id" VARCHAR(5) NOT NULL,  -- Title ID
    "birth_date" DATE,  -- Birth date
    "first_name" VARCHAR(50) NOT NULL,  -- First name
    "last_name" VARCHAR(50) NOT NULL,  -- Last name
    "sex" VARCHAR(1) NOT NULL,  -- Sex
    "hire_date" DATE NOT NULL,  -- Hire date
    CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no")  -- Primary key constraint
);

-- Create the salaries table
CREATE TABLE "salaries" (
    "emp_no" INTEGER NOT NULL,  -- Employee number, primary key
    "salary" DECIMAL(16,8) NOT NULL,  -- Salary
    CONSTRAINT "pk_salaries" PRIMARY KEY ("emp_no")  -- Primary key constraint
);

-- Create the titles table
CREATE TABLE "titles" (
    "title_id" VARCHAR(5) NOT NULL,  -- Title ID, primary key
    "title" VARCHAR(50) NOT NULL,  -- Title name
    CONSTRAINT "pk_titles" PRIMARY KEY ("title_id")  -- Primary key constraint
);

-- Add foreign key constraints to dept_emp table
ALTER TABLE "dept_emp" 
ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" 
ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no");

-- Add foreign key constraints to dept_manager table
ALTER TABLE "dept_manager" 
ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" 
ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no");

-- Add foreign key constraints to employees table
ALTER TABLE "employees" 
ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no") REFERENCES "salaries" ("emp_no");

ALTER TABLE "employees" 
ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id") REFERENCES "titles" ("title_id");
