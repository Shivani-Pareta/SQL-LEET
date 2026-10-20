#create a function 
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N =N-1; 
    #Decrement the value of n by 1 because sql offsets start at 0
    RETURN (
    #begins the return statement to output the final result of the function
      SELECT 
        IFNULL(
            (SELECT DISTINCT salary
            FROM Employee
            ORDER BY salary DESC
            LIMIT 1 OFFSET N),null

        )
  );
END