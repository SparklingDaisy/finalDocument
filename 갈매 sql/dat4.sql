select * from emp

select * from dept

select ename, deptno from emp
where ename = 'FORD'

select deptno, dname from dept
where deptno=20

select * 
from emp, dept
where emp.deptno = dept.deptno and ename = 'FORD'

select ename, dname
from emp, dept
where emp.deptno = dept.deptno --join
and ename = 'SMITH'

select emp.empno, emp.ename, dept.deptno, dept.dname --dept.deptno : 컬럼명의 모순(모호성) 해소  
from emp, dept
where emp.deptno = dept.deptno  

select e.empno, e.ename, d.deptno, d.dname --dept.deptno : 컬럼명의 모순(모호성) 해소   
from emp e, dept d
where e.deptno = d.deptno


select empno, ename, sal
from emp

select * from tab

desc salgrade

select * from salgrade

select empno, ename, sal, grade
from emp, salgrade
where emp.sal >= salgrade.losal and emp.sal <= salgrade.hisal

--self join
select e1.empno, e1.ename, e1.mgr, e2.ename
from emp e1, emp e2
where e1.mgr = e2.empno

--outer join : (+)
select e1.empno, e1.ename, e1.mgr, e2.ename
from emp e1, emp e2
where e1.mgr = e2.empno(+)

select emp.ename, emp.deptno, dept.dname
from emp, dept
where emp.deptno = dept.deptno

select * from dept

select emp.ename, emp.job, dept.deptno, dept.loc
from emp, dept
where emp.deptno = dept.deptno and dept.deptno = 30

select * from emp

select ename, comm, dname, loc
from emp, dept
where emp.deptno = dept.deptno and comm>0
--and comm is not null and comm<>0

select ename, job, dept.deptno, dname
from emp, dept
where emp.deptno = dept.deptno and loc = 'DALLAS'

select ename, dname
from emp, dept
where emp.deptno = dept.deptno and emp.ename like '%A%'

select ename, job, dname, grade
from emp, dept, salgrade
where emp.deptno = dept.deptno and emp.sal between losal and hisal

select * from emp

select e1.ename, e1.deptno, e2.ename, e2.deptno
from emp e1, emp e2
where e1.deptno = e2.deptno 
and e1.ename <> e2.ename 
order by e1.ename

--sub query
select deptno
from emp
where ename ='FORD' --20

select dname
from dept
where deptno = (select deptno           
                from emp
                where ename ='FORD')
            
-- 테이블을 서브쿼리로 쓸 수 있음                 
select *
from (select ename, sal, dept.deptno, dname
from emp, dept 
where emp.deptno = dept.deptno) a 
where ename = 'SMITH'

--단일 행 서브쿼리
select avg(Sal)
from emp

select ename, sal
from emp
where sal >=(select avg(Sal)
             from emp)
             
--다중 행 서브쿼리 
select deptno 
from emp
where ename = 'KING' or ename = 'FORD' 

select ename, deptno
from emp
where deptno = (select deptno 
                from emp
                where ename = 'KING' or ename = 'FORD') 

select ename, deptno
from emp
where deptno in (select deptno 
                from emp
                where ename = 'KING' or ename = 'FORD') 
                
select ename, sal, deptno
from emp
order by deptno asc

--all
select ename, sal, deptno
from emp
where sal >= all(950,1500,1250,1600,2850)
--where sal >= 950 and sal >= 1500 and sal >=1250 and sal >= 1600 and sal >= 2850

select sal from emp
where deptno=30

select ename, sal, deptno
from emp
where sal >= all(select sal from emp
            where deptno=30)

select ename, sal, deptno
from emp
where sal >= (select max(sal) from emp where deptno=30)

--any 
select ename, sal, deptno
from emp
where sal >= any(950,1500,1250,1600,2850) 
--where sal >= 950 or sal >= 1500 or sal >=1250 or sal >= 1600 or sal >= 2850

select min(sal)
from emp
where deptno=30

select ename, sal, deptno
from emp
where sal >= (select min(sal)
              from emp
              where deptno=30)
              
select ename, sal
from emp
where sal >= (select sal
              from emp
              where ename = 'SMITH')
              
--직급이 CLERK인 사원의 부서의 부서번호와 부서명과 지역을 출력  
select * from emp

select emp.deptno, dname, loc
from emp, dept
where emp.deptno = dept.deptno and job like 'CLERK'

select deptno
from emp
where job = 'CLERK'

select deptno, dname, loc
from dept
where deptno in(select deptno
                from emp
                where job = 'CLERK') 
                
                
--이름에 T를 포함하고 있는 사원들과 같은 부서에서 근무하고 있는 
--사원의 사원번호와 이름을 출력하세요  
select deptno
from emp
where ename like '%T%'

select empno, ename, deptno 
from emp
where deptno in(select distinct deptno --중복제거!!  
                from emp
                where ename like '%T%')

--부서위치가 DALLAS인 모든 사원의 이름, 부서번호를 출력하세요 
select ename, deptno
from emp
where deptno = (select deptno
                from dept
                where loc = 'DALLAS')
                
--SALES부서의 모든 사원의 이름과 급여를 출력 
select deptno
from dept
where dname = 'SALES' 

select * from dept

select ename, sal
from emp
where deptno = (select deptno
                from dept
                where dname = 'SALES')

--KING이 담당하고 있는 모든 사원의 이름과 급여를 출력
select * from emp
select e1.empno, e1.ename, e1.mgr, e2.ename
from emp e1, emp e2
where e1.mgr = e2.empno(+) --공란이라도 채울거야  

select empno
from emp
where mgr = 7839

select ename, sal
from emp
where empno = (select empno
from emp
where mgr = 7839)

--풀이  
select empno
from emp
where ename = 'KING'

select ename, sal
from emp
where mgr = (select empno
from emp
where ename = 'KING')


--자신의 급여가 평균 급여보다 많고 이름에 s가 들어가는 사원과
--동일한 부서에서 근무하는 모든 사원의 사원번호, 이름 및 급여 출력
select empno, ename, sal
from emp
where deptno in(select deptno
               from emp
               where sal >= (select avg(sal)
                             from emp
                             where ename like '%S%'))
                             
--풀이
select deptno
from emp
where sal >= (select avg(sal) from emp) and ename like '%S%'

select empno, ename, sal
from emp
where deptno = (select deptno 
                from emp
                where sal >= (select avg(sal) from emp) 
                              and ename like '%S%')


