create table shoe_member(
    midx number(4) primary key,
    mid varchar2(30) not null,
    mpwd varchar2(40) not null,
    mname varchar2(50) not null,
    mbirthdate varchar2(10) not null,
    mgender varchar2(10) not null,
    mtel varchar2(20) not null,
    memail varchar2(100) not null,
    mad varchar2(3),
    maddr varchar2(500) not null,
    mtier varchar2(20) default 'bronze',
    msum number(10),
    mnu number(10),
    mjoindate date
)

update shoe_member set msum=msum+1 where mid='administer'

create sequence shoe_member_idx 

select * from shoe_member

drop table shoe_member
drop sequence shoe_member_idx

select desc

create table shoe_bbs(
    bidx number(4),
    bid varchar2(30),
    bsubject varchar2(500),
    bcontent varchar2(3000),
    bwritedate date,
    bimg varchar2(1000),
    breadnum number(4),
    bref number(4),
    blev number(4),
    bsunbun number(4)
)

create sequence shoe_bbs_idx

select b.* from shoe_bbs b, shoe_member m where m.mid=b.bid and m.mid=234

create table shoe_bbs(
    bidx number(4),
    bid varchar2(30),
    bsubject varchar2(500),
    bcontent varchar2(3000),
    bwritedate date,
    bimg varchar2(1000),
    breadnum number(4),
    bref number(4),
    blev number(4),
    bsunbun number(4),
    bb varchar2(30)
)

create sequence shoe_bbs_idx

select * from shoe_bbs

drop table shoe_bbs
drop sequence shoe_bbs_idx

create table shoe_item(
    iidx number(4) primary key,
    iid varchar2(30),
    iname varchar2(500),
    iprice number(10),
    iimg varchar2(1000),
    isize varchar2(100) default '220,230,240,250,260,270,280',
    icnt number(3),
    iview varchar2(3000),
    iwritedate date,
    icategory varchar2(50)
)

create sequence shoe_item_iidx

drop table shoe_item
drop sequence shoe_item_iidx

select * from shoe_item



create table shoe_payinfo(
    pidx number(4) primary key,
    pid varchar2(30),
    pgrade varchar2(50),
    pcharge number(10),
    ppayment varchar2(30),
    pname varchar2(30),
    pnum varchar2(30),
    pinfo varchar2(30),
    ppwd varchar2(30),
    pdate date
)

create sequence shoe_payinfo_idx

select * from shoe_payInfo
drop table shoe_payinfo

create table shoe_cart(
    cidx number(4) primary key,
    ciidx number(4),
    cid varchar2(30),
    cname varchar2(500),
    cprice number(10),
    cimg varchar2(1000),
    csize varchar2(100),
    ccnt number(3),
    csum number(10),
    cputdate date
)

create sequence shoe_cart_cidx

select * from shoe_cart where cid='narae' order by cidx


select * from (select rownum as rnum,a.* from (select * from shoe_member order by midx asc)a)b where rnum>=1 and rnum<=10;


select * from shoe_member where mid='adminster'

select * from (select rownum as rnum, a.* from (select * from shoe_member where midx like '%3%' order by mjoindate desc) a) b where rnum >=1 and rnum <=2;

select * from (select rownum as rnum,a.* from(select * from jsp_bbs order by ref desc, sunbun asc)a)b where rnum>=? and rnum<=?;


create table shoe_resultinfo(
ridx number(4) primary key,
rid varchar2(30),
rname varchar2(500),
rprice number(10),
rimg varchar2(1000),
rdate varchar2(30)
)
create sequence shoe_resultinfo_idx 


select * from shoe_item

select * from shoe_member where mid='administer'

select * from shoe_payinfo where pid='narae'

select * from shoe_cart where cid='narae'

select * from shoe_resultinfo where rid='narae'

select * from shoe_bbs

select count(*) from shoe_cart where cid='administer'

select count(*) from shoe_resultinfo where rid='snow'



drop table shoe_member
drop table shoe_item
drop table shoe_payinfo
drop table shoe_cart
drop table shoe_resultinfo
drop table shoe_bbs

create sequence shoe_member_idx 
create sequence shoe_item_idx 
create sequence shoe_payinfo_idx 
create sequence shoe_cart_idx 
create sequence shoe_resultinfo_idx 
create sequence shoe_bbs_idx 

drop sequence shoe_member_idx 
create sequence shoe_item_idx 
create sequence shoe_payinfo_idx 
create sequence shoe_cart_idx 
create sequence shoe_resultinfo_idx 
create sequence shoe_bbs_idx 