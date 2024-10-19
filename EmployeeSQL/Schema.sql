CREATE TABLE Departments (
  dept_no VARCHAR(4) PRIMARY KEY,
  dept_name VARCHAR(40) NOT NULL
);
Select * From Departments;

CREATE TABLE Dept_Emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(4) NOT NULL,
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

Select * From Dept_Emp;

CREATE TABLE Dept_Manager (
  dept_no VARCHAR(4) NOT NULL,
  emp_no INT NOT NULL,
  PRIMARY KEY (dept_no, emp_no),
  FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

Select * From Dept_Manager;

CREATE TABLE Employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(5) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(14) NOT NULL,
  last_name VARCHAR(16) NOT NULL,
  sex VARCHAR(1) NOT NULL,
  hire_date DATE NOT NULL
  
);
select * From Employees;

CREATE TABLE Salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
  PRIMARY KEY (emp_no)
);
Select * from Salaries;

CREATE TABLE Titles (
  title_id VARCHAR(5) PRIMARY KEY,
  title VARCHAR(50) NOT NULL
  );
Select * From Titles;
