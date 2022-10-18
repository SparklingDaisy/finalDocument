select 3+5
from emp

desc emp

select 3+5 from dual

select round(45.293,0)
from dual

select trunc(45.293,1)
from dual

select round(45.293,-1)
from dual

select mod(10,3) 
from dual

select empno,ename,sal,mod(sal,100)
from emp

select * from emp

select empno,ename,job,hiredate, mod(empno,2)
from emp
where mod(empno,2)=0

select upper('welcome to java')
from dual

select empno,lower(ename)
from emp

select empno,initcap(ename) 
from emp

select 'welcome to java',length('welcome to java')
from dual

select empno,ename,length(ename)
from emp

select instr('welcome to java','o',3,2) 
from dual

select empno,instr(ename,'A')
from emp

select substr('welcome to java',4,4)
from dual

select empno,ename,substr(hiredate,1,4) 
from emp

select lpad('java',20,'#')
from dual

select Rpad('java',20,'#')
from dual

select trim('      java         ')
from dual

select trim('#####ja#va########','#')
from dual

select empno,instr(ename,'A') 
from emp

select * 
from emp
Where lower(ename)='smith'

select *
from emp
where UPPER(ename)='SMITH'

select *
from emp
where ename like '__R%'

select *
from emp
where substr(ename,3,1)='R'

select * from emp
where instr(ename,'R',3,1)=3

select * from emp 
where instr(ename,'N',length(ename),1)=length(ename)

select * from emp
where substr(ename,length(ename),1)='N'

select * from emp
where substr(ename,-1,1)='N'
--
select * from emp
where substr(hiredate,1,4)=1981

select * from emp
where hiredate like '%81%'

select empno,lower(ename),hiredate from emp
where length(ename)=5
 
--날짜관련함 수 

--sysdate-hiredate
select empno,ename,hiredate,trunc(sysdate-hiredate,0)as genmu
from emp

--months_between
select empno,ename,hiredate,trunc(months_between(sysdate,hiredate),0) as genmu
from emp

--add_months
select sysdate,add_months(sysdate,3)
from dual

--last_day
select sysdate,last_day(sysdate)
from dual

select empno,ename,hiredate,last_day(hiredate)
from emp

--next_day
select sysdate,next_day(sysdate, 4)
from dual

--to_date
select trunc(sysdate-to_date('2022-05-25','yyyy-mm-dd'),0)
from dual

--to_char
select sysdate,to_char(sysdate,'mm/dd/yy') 
from dual

----nvl----
select empno,ename,sal,sal*12,comm,sal*12+nvl(comm,0)
from emp

select empno,ename,nvl(to_char(mgr),'CEO')
from emp

desc emp

--decode--
select empno,ename,deptno, decode(deptno,10,'ACCOUNTING',
20,'RESEARCH',
30,'SALES',
40,'OPERATION') as dname
from emp

select * from dept

--case end--
select empno,ename,deptno, 
case
    when deptno=10 then 'ACCOUNTING'
    when deptno=20 then 'RESEARCH'
    when deptno=30 then 'SALES'
    when deptno=40 then 'OPERATION'
end as dname 
from emp

--practice--

select * from emp

select job,sal, decode(JOB,'SALESMAN',sal*1.05,
'MANAGER',sal*1.15) as sum
from emp

select job,ename,sal,
case
    when job='SALESMAN' then SAL*1.05
    when job='MANAGER' then SAL*1.05
    else sal
end as newsal
from emp

select * from emp

se