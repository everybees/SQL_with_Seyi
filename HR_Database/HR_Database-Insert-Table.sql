use hr_database;

insert into regions (region_id, region_name)
values
(01, 'Africa'),
(02, 'Other Places');

insert into countries (country_id, country_name, region_id)
values
('WK', 'Wakanda', 01),
('OS', 'Osun', 01);

insert into location (location_id, street_address, postal_code, city, state_province, country_id)
values
(312, '312 Herbert Marcaulay Way', null, 'Yaba', 'Lagos', 'OS'),
(72, '72B Olosha', null, 'Mushin', 'Lagos', 'OS');

insert into departments (department_id, department_name, manager_id, location_id)
values
(30, 'Female Body Investigator', 114, 312),
(50, 'Clout Initiative Accociation', 100, 72),
(60, 'Kawasaki Theology', 103, 312),
(80, 'Colosus Mutation', 147, 72),
(100, 'Car Genetics', 108, 312);

insert into jobs (job_id, job_title, min_salary, max_salary)
values
('IT_Prog', 'IT Programming', 4000, 7000),
('FI_Mgr', 'Financial Manager', 10000, 15000),
('FI_Account', 'Financial Accountant', 7000, 20000),
('PU_Man', 'Public Manager', 10000, 20000),
('PU_Clerk', 'Public Clerk', 2000, 5000),
('ST_Man', 'Store Manager', 5000, 10000),
('ST_Clerk', 'Store Clerk', 2500, 5000),
('SA_Rep', 'Salute Representative', 5000, 15000);

insert into job_history (employee_id, start_date, end_date, job_id, department_id)
values
(106, '2006-02-12', null, 'IT_Prog', 60);

insert into employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values
(106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '2006-02-05', 'IT_Prog',4800, null, 103, 60),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '2007-02-07', 'IT_Prog', 4200, 0.00, 103, 60),
(108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '2002-08-17', 'FI_Mgr', 12008, 0.00, 101, 100),
(109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '2002-08-16', 'FI_Account', 9000, 0.00, 108, 100),
(110, 'John', 'Chen', 'JCHEN', '515.124.4269', '2005-09-28', 'FI_Account', 8200, 0.00, 108, 100),
(111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '2005-09-30', 'FI_Account', 7700, 0.00, 108, 100),
(112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '2006-03-07', 'FI_Account', 7800, 0.00, 108, 100),
(113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', '2007-12-07', 'FI_Account', 6900, null, 108, 100),
(114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '2002-12-07', 'PU_Man', 11000, 0.00, 100, 30),
(115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '2003-05-18', 'PU_Clerk', 3100, 0.00, 114, 30),
(116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '2005-12-24', 'PU_Clerk', 2900, 0.00, 114, 30),
(121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '2005-04-10', 'ST_Man', 8200, 0.00, 100, 50),
(122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '2003-05-01', 'ST_Man', 7900, 0.00, 100, 50),
(123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '2005-10-10', 'ST_Man', 6500, 0.00, 100, 50),
(124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '2007-11-16', 'ST_Man', 5800, 0.00, 100, 50),
(125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '2005-07-16', 'ST_Clerk', 3200, 0.00, 120, 50),
(126, 'Irene', 'Mikkilineni', 'MIKKILI', '650.124.1224', '2006-09-28', 'ST_Clerk', 2700, 0.00, 120, 50),
(164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '2008-01-24', 'SA_Rep', 7200, 0.10, 147, 80),
(165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', '2008-02-23', 'SA_Rep', 6800, 0.10, 147, 80),
(166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '2008-03-24', 'SA_Rep', 6400, 0.10, 147, 80),
(167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '2008-04-21', 'SA_Rep', 6200, 0.10, 147, 80),
(168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '2005-03-11', 'SA_Rep', 11500, 0.25, 148, 80),
(169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '2006-03-23', 'SA_Rep', 10000, 0.20, 148, 80),
(170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '2006-01-24', 'SA_Rep', 9600, 0.20, 148, 80),
(171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '2007-02-23', 'SA_Rep', 7400, 0.15, 148, 80),
(172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '2007-03-24', 'SA_Rep', 7300, 0.15, 148, 80),
(173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '2008-04-21', 'SA_Rep', 6100, 0.10, 148, 80),
(174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '2004-05-11', 'SA_Rep', 11000, 0.30, 149, 80),
(175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '2005-03-19', 'SA_Rep', 8800, 0.25, 149, 80),
(176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '2006-03-24', 'SA_Rep', 8600, 0.20, 149, 80),
(177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '2006-04-23', 'SA_Rep', 8400, 0.20, 149, 80),
(178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '2007-05-24', 'SA_Rep', 7000, 0.15, 149, 80);

insert into job_grades (grade_level, lowest_sal, highest_sal)
values
(010, 2000, 4999),
(011, 5000, 7999),
(012, 8000, 15000);