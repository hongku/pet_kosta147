-- user 持失
--create user pet identified by oracle;

--alter user pet account unlock;

--grant create table, resource, connect to pet;

-- Medicament : 鉦念 舛左
drop table medicament;
create table medicament(
	medicament_code number constraint medicament_pk primary key, -- 鉦念 坪球
	medicament_name varchar2(500) not null, -- 鉦念 戚硯
    medicament_amount number, -- 鉦念 鯵呪
    medicament_cost number, -- 鉦念 亜維
    medicament_mandate date, -- 鉦念 薦繕析切
	medicament_exdate date, -- 鉦念 政搭奄廃
    medicament_category varchar2(500) not null, -- 鉦念 曽嫌
    medicament_cycle number default 0, -- 鉦念 爽奄
	store_code varchar2(500) not null -- 走繊 坪球
);
drop sequence medicament_num;
create sequence medicament_num;
insert into medicament values(medicament_num.nextval, '宿梯鉦', 100, 5000, '2017-05-04', '17-07-25', '爽紫', 5 ,'pankyo');
insert into medicament values(medicament_num.nextval, '瑛食崇号走鉦', 100, 5000, '2017-05-04', '17-07-25', '硝鉦', default ,'pankyo');
insert into medicament values(medicament_num.nextval, '脊蛙歯格巷疏焼鉦', 50, 20000, '2017-05-05', '18-08-25', '爽紫', 4 ,'pankyo');
insert into medicament values(medicament_num.nextval, '焼覗劃蟹亀焼覗陥鉦', 76, 50000, '2017-05-05', '18-08-25', '尻壱',7 ,'pankyo');
insert into medicament values(medicament_num.nextval, '悪鉦掻鉦悪掻鉦', 44, 35000, '2017-02-03', '18-08-25', '奄展', 5 ,'pankyo');
insert into medicament values(medicament_num.nextval, '戚惟源戚鞠嚇', 500, 35000, '2017-06-08', '18-08-15', '硝鉦', 3 ,'pankyo');
insert into medicament values(medicament_num.nextval, '格嬢巨嚇', 230, 26000, '2017-05-05', '18-08-22', '奄展', 6 ,'pankyo');
insert into medicament values(medicament_num.nextval, '杷採左級左級鉦', 500, 26000, '2017-05-05', '18-08-22', '尻壱', 6 ,'pankyo');
insert into medicament values(medicament_num.nextval, '瑛凹拐鉦', 500, 26000, '2017-06-06', '18-08-23', '硝鉦', 6 ,'pankyo');
insert into medicament values(medicament_num.nextval, '勧焼覗嚇', 500, 26000, '2017-04-06', '18-08-23', '奄展', 6 ,'pankyo');


insert into medicament values(medicament_num.nextval, '宿梯鉦', 5000, 5000, '2017-05-04', '17-07-25', '爽紫', 5 ,'center');
insert into medicament values(medicament_num.nextval, '瑛食崇号走鉦', 5000, 5000, '2017-05-04', '17-07-25', '硝鉦', default ,'center');
insert into medicament values(medicament_num.nextval, '脊蛙歯格巷疏焼鉦', 3000, 20000, '2017-05-05', '17-08-25', '爽紫', 4 ,'center');
insert into medicament values(medicament_num.nextval, '焼覗劃蟹亀焼覗陥鉦', 5500, 50000, '2016-03-15', '18-09-12', '尻壱', 7 ,'center');
insert into medicament values(medicament_num.nextval, '悪鉦掻鉦悪掻鉦', 7000, 35000, '2017-02-03', '17-08-25', '奄展', 5 ,'center');
insert into medicament values(medicament_num.nextval, '戚惟源戚鞠嚇', 500, 35000, '2017-06-08', '17-08-25', '硝鉦', 3 ,'center');
insert into medicament values(medicament_num.nextval, '格嬢巨嚇', 250, 26000, '2017-05-05', '18-08-22', '奄展', 6 ,'center');
insert into medicament values(medicament_num.nextval, '杷採左級左級鉦', 500, 26000, '2017-05-05', '18-08-22', '尻壱', 6 ,'center');
insert into medicament values(medicament_num.nextval, '瑛凹拐鉦', 500, 26000, '2017-06-06', '18-08-23', '硝鉦', 6 ,'center');
insert into medicament values(medicament_num.nextval, '勧焼覗嚇', 500, 26000, '2017-04-06', '18-08-23', '奄展', 6 ,'center');

