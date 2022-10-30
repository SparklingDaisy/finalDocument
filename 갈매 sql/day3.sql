
--일반이랑 그룹 같이 못써~~ 
select empno,ename,sum(sal)
from emp

select sum(sal)
from emp

select avg(sal)
from emp

select max(sal)
from emp

select min(sal)
from emp

select max(ename)
from emp 

select min(ename)
from emp

select min(ename),max(ename),min(hiredate),max(hiredate)
from emp

--로우의 갯수를 세는 것과 같음 
select count(*)
from emp

--그룹함수 null은 에러나지않고 그냥 없는것으로 처리해줌-- 
select count(comm)
from emp 
where deptno=10

--직무의 종류가 몇 종류인지 출력해봐~
select count(distinct job)
from emp

--20번 부서의 급여 평균 출력해바~~ 
select avg(sal)
from emp
where deptno=20

--30번 부서에 근무하는 사원 수-- 
select count(empno) 
from emp
where deptno=30

--20번 부서의 최고 급여액과 최저 급여액을 출력하세요
select max(sal),min(sal)
from emp
where deptno=20

--컬럼명
--total 1980 1981 1982
--12      1    10   1
--이렇게 출력될 수 있도록 만들어바
 
select * from emp
 
select count(*) as "total",
    count(decode(substr(hiredate,1,4),1980,1)) as "1980",
    sum(decode(substr(hiredate,1,4),1981,1,0)) as "1981",
    sum(decode((to_char(hiredate,'yyyy')),1982,1,0)) as "1982"
from emp

select count(decode(substr(mgr,4,1),8,'y')) as "last 8"
from emp

select sum(sal)
from emp
where deptno=10

-----group by----- 
select deptno, sum(sal)
from emp
group by deptno 

select deptno, avg(sal)
from emp
group by deptno

select avg(sal),deptno
from emp
where sal>=1000 --1차 가공 
group by deptno --2차 가공

--부서별 최고금액, 최저금액 출력--

select deptno, max(sal),min(sal)
from emp
group by deptno

--부서별 사원수와 커미션을 받는 사원수를 출력--

select deptno,count(*),sum(case when nvl(comm,0)>0 then 1 else 0 end)
from emp
group by deptno

--having--
select avg(sal)
from emp
group by deptno
having avg(sal)>=2000
 
--1000이상의 급여를 가지고 있는 사람들에 대해서만 부서별로 평균을 구한 후
--부서별 평균 급여가 2000 이상인 부서 번호와 부서별 평균 급여를 출력

select deptno,avg(sal)
from emp
where sal>1000
group by deptno 
having avg(sal)>=2000
order by deptno asc