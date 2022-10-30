select * from tab

create table employee(
    idx number(4) primary key,
    name varchar2(50),
    email varchar2(100),
    dept varchar2(50)  
)

create sequence employee_idx

select * from employee

delete from employee where idx=8 

insert into employee
values (employee_idx.nextval,'È«±æµ¿','hong@naver.com','±³À°°ú') 