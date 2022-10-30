DESC EMP

select * from emp

select empno,ename,hiredate
from emp

select empno,ename,hiredate,sal as 급여,sal*12  연봉,sal*12+comm "연  봉" 
from emp

select * from emp 

select ename||'의 직업은'||job||'입니다' 
from emp

select * from emp

select distinct deptno from emp
--사원의 직무 종류에 대해 출력

select distinct job from emp  

select empno,ename,sal,deptno
from emp
where ename='FORD'

select empno,ename,hiredate
from emp
where hiredate>='1981-05-01'

select empno,ename,hiredate,sal
from emp
where ename like '%N'

select * from emp
where ename like '____H%'

select * from emp
where deptno=10 and job='CLERK'

--급여가 2000~3000사이인 급여를 받는 사원을 출력 
select * from emp
--where sal>=2000 and sal<=3000
where sal between 2000 and 3000

select * from emp
where job='MANAGER'
OR hiredate>='1982-01-01' 
--where hiredate >='1982-01-01'
select * from emp
where comm in (300, 500, 1400)

select * from emp
where  deptno<>10

select * from emp
where comm is not null

select empno,ename,sal,deptno
from emp
order by deptno asc, sal asc, ename asc