insert into medicament values(medicament_num.nextval, '宿梯鉦', 5000, 5000, '2017-05-04', '17-07-25', '爽紫', 5 ,'yatop');
insert into medicament values(medicament_num.nextval, '瑛食崇号走鉦', 5000, 5000, '2017-05-04', '17-07-25', '硝鉦', default ,'yatop');
insert into medicament values(medicament_num.nextval, '脊蛙歯格巷疏焼鉦', 3000, 20000, '2017-05-05', '17-08-25', '爽紫', 4 ,'yatop');
insert into medicament values(medicament_num.nextval, '焼覗劃蟹亀焼覗陥鉦', 5500, 50000, '2016-03-15', '18-09-12', '尻壱', 7 ,'yatop');
insert into medicament values(medicament_num.nextval, '悪鉦掻鉦悪掻鉦', 7000, 35000, '2017-02-03', '17-08-25', '奄展', 5 ,'yatop');
insert into medicament values(medicament_num.nextval, '戚惟源戚鞠嚇', 500, 35000, '2017-06-08', '17-08-25', '硝鉦', 3 ,'yatop');
insert into medicament values(medicament_num.nextval, '格嬢巨嚇', 250, 26000, '2017-05-05', '18-08-22', '奄展', 6 ,'yatop');
insert into medicament values(medicament_num.nextval, '杷採左級左級鉦', 500, 26000, '2017-05-05', '18-08-22', '尻壱', 6 ,'yatop');
insert into medicament values(medicament_num.nextval, '瑛凹拐鉦', 500, 26000, '2017-06-06', '18-08-23', '硝鉦', 6 ,'yatop');
insert into medicament values(medicament_num.nextval, '勧焼覗嚇', 500, 26000, '2017-04-06', '18-08-23', '奄展', 6 ,'yatop');
select * from medicament;
commit;

--Store : 走繊
drop table  store;
create table store(
    store_code varchar2(500) constraint store_pk primary key,  --走繊 坪球 貢 焼戚巨
    store_name varchar2(500) not null,  --走繊 戚硯
    store_cost varchar2(500) not null,  --走繊紺 淫軒搾
    store_payment varchar2(500) default 0,  --走繊紺 厭食
    store_income varchar2(500) default 0, --走繊紺 呪脊
    store_rentCost varchar2(500) not null,  --績企搾
    store_doctor varchar2(500) default 0, --走繊 舛鋭送
    store_worker varchar2(500) default 0, --走繊 搾舛鋭送
    store_date date not null, -- 走繊 亜脊 獣娃
    store_role varchar2(500) not null
);
--insert into store values('pankyo', '紫櫛疑弘佐据 毒嘘繊', '150幻', '800幻', '1350幻', '200幻', '5誤', '4誤', '17-05-07');
--insert into store values('seohyun', '紫櫛疑弘佐据 辞薄繊', '250幻', '900幻', '1750幻', '300幻', '8誤', '6誤', '17-05-01');
--insert into store values('center', '紫櫛疑弘佐据 沙紫', '250幻', '900幻', '1750幻', '300幻', '8誤', '6誤', '17-05-01');
select * from store;
commit;

--左壱辞 砺戚鷺
drop table report;
create table report(
    report_code number constraint report_pk primary key, -- report pk
    report_reader varchar2(500) not null,-- 衣仙馬澗 紫寓
    report_writer varchar2(500) not null,-- 拙失切
    report_position varchar2(500) not null,-- 送是(舛鋭送 暁澗 搾舛鋭送)
    report_date date not null,-- 拙失析
    report_contents varchar2(500) not null,-- 左壱鎧遂
    report_check varchar2(500) default 'fail' not null  -- 衣仙 食採
);
drop sequence report_num;
create sequence report_num;
select * from report;
commit;

-- pet : 疑弘 DB
drop table pet;
create table pet (
    pet_code number constraint pet_pk primary key, -- 鎧採 腰硲(pk)
    pet_name varchar2(500) not null, -- 疑弘 戚硯
    pet_type varchar2(500) not null, -- 疑弘 曽嫌
    pet_sex varchar2(500) not null, -- 曽弘 失紺
    pet_age number not null, -- 疑弘 蟹戚
    pet_phone varchar2(500) not null, -- 爽昔 穿鉢腰硲
    pet_postCode number not null, -- 酔畷腰硲
    pet_addr varchar2(3000) not null, -- 増爽社
    pet_addrDetail varchar2(3000) not null, -- 雌室 爽社
    pet_email varchar2(1000) not null, -- 戚五析
    store_code varchar2(500) -- 走繊坪球
);
drop sequence pet_num;
create sequence pet_num;
select * from pet;
commit;

