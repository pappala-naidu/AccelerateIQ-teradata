"CREATE PROCEDURE InsertSalary ( 
   IN in_EmployeeNo INTEGER, IN in_Gross INTEGER, 
   IN in_Deduction INTEGER, IN in_NetPay INTEGER 
) 
BEGIN 
   INSERT INTO Salary ( 
      EmployeeNo, 
      Gross, 
      Deduction, 
      NetPay 
   ) 
   VALUES ( 
      :in_EmployeeNo, 
      :in_Gross, 
      :in_Deduction, 
      :in_NetPay 
   ); 
END;"