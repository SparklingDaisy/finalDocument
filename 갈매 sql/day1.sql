DESC EMP

select * from emp

select empno,ename,hiredate
from emp

select empno,ename,hiredate,sal as �޿�,sal*12  ����,sal*12+comm "��  ��" 
from emp

select * from emp 

select ename||'�� ������'||job||'�Դϴ�' 
from emp

select * from emp

select distinct deptno from emp
--����� ���� ������ ���� ���

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

--�޿��� 2000~3000������ �޿��� �޴� ����� ��� 
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
