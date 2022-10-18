create table joa_product(
    pro_idx number(4) primary key,
    pro_name varchar2(100),
    pro_price number(5),
    pro_category varchar2(10),
    pro_filename varchar2(100),
    pro_info varchar2(200),
    pro_date date      
)

create sequence joa_product_pro_idx
drop sequence joa_product_pro_idx

drop table joa_product

create table joa_cart(
    car_idx number(4),
    car_id varchar2(20),
    car_pro_idx number(4)
)

create sequencea_joa_cart_idx
drop sequencea_joa_cart_idx

select * from joa_product


select * from (select * from (select * from joa_product order by pro_idx desc) where pro_category='combo') WHERE ROWNUM <= 3;


where pro_category='combo'


select * from joa_product order by pro_idx desc where pro_category='combo'

create table joa_store_cart(
    car_idx number(4) primary key,
    car_mem_id varchar2(30),
    car_pro_idx number(4),
    car_count number(2),
    car_joindate date
    )
    
create sequence joa_store_cart_idx
drop sequence joa_store_cart_idx

create table joa_member(
    mem_idx number(4) primary key,
    mem_id varchar2(50),
    mem_name varchar2(50),
    mem_pwd varchar2(50),
    mem_age varchar2(50),
    mem_tel varchar2(50),
    mem_email varchar2(50),
    mem_grade number(10),
    mem_point number(10),
    mem_gender varchar2(4),
    mem_joindate date
)

create sequence joa_member_idx

select * from joa_store_cart
select * from joa_member
select * from joa_product

insert into joa_member(mem_idx,mem_id) values(joa_member_idx.nextval,'jtl3403')

select 
	pro_name,pro_price,car_count
from 
	joa_member m, joa_store_cart c, joa_product p
where 
	m.mem_id = c.car_mem_id and m.mem_id='jtl3403' and c.car_pro_idx = p.pro_idx
	
select p.pro_name, p.pro_price, c.car_count
   from joa_member m,joa_store_cart c, joa_product p
where c.car_mem_id = m.mem_id and m.mem_id='jtl3403' and c.car_pro_idx = p.pro_idx

select pro_name,pro_price,car_count
from joa_member m, joa_store_cart c, joa_product p
where   m.mem_id      = c.car_mem_id 
    and m.mem_id      ='jtl3403' 
    and c.car_pro_idx = p.pro_idx 

p.pro_name, p.pro_price, c.car_count
delete
from joa_store_cart
where car_idx=
(
select car_idx
   from joa_store_cart, joa_product
where car_mem_id='jtl3403'
   and car_pro_idx = pro_idx 
   and car_pro_idx = 9
   );
   
select * from joa_store_cart


create table joa_payProduct(
    payPro_idx           number(5) primary key,
    payPro_mem_id        varchar2(50), -- 구매자 아이디 
    payPro_mem_email     varchar2(50), -- 구매자 이메일 
    payPro_mem_tel       varchar2(50), -- 구매자 전화번호 
    payPro_pg            varchar2(50), -- 결제사명
    payPro_method        varchar2(50), -- 결제방법
    payPro_pro_name      varchar2(50), -- 상품이름 
    payPro_price_sum     number(10),   -- 총 상품금액 
    payPro_discount      number(10),   -- 총 할인금액 
    payPro_total_price   number(10),   -- 총 결제금액 
    payPro_merchant_uid  varchar2(10),  -- 가맹점 주문번호    
    payPro_date          date      
)

create sequence joa_payPro
drop table joa_payProduct  

select * from joa_payProduct


create table joa_payMovie(
    payMov_idx           number(5) primary key,
    payMov_mem_id        varchar2(50), -- 구매자 아이디 
    payMov_mem_email     varchar2(50), -- 구매자 이메일 
    payMov_mem_tel       varchar2(50), -- 구매자 전화번호 
    payMov_pg            varchar2(50), -- 결제사명
    payMov_method        varchar2(50), -- 결제방법
    payMov_mov_title     varchar2(100), -- 상품이름 
    payMov_price_sum     number(10),   -- 총 상품금액 
    payMov_discount      number(10),   -- 총 할인금액 
    payMov_total_price   number(10),   -- 총 결제금액 
    payMov_merchant_uid  varchar2(10),  -- 가맹점 주문번호    
    payMov_date          date   
)