-- order : 降爽 鎧蝕
drop table order_pet;
create table order_pet (
    order_code number constraint order_pet_pk primary key,
    order_name varchar2(500), -- 鉦念 鎧遂
    order_amount number not null, -- 推短廃 弘念 鯵呪
    order_check varchar2(500) not null, -- 渋昔 貢 暗採
    order_delivery varchar2(500) not null, -- 呪敬 刃戟 貢 耕刃戟 
    order_to varchar2(500) not null, -- 鯉旋走 (企雌)
    order_from varchar2(500) not null, -- 窒降走 (推短馬澗 員)
    store_code varchar2(500) not null 
);
drop sequence order_num;
create sequence order_num;
select * from order_pet;
commit;

-- emp : 送据
drop table emp;
create table emp(
    emp_code varchar2(500) constraint emp_pk primary key, --送据ID
    emp_pwd varchar2(500) not null, -- 搾腔腰硲
    emp_name varchar2(500) not null, --戚硯
    emp_age number not null, --蟹戚
    emp_tel varchar2(500) not null, -- 穿鉢腰硲
    emp_hiredate date not null, --析 獣拙廃 劾促
    emp_pay number not null, --厭食
    emp_enabled number default 1 not null, -- 醗失鉢(1) 貢 搾醗失鉢(0) 
    emp_role varchar2(500) not null, -- 映廃
    store_code varchar2(500) not null --走繊
);
--insert into emp values('7538518', 'oracle', '沿殿畠', '19', '010-3920-8518', sysdate, '500000', 1,'ROLE_FULL', 'pankyo');
select * from emp;
update emp set emp_enabled = 0 where emp_code='seungfff';
commit;
rollback;


-- message : 楕走敗
drop table message;
create table message(
    message_code number constraint message_pk primary key, -- 五室走 pk
    message_title varchar2(500) not null, -- 五室走 薦鯉
    message_body varchar2(2000) not null, -- 五室走 鎧遂
    message_date date not null, -- 五室走 左浬 獣娃
    message_writer varchar2(500) not null, -- 左浬 紫寓
    message_reader varchar2(500) not null, -- 閤澗紫寓
    message_read varchar2(100) not null, -- 石製(y), 照石製(n)
    message_delete_writer varchar2(100) not null, -- 肢薦(y), 肢薦照敗(n)
    message_delete_reader varchar2(100) not null -- 肢薦(y), 肢薦照敗(n)
);
drop sequence message_num;
create sequence message_num;
select * from message order by message_date desc;
commit;

