
--�Ϲ��̶� �׷� ���� ����~~ 
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

--�ο��� ������ ���� �Ͱ� ���� 
select count(*)
from emp

--�׷��Լ� null�� ���������ʰ� �׳� ���°����� ó������-- 
select count(comm)
from emp 
where deptno=10

--������ ������ �� �������� ����غ�~
select count(distinct job)
from emp

--20�� �μ��� �޿� ��� ����ع�~~ 
select avg(sal)
from emp
where deptno=20

--30�� �μ��� �ٹ��ϴ� ��� ��-- 
select count(empno) 
from emp
where deptno=30

--20�� �μ��� �ְ� �޿��װ� ���� �޿����� ����ϼ���
select max(sal),min(sal)
from emp
where deptno=20

--�÷���
--total 1980 1981 1982
--12      1    10   1
--�̷��� ��µ� �� �ֵ��� ������
 
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
where sal>=1000 --1�� ���� 
group by deptno --2�� ����

--�μ��� �ְ�ݾ�, �����ݾ� ���--

select deptno, max(sal),min(sal)
from emp
group by deptno

--�μ��� ������� Ŀ�̼��� �޴� ������� ���--

select deptno,count(*),sum(case when nvl(comm,0)>0 then 1 else 0 end)
from emp
group by deptno

--having--
select avg(sal)
from emp
group by deptno
having avg(sal)>=2000
 
--1000�̻��� �޿��� ������ �ִ� ����鿡 ���ؼ��� �μ����� ����� ���� ��
--�μ��� ��� �޿��� 2000 �̻��� �μ� ��ȣ�� �μ��� ��� �޿��� ���

select deptno,avg(sal)
from emp
where sal>1000
group by deptno 
having avg(sal)>=2000
order by deptno asc