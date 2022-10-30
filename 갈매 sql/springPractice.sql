select * from spring_emp

create table spring_emp(
    idx number(4) primary key,
    name varchar2(20) not null,
    email varchar2(50) not null,
    dept varchar2(20)
)

create sequence spring_emp_idx