create table student(
    name varchar2(20) not null,
    age number(3),
    addr varchar2(200),
    tel varchar2(50) not null 
)

insert into student(name,age,addr,tel)
values('ȫ�浿',20,'����','[02-1212-2323')  

insert into student 
values('�Ѹ�',30,'��õ','032-2222-2222')     

select * from student

commit

rollback 