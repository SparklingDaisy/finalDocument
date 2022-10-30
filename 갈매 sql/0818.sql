create table jsp_bbs(
    idx number(4) primary key,
    writer varchar2(30),
    pwd varchar2(30),
    subject varchar2(200),
    content varchar2(3000),
    writedate date,
    readnum number(4),
    ref number(4),
    lev number(4),
    sunbun number(4)
)

create sequence jsp_bbs_idx

drop table jsp_bbs
drop sequence jsp_bbs_idx

select * from jsp_bbs

insert into jsp_bbs 
values(jsp_bbs_idx.nextval,'홍길동','1234','첫글입니다','내용무',sysdate,0,0,0,0)

select * from jsp_bbs where rownum <=5;

select count(*) from jsp_bbs



--페이징 커리-- 

select * from
(select rownum as rnum,a.* from
(select * from jsp_bbs order by idx desc)a)b
where rnum>=(1-1)*5+1 and rnum<=1*5