-- pethistory: 坦号穿
drop table pethistory;
create table pethistory(
  pethistory_key number CONSTRAINT pethistory_pk PRIMARY KEY,
  pethistory_petcode number,
  pethistory_medicine varchar2(500),
  pethistory_m_amount varchar2(500),
  pethistory_coments varchar2(4000),
  pethistory_m_cost number, --鉦念葵
  pethistory_cost number, --遭戟搾
  pethistory_btoday Timestamp,
  pethistory_today Timestamp,
  store_code varchar2(500),
  petaccept_code number,
  emp_name varchar2(500)
);
drop sequence pethistory_seq;
create sequence pethistory_seq;
select * from pethistory;
commit;
-- into pethistory values(pethistory_seq.nextval, 1, '瑛食崇号走鉦', 3, 'ばば', 12000, 1000, '16/06/10 14:58:43.000000000','16/06/10 14:58:43.000000000','pankyo', 1, '沿殿畠');
--insert into pethistory values(pethistory_seq.nextval, 1, '瑛食崇号走鉦', 3, 'ばば', 12000, 1000, '17/06/10 14:58:43.000000000','17/06/10 14:58:43.000000000','pankyo', 1, '沿殿畠');
--insert into pethistory values(pethistory_seq.nextval, 1, '瑛食崇号走鉦', 3, 'ばば', 12000, 1000, '0517//10 14:58:43.000000000','17/05/10 14:58:43.000000000','pankyo', 1, '沿殿畠');
--insert into pethistory values(pethistory_seq.nextval, 1, '瑛食崇号走鉦', 3, 'ばば', 12000, 1000, '17/05/10 14:58:43.000000000','17/05/10 14:58:43.000000000','pankyo', 1, '沿殿畠');
--insert into pethistory values(pethistory_seq.nextval, 1, '瑛食崇号走鉦', 3, 'ばば', 12000, 1000, '17/05/10 14:58:43.000000000','17/04/10 14:58:43.000000000','pankyo', 1, '沿殿畠');
--insert into pethistory values(pethistory_seq.nextval, 1, '瑛食崇号走鉦', 3, 'ばば', 12000, 1000, '17/05/10 14:58:43.000000000','17/04/10 14:58:43.000000000','pankyo', 1, '沿殿畠');
--insert into pethistory values(pethistory_seq.nextval, 1, '瑛食崇号走鉦', 3, 'ばば', 12000, 1000, '17/05/10 14:58:43.000000000','17/03/10 14:58:43.000000000','pankyo', 1, '沿殿畠');
--insert into pethistory values(pethistory_seq.nextval, 1, '瑛食崇号走鉦', 3, 'ばば', 12000, 1000, '17/05/10 14:58:43.000000000','17/03/10 14:58:43.000000000','pankyo', 1, '沿殿畠');
--insert into pethistory values(pethistory_seq.nextval, 1, '瑛食崇号走鉦', 3, 'ばば', 12000, 1000, '17/05/10 14:58:43.000000000','17/03/10 14:58:43.000000000','pankyo', 1, '沿殿畠');
--insert into pethistory values(pethistory_seq.nextval, 1, '瑛食崇号走鉦', 3, 'ばば', 12000, 1000, '17/05/10 14:58:43.000000000','17/03/10 14:58:43.000000000','pankyo', 1, '沿殿畠');
--insert into pethistory values(pethistory_seq.nextval, 1, '瑛食崇号走鉦', 3, 'ばば', 12000, 1000, '17/05/10 14:58:43.000000000','17/02/10 14:58:43.000000000','pankyo', 1, '沿殿畠');
--insert into pethistory values(pethistory_seq.nextval, 1, '瑛食崇号走鉦', 3, 'ばば', 12000, 1000, '17/05/10 14:58:43.000000000','17/02/10 14:58:43.000000000','pankyo', 1, '沿殿畠');
--select to_char(PETHISTORY_TODAY, 'mm'), count(*) from pethistory where to_char(PETHISTORY_TODAY, 'yy') < 18 and to_char(PETHISTORY_TODAY, 'yy') >= 17 and store_code = 'pankyo' group by  to_char(PETHISTORY_TODAY, 'mm');
commit;

-- shot : 森号 羨曽
drop table shot;
create table shot(
    SHOT_NAME varchar2(500),
    SHOT_CYCLE number default 0,
    pet_code number,
    shot_petName varchar2(500),
    shot_date date,  
    shot_must date
);
select * from shot;
commit;

---羨呪DB(段奄)
drop table petaccept;
create table petaccept(
  petaccept_code number CONSTRAINT petaccept_pk PRIMARY KEY, --羨呪坪球
  petaccept_petcode number, --楢坪球
  petaccept_date timestamp, --号庚獣娃
  petaccept_coments varchar2(2000), --羨呪 獣 穿拝 源
  store_code varchar2(500),
  petaccept_view varchar2(500) DEFAULT 'N', -- Y, N 生稽 waitingList 窒径食採 溌昔
  emp_name varchar2(500)
);
drop sequence petaccept_seq;
create sequence petaccept_seq;
select * from petaccept;
commit;

-- notice: 因走紫牌
drop table notice;
create table notice(
    notice_code number constraint notice_num primary key, -- 鎧採 越腰硲
    notice_title varchar2(500) not null, -- 越 薦鯉
    notice_view number not null, -- 繕噺呪
    notice_writer varchar2(500) not null, -- 拙失切
    notice_regDate timestamp not null, -- 拙失 劾促
    notice_contents varchar2(3000) not null, -- 越 鎧遂
    notice_reply number not null, -- 奇越 呪
    store_code varchar2(500) not null -- 走繊 坪球
);
drop sequence notice_num;
create sequence notice_num;
select * from notice;
commit;

-- reply: 因走紫牌 奇越
drop table reply;
create table reply(
    reply_code number constraint reply_num primary key, -- 鎧採 越腰硲
    reply_title varchar2(500) not null, -- 奇越 薦鯉
    reply_writer varchar2(500) not null, -- 奇越 拙失切
    reply_regDate timestamp not null, -- 奇越 拙失 劾促
    reply_contents varchar2(3000) not null, -- 奇越 鎧遂
    notice_code number not null, -- 採乞越 pk
    store_code varchar2(500) not null -- 走繊 坪球
);
drop sequence reply_num;
create sequence reply_num;
select * from reply;
commit;

