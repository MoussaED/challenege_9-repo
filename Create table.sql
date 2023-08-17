

CREATE TABLE titles (
    title_id varchar PRIMARY KEY NOT NULL,
    title varchar NOT NULL
);

CREATE TABLE departments (
    dept_no varchar PRIMARY KEY NOT NULL,
    dept_name varchar NOT NULL
);

CREATE TABLE employees (
    emp_no varchar PRIMARY KEY NOT NULL,
    emp_title_id varchar NOT NULL,
    birth_date varchar NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    sex varchar NOT NULL,
    hire_date varchar NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);


CREATE TABLE dept_employees (
    emp_no varchar PRIMARY KEY NOT NULL,
    dept_no varchar NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no varchar PRIMARY KEY NOT NULL,
    emp_no varchar NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE salaries (
    emp_no varchar PRIMARY KEY NOT NULL,
    salary varchar NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries 

select * from titles

select * from employees

select * from dept_manager

select * from dept_employees

select * from employees