"CREATE FUNCTION Test.MyUDF (a INT, b INT, c INT)
   RETURNS INT
   LANGUAGE SQL
   CONTAINS SQL
   DETERMINISTIC
   SQL SECURITY DEFINER
   COLLATION INVOKER
   INLINE TYPE 1
   RETURN a + b - c;"