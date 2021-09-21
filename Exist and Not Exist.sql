/* These are used in Correlated Queries. They always return True or False. 
Find the details of employees who is working on atleast one project */

Select * from Emp where Eid Exists(Select Eid from Project where Emp.Eid=Project.Eid)
