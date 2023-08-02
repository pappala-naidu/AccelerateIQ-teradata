CREATE MACRO Get_Emp AS ( 
   SELECT 
   EmployeeNo, 
   FirstName, 
   LastName 
   FROM  
   employee 
   ORDER BY EmployeeNo; 
);