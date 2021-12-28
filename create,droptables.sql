CREATE TABLE employees
(Adı VARCHAR(40),
soyadı VARCHAR(40),
doğum_tarihi date);

CREATE TABLE personel
(Adı VARCHAR(40),
soyadı VARCHAR(40),
doğum_tarihi date);



CREATE TABLE vocation_plan
(placeid INT,
country text,
hotel_name TEXT,
employeid INT,
vocation_lenght INT,

budget REAL);

DROP TABLE if EXISTS personel;


CREATE TABLE creating_plan
(placeid INT,
country text,
hotel_name TEXT,
employeid INT,
vocation_lenght INT,
budget REAL)
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
INSERT INTO creating_plan VALUES(48,'Turkey','Happy Hotel',1,7,4500);
INSERT INTO creating_plan VALUES(48,'Turkey','Happy Hotel',1,7,4500);
INSERT INTO creating_plan VALUES(40,'Netherland','nether Hotel',1,4,3000);
INSERT INTO creating_plan(placeid, country,hotel_name,employeid) VALUES(39,'Turkey','Temiz Hotel', 3);
