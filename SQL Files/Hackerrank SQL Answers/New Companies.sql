/*
Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Company = founder, company_code
Lead_Manager = company_code, lead_manager_code
Senior_Manager = company_code, lead_manager_code, senior_manager_code
Manager = company_code, lead_manager_code, senior_manager_code, manager_code
Employee = employee_code
*/

select 
    c.company_code,
    c.founder,
    count(distinct l.lead_manager_code),
    count(distinct s.senior_manager_code),
    count(distinct m.manager_code),
    count(distinct e.employee_code)
from 
    company as c
inner join Lead_Manager as l
on c.company_code = l.company_code
inner join Senior_Manager as s
on l.company_code = s.company_code
inner join Manager as m
on s.company_code = m.company_code
inner join Employee as e
on m.company_code = e.company_code
group by c.company_code, c.founder
order by c.company_code asc;
    