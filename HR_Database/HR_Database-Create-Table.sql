use hr_database;

create table regions (
	region_id				integer					not null,
    region_name				varchar(25)				not null,
    constraint				regions_pk				primary key(region_id)
);

create table countries (
	country_id				char(2)					not null,
    country_name			varchar(40)				null,
    region_id				integer					not null,
	constraint				countries_pk			primary key(country_id, region_id),
    constraint				countries_emp_fk		foreign key(region_id)
													references regions(region_id)
);

create table location (
	location_id				integer					not null,
    street_address			varchar(25)				null,
    postal_code				varchar(12)				null,
    city					varchar(30)				not null,
    state_province			varchar(12)				not null,
    country_id				char(2)					not null,
    constraint				locations_pk			primary key(location_id, country_id),
    constraint				location_emp_fk			foreign key(country_id)
													references countries(country_id)
);

create table departments (
	department_id			integer					not null,
    department_name			varchar(30)				not null,
    manager_id				integer					not null,
    location_id				integer					not null,
    constraint				departments_pk			primary key(department_id, location_id),
    constraint				departments_emp_fk		foreign key(location_id)
													references location(location_id)
);

create table jobs (
	job_id					varchar(10)				not null,
    job_title				varchar(35)				null,
    min_salary				integer					null,
    max_salary				integer					null,
    constraint				jobs_pk					primary key(job_id)
);

create table job_history (
	employee_id				integer					not null,
    start_date				date					not null,
    end_date				date					null,
    job_id					varchar(10)				not null,
    department_id			integer					not null,
    constraint				job_history_pk			primary key(employee_id, start_date, department_id, job_id),
    constraint				job_history_emp_fk		foreign key(department_id)
													references departments(department_id),
	constraint				job_history_emp2_fk		foreign key(job_id)
													references jobs(job_id)
);

create table employees (
	employee_id				integer					not null,
    first_name				varchar(20)				not null,
    last_name				varchar(25)				not null,
    email					varchar(20)				not null,
    phone_number			varchar(20)				not null,
    hire_date				date					not null,
    job_id					varchar(10)				not null,
    salary					integer					not null,
    commission_pct			double					null,
    manager_id				integer					not null,
    department_id			integer					not null,
    constraint				employees_pk			primary key(employee_id, job_id, department_id),
	constraint				employees_emp2_fk		foreign key(job_id)
													references jobs(job_id),
	constraint				employees_emp3_fk		foreign key(department_id)
													references departments(department_id)
);

create table job_grades (
	grade_level				varchar(2)				not null,
    lowest_sal				integer					null,
    highest_sal				integer					null,
    constraint				job_grades_pk			primary key(grade_level)
);