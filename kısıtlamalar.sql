CREATE TABLE workers
(id INT PRIMARY KEY,
id_number VARCHAR(11) UNIQUE NOT NULL,
name TEXT DEFAULT 'NONAME',
salary INT NOT NULL);
INSERT INTO workers VALUES(1,12345678910,'ali',5000);
INSERT INTO workers (id, id_number,salary) VALUES(2,12345687910,4000);
CREATE TABLE vocation_plan
(id INT,
placeid INT,
country text,
hotel_name TEXT,
employeid INT,
vocation_lenght INT,
budget REAL,
PRIMARY KEY(id),
FOREIGN KEY(employeid) REFERENCES employees(EmployeeId)
);
INSERT INTO vocation_plan VALUES(1,34,'TR', 'HAPPY HOTEL',1,5,3600);
INSERT INTO vocation_plan VALUES(6,34,'TR', 'Mutlu HOTEL',3,5,3600);
INSERT INTO vocation_plan VALUES(3,34,'TR', 'HAPPY HOTEL',10,5,3600);
INSERT INTO vocation_plan VALUES(4,34,'TR', 'KOLON HOTEL',1,5,3600);
SELECT e.FirstName, e.LastName, v.hotel_name, v.vocation_lenght
FROM employees e
INNER JOIN vocation_plan v
ON e.EmployeeId = v.employeid AND v.employeid = 1;



