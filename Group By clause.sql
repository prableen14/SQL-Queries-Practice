/* Write a query to display highest salary department wise and names of employee who is taking that salary. 

GROUP BY clause rule- We can only write the same attribute with SELECT which is mentioned in with group by clause. 
But we can write different attributes names with aggregate functions with the SELECT statement.
*/

Select Ename from Emp where Salary In(Select Max(Salary) from Emp group by Dept);

/* Write a query to display all the department names where number of employees is less than 2. 

***With GROUP BY clause, having is used instead of where
*/

Select dept from Emp group by dept having count(*) <2;
