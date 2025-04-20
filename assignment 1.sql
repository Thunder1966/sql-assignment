CREATE TABLE employees (
    emp_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    hire_date DATE,
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT,
    manager_id INT
);

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(100),
    location VARCHAR(100),
    budget DECIMAL(10,2),
    phone VARCHAR(15),
    email VARCHAR(100),
    head_id INT,
    floor INT,
    building VARCHAR(50),
    open_since DATE
);

CREATE TABLE projects (
    project_id INT,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(12,2),
    manager_id INT,
    client_name VARCHAR(100),
    status VARCHAR(30),
    team_size INT,
    technology_stack VARCHAR(200)
);

CREATE TABLE clients (
    client_id INT,
    client_name VARCHAR(100),
    contact_person VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(200),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zip_code VARCHAR(10)
);

CREATE TABLE timesheets (
    timesheet_id INT,
    emp_id INT,
    project_id INT,
    date_worked DATE,
    hours_worked DECIMAL(4,2),
    task_description VARCHAR(255),
    approval_status VARCHAR(30),
    submitted_on DATE,
    approved_by INT,
    remarks VARCHAR(255)
);
