/*Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Input Format

The Employee table containing employee data for a company is described as follows:

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is their monthly salary.

employee_id   name    months    salary
__________________________________________
12228         Rose      15       1968
33645         Angela     1       3443

*/




SELECT name FROM Employee ORDER BY name ASC
