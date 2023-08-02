CREATE SET TABLE EMPLOYEE,FALLBACK ( 
   EmployeeNo INTEGER, 
   FirstName VARCHAR(30), 
   LastName VARCHAR(30), 
   DOB DATE FORMAT 'YYYY-MM-DD', 
   JoinedDate DATE FORMAT 'YYYY-MM-DD', 
   DepartmentNo BYTEINT 
);

CREATE PROCEDURE hr.SP_Employee
(IN name CHAR(20),
IN id INTEGER,
IN dept_no INTEGER,
OUT dname CHAR(10),
INOUT errstr VARCHAR(30))
 
BEGIN
DECLARE CONTINUE HANDLER FOR SQLSTATE VALUE '23505'
SET errstr = 'Duplicate Row.';

CREATE PROCEDURE InsertSalary ( IN in_EmployeeNo INTEGER, IN in_Gross INTEGER, IN in_Deduction INTEGER, IN in_NetPay INTEGER ) BEGIN INSERT INTO Salary ( EmployeeNo, Gross, Deduction, NetPay ) VALUES ( :in_EmployeeNo, :in_Gross, :in_Deduction, :in_NetPay ); END;
CALL InsertSalary(105,20000,2000,18000);

CREATE SET TABLE Orders ( StoreNo SMALLINT, OrderNo INTEGER, OrderDate DATE FORMAT 'YYYY-MM-DD', OrderTotal INTEGER ) PRIMARY INDEX(OrderNo) PARTITION BY RANGE_N ( OrderDate BETWEEN DATE '2010-01-01' AND '2016-12-31' EACH INTERVAL '1' DAY );

CREATE VIEW Employee_View AS SELECT EmployeeNo, FirstName, LastName, FROM Employee;

REPLACE VIEW Employee_View AS SELECT EmployeeNo, FirstName, BirthDate, JoinedDate DepartmentNo FROM Employee;

DROP VIEW Employee_View;

INSERT INTO Employee (
   EmployeeNo, 
   FirstName, 
   LastName, 
   BirthDate, 
   JoinedDate, 
   DepartmentNo 
)
VALUES ( 
   101, 
   'Mike', 
   'James', 
   '1980-01-05', 
   '2005-03-27', 
   01
);

INSERT INTO Employee (EmpName, EmpNo, DeptNo )
VALUES (name, id, dept_no);
UPDATE Employee 
SET DepartmentNo = 03 
WHERE EmployeeNo = 101;

DELETE FROM Employee 
WHERE EmployeeNo = 101;

SELECT DepartmentNo,Count(*) FROM   
Employee 
GROUP BY DepartmentNo;

SELECT DeptName
INTO dname FROM Department
WHERE DeptNo = dept;
END;

SELECT CONCAT('Tera','data')

SELECT A.EmployeeNo, A.DepartmentNo, B.NetPay FROM Employee A INNER JOIN Salary B ON (A.EmployeeNo = B. EmployeeNo);

SELECT EmployeeNo, FirstName, LastName FROM Employee_View;

SELECT EXTRACT(YEAR FROM CURRENT_DATE);  
EXTRACT(YEAR FROM Date) 
