"CREATE FUNCTION test.MyUDF1 (a INT, b INT, c INT)
   RETURNS INT
   LANGUAGE SQL
   CONTAINS SQL
   DETERMINISTIC
   COLLATION INVOKER
   INLINE TYPE 1
   RETURN a * b * c;"
 

   "CREATE FUNCTION test.MyUDF2 (d INT, e INT, f INT)
   RETURNS INT
   LANGUAGE SQL
   CONTAINS SQL
   DETERMINISTIC
   COLLATION INVOKER
   INLINE TYPE 1
   RETURN d + e + f;
"
