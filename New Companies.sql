/* Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:
1 Founder
2 Lead Manager
3 Senior Manager
4 Manager
5 Employee
Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. 
Order your output by ascending company_code.

Note:

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. 
For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.
*/

select C.company_code, 
       C.founder,
       count(distinct L.lead_manager_code),
       count(distinct S.senior_manager_code),
       count(distinct M.manager_code),
       count(distinct E.employee_code)
                            from Company as C,
                                 Lead_Manager as L,
                                 Senior_Manager as S,
                                 Manager as M,
                                 Employee as E 
                            WHERE E.manager_code = M.manager_code 
                                  AND M.senior_manager_code = S.senior_manager_code
                                  AND L.lead_manager_code = S.lead_manager_code
                                  AND C.company_code = L.company_code
                            group by C.company_code, C.founder
                            order by C.company_code
