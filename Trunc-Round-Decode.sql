//TRUNC DISCARTA O RESTANTE
//ROUND ARREDONDA MATEMATICAMENTE
select d.department_name,e.job_id,
avg(e.salary),round(avg(e.salary),0),trunc(avg(salary))
from employees e inner join departments d on 
d.department_id = e.department_id
where e.department_id in ( 10,20,30,40)
//FUNCAO DE GRUPO TEM QUE SER COM HAVING - AVG,MIN,MAX,COUNT
having avg(e.salary)>=7000


//retorna salario maior que abel -- SUBQUERY
select
last_name,
salary
from employees
where salary > (select salary from employees where last_name = 'Abel')
group by department_id

// CASE ORACLE
select 
count(department_id),
sum(decode(to_char(hire_date,'yyyy'),1995,1,0)) "1995",
sum(decode(to_char(hire_date,'yyyy'),1996,1,0)) "1996",
sum(decode(to_char(hire_date,'yyyy'),1997,1,0)) "1997",
sum(decode(to_char(hire_date,'yyyy'),1998,1,0)) "1998"
from employees

