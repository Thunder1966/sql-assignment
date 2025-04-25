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
ALTER TABLE employees ADD dob DATE, ADD gender VARCHAR(10), ADD address VARCHAR(255), ADD status VARCHAR(20);
ALTER TABLE departments ADD region VARCHAR(50), ADD status VARCHAR(20), ADD description TEXT, ADD code VARCHAR(10);
ALTER TABLE projects ADD repo_link VARCHAR(255), ADD priority_level VARCHAR(20), ADD client_feedback TEXT, ADD risk_factor VARCHAR(30);
ALTER TABLE clients ADD industry_type VARCHAR(50), ADD account_manager INT, ADD last_contacted DATE, ADD rating INT;
ALTER TABLE timesheets ADD overtime_hours DECIMAL(4,2), ADD late_reason VARCHAR(255), ADD is_billable BOOLEAN, ADD shift VARCHAR(20);

ALTER TABLE employees DROP COLUMN status;
ALTER TABLE departments DROP COLUMN code;
ALTER TABLE projects DROP COLUMN risk_factor;
ALTER TABLE clients DROP COLUMN rating;
ALTER TABLE timesheets DROP COLUMN shift;

ALTER TABLE employees 
    CHANGE first_name fname VARCHAR(50),
    CHANGE last_name lname VARCHAR(50),
    CHANGE email email_address VARCHAR(100),
    CHANGE phone contact_number VARCHAR(15);

ALTER TABLE departments 
    CHANGE dept_name department_name VARCHAR(100),
    CHANGE location office_location VARCHAR(100),
    CHANGE phone contact VARCHAR(15),
    CHANGE email dept_email VARCHAR(100);

ALTER TABLE projects 
    CHANGE project_name name VARCHAR(100),
    CHANGE start_date begin_date DATE,
    CHANGE end_date finish_date DATE,
    CHANGE budget total_budget DECIMAL(12,2);

ALTER TABLE clients 
    CHANGE contact_person contact_name VARCHAR(100),
    CHANGE phone phone_number VARCHAR(20),
    CHANGE address client_address VARCHAR(200),
    CHANGE email client_email VARCHAR(100);

ALTER TABLE timesheets 
    CHANGE hours_worked work_hours DECIMAL(4,2),
    CHANGE task_description task_details VARCHAR(255),
    CHANGE remarks comments VARCHAR(255),
    CHANGE approval_status status VARCHAR(30);
    
    ALTER TABLE employees 
    MODIFY fname VARCHAR(100),
    MODIFY lname VARCHAR(100),
    MODIFY salary DECIMAL(12,2),
    MODIFY gender CHAR(1);

ALTER TABLE departments 
    MODIFY department_name VARCHAR(150),
    MODIFY budget DECIMAL(15,2),
    MODIFY floor SMALLINT,
    MODIFY region VARCHAR(100);

ALTER TABLE projects 
    MODIFY name VARCHAR(150),
    MODIFY technology_stack TEXT,
    MODIFY team_size SMALLINT,
    MODIFY status ENUM('Pending', 'Active', 'Completed', 'On Hold');
desc projects;
ALTER TABLE clients MODIFY client_name VARCHAR(150),
    MODIFY city VARCHAR(100),
    MODIFY state VARCHAR(100),
    MODIFY zip_code VARCHAR(20);
    

ALTER TABLE timesheets 
    MODIFY wostudent_detailsrk_hours FLOAT,
    MODIFY comments TEXT,
    MODIFY is_billable TINYINT(1),
    MODIFY approved_by BIGINT;

describe timesheets;
select * from timesheets;
insert into timesheets(emp_id)
values(1);
insert into timesheets(project_id)
values(2);
select * from timesheets;
select * from clients;