--client : 壱梓
drop table client;
create table client(
    client_id varchar2(500) constraint client_pk primary key,
    client_pw varchar2(500),
    client_name varchar2(500),
    client_tel varchar2(500),
    client_email varchar2(500),
    client_join_date date,
    client_enabled number default 1 not null,
    client_add varchar2(500),
    client_add_detail varchar2(1000),
    client_postcode varchar2(500),
    client_pw_qst varchar2(2000),
    client_pw_asw varchar2(2000)
);
select * from client;
commit;

-- reserver : 森鉦
drop table reserve;
create table reserve (
  reserve_code varchar2(500) constraint reserve_pk primary key,
  reserve_date date,
  reserve_start_time number,
  reserve_end_time number,
  emp_name varchar2(500),
  reserve_contents varchar2(4000),
  store_code varchar2(500),
  reserve_status varchar2(500), --Reserved澗 森鉦刃戟, Visited澗 号庚刃戟, NotVisited澗 耕号庚
  pet_code number
  );
drop sequence reserve_seq;
create SEQUENCE reserve_seq;
select * from reserve;
commit;

--稽益巨搾
drop table saleslog;
create table saleslog(
  saleslog_key number CONSTRAINT saleslog_pk PRIMARY KEY,
  saleslog_m_income number, --鉦念呪斥
  saleslog_t_income number, --遭戟呪斥
  saleslog_income number,  --呪斥杯
  saleslog_spending number, --走窒
  saleslog_net_income number, --授呪斥
  saleslog_year number, --鰍
  saleslog_month number, --杉
  saleslog_day number, --析
  saleslog_date Date, --date
  store_code varchar2(500)
);
drop sequence saleslog_seq;
create sequence saleslog_seq;
--insert into saleslog values(saleslog_seq.nextval, 100000, 20000, 120000, 0, 120000, 17, 5, 1, '17/05/01', 'pankyo');
--insert into saleslog values(saleslog_seq.nextval, 300000, 20000, 320000, 0, 320000, 17, 5, 11, '17/05/11', 'pankyo');
--insert into saleslog values(saleslog_seq.nextval, 200000, 40000, 240000, 0, 240000, 17, 4, 1, '17/04/01', 'pankyo');
--insert into saleslog values(saleslog_seq.nextval, 700000, 50000, 750000, 0, 750000, 17, 3, 3, '17/03/03', 'pankyo');
--insert into saleslog values(saleslog_seq.nextval, 500000, 70000, 570000, 0, 570000, 17, 2, 15, '17/02/15', 'pankyo');
select * from saleslog;
commit;

-- product : 雌念
drop table product;
create table product(
    product_code number constraint product_pk primary key, -- 雌念 鎧採 坪球
    product_name varchar2(500) not null, -- 雌念 戚硯
    product_cost number not null, -- 雌念 亜維
    product_amount number not null, -- 雌念 鯵呪
    product_category varchar2(500) not null, -- 雌念 曽嫌
    product_regdate varchar2(500) not null, -- 雌念 去系 劾促
    product_modifyDate varchar2(500), -- 呪舛 劾促
    product_url varchar2(500) -- 雌念 戚耕走 井稽
);
drop sequence product_num;
create sequence product_num;
select * from product;
commit;

-- basket :  舌郊姥艦
drop table basket;
create table basket(
    basket_code number constraint basket_pk primary key, -- 鎧採 坪球
    product_code varchar2(500) not null, -- 雌念 坪球
    product_amount number not null, -- 雌念 鯵呪
    client_id varchar2(500) not null -- 壱梓 焼戚巨
);
drop sequence basket_num;
create sequence basket_num;
select * from basket;
commit;

-- systemLogin :  獣什奴 稽益昔
drop table systemLogin;
create table systemLogin(
    systemLogin_code varchar2(500) constraint systemLogin_pk primary key,
    systemLogin_pwd varchar2(500) not null,
    systemLogin_role varchar2(500) not null
);
insert into systemLogin values('system', 'oracle', 'ROLE_SUPER_FULL');
select * from systemLogin;
commit;

-- buyList : 姥古鯉系
drop table buyList;
create table buyList(
    buyList_code number constraint buyList_pk primary key, -- 鎧採 坪球
    product_code number not null, -- 雌念 坪球
    product_amount number not null, -- 雌念 鯵呪
    butList_date varchar2(500) not null, -- 姥古廃 劾促
    client_id varchar2(500) not null -- 壱梓 焼戚巨
);
drop sequence buyList_num;
create sequence buyList_num;
select * from buyList;
commit;

-- 尻柔舌