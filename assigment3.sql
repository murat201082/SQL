--Single Row Subqueries--
--query1--
SELECT name, TrackId,Milliseconds,MAX(Milliseconds)
FROM tracks;
--query2--
SELECT name, TrackId,Milliseconds,MIN(Milliseconds)
FROM tracks;
--query3--
SELECT name, TrackId,Bytes, Milliseconds,(SELECT AVG(Milliseconds) FROM tracks) as Average
FROM tracks
WHERE Milliseconds > (SELECT AVG(Milliseconds) FROM tracks)  ORDER BY Bytes DESC;
 -- Multiple Row Subqueries--
 --query1--
 SELECT CustomerId,FirstName,LastName 
 FROM customers WHERE CustomerId IN (SELECT EmployeeId FROM employees WHERE FirstName IN ('Jane','Margaret') AND LastName IN('Peacock','Park'));
 
 --query2--
 SELECT c.CustomerId,c.FirstName,c.LastName 
 FROM employees e 
 INNER JOIN customers c 
 ON e.EmployeeId=c.CustomerId WHERE e.FirstName IN ('Jane','Margaret') AND e.LastName IN('Peacock','Park');
 --DDL Statements--
 --query1--
CREATE TABLE courses
 (CourseId INT PRIMARY KEY UNIQUE,
 CourseName TEXT NOT NULL,
 EmployeersId INT,
 CoursePrice INT,
 FOREIGN KEY(EmployeersId) REFERENCES employees(EmployeeId));
 --query2--
 INSERT INTO courses VALUES(22,'Ali',1,3500);
 INSERT INTO courses VALUES(33,'Ömer',2,4000);
 INSERT INTO courses VALUES(44,'Ekrem',3,4100);
 INSERT INTO courses VALUES(55,'Seda',4,4300);
 INSERT INTO courses VALUES(77,'Emel',5,3900);
 --query3--
 DELETE FROM courses WHERE CourseId = 77;
 --query4--
 ALTER TABLE courses ADD StartDate;
 --query5--
 ALTER TABLE courses DROP COLUMN CoursePrice;
 --query6--
 DROP TABLE courses;