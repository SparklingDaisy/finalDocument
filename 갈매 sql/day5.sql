select * from tab

create table student(
    name varchar2(20) not null,
    age number(3),
    addr varchar2(200),
    tel varchar2(50) not null 
)

desc student

create table emp02 
as 
(select * from emp)   
--실행 
select * from emp02 

desc emp
desc emp02

create table emp03
as
(select empno, ename, job, sal
from emp)

desc emp03

select * from emp03   

select * from emp where 1=0 

create table emp04
as
(select * from emp where 1=0)

desc emp04

select * from emp04 

create table emp05
as
(select empno, ename, sal, hiredate from emp where 1=0) 

select * from emp05

alter table emp05 
add(email number(4))

desc emp05

alter table emp05
modify(email varchar2(50)) 

alter table emp05
drop column email 

drop table emp05

select * from tab

purge recyclebin 

--insert
select * from student     

insert into student(name,age,addr,tel)
values('홍길동',20,'서울','[02-1212-2323')  

insert into student
values('둘리',30,'부천','032-2222-2222')     

insert into student
values('하니',40,null,'031-1212-1212')  

insert into student(name,tel)
values('또치','02-3333-3333')          

select * from emp04

insert into emp04 
(select * from emp) --재료 : 서브쿼리로 묶음     

select * from student   

--update 
update student 
set tel = '02-1212-2323'
where name = '홍길동'

select * from emp02

update emp02
set sal = sal+(sal*0.05)

update student
set age=25, addr='서울'
where name ='또치'

--delete
delete
from student
where name='하니' 

--dallas에 근무하는 사원들만 삭제  
delete
from emp02
where deptno = (select deptno
                from dept 
                where loc = 'DALLAS') 
                
select * from emp02       