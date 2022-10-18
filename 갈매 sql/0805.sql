create table JSP_member(
    idx number(4) primary key,
    id varchar2(8) not null,
    pwd varchar2(8) not null,
    name varchar2(10) not null,
    email varchar2(20) not null,
    tel varchar2(20) ,
    addr varchar2(40) not null,
    joindate date default sysdate
)

drop table jsp_member

select * from jsp_member

create sequence jsp_member_idx

drop sequence jsp_member_idx

delete from jsp_member where idx=3

drop sequence jsp_member_idx

insert into jsp_member values(jsp_member_idx.nextval,'hong','1234','È«±æµ¿','hong@naver.comm','02-1234-5678','¼­¿ï',sysdate);

select * from jsp_member where id='sss'

create table jsp_member(
    idx number(4) primary key,
    id varchar2(50),
    pwd varchar2(50),
    name varchar2(50),
    email varchar2(200),
    tel varchar2(50),
    addr varchar2(200),
    joindate date
)

create sequence jsp_member_idx

commit 

)

select id,name,email,joindate from jsp_member