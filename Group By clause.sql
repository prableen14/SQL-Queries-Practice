/* Write a query to display highest salary department wise and names of employee who is taking that salary. */

Select Ename from Emp where Salary In(Select Max(Salary) from Emp group by Dept)
