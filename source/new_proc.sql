"CREATE PROCEDURE SP_Employee 
(IN name CHAR(20),
IN id INTEGER,
IN dept_no INTEGER,
OUT dname CHAR(10),
INOUT errstr VARCHAR(30))
 
BEGIN
DECLARE CONTINUE HANDLER FOR SQLSTATE VALUE '23505'
SET errstr = 'Duplicate Row.';
 
INSERT INTO Employee (EmpName, EmpNo, DeptNo )
VALUES (name, id, dept_no);
 
END;
"