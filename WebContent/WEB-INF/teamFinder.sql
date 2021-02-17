drop table users purge;
drop table users cascade CONSTRAINT;

drop sequence USER_SEQ;

drop table board purge;
drop table board cascade CONSTRAINT;

drop table team purge;
drop table team cascade CONSTRAINT;

drop table member purge;
drop table member cascade CONSTRAINT;

drop table review purge;
drop table review cascade CONSTRAINT;

drop table comment purge;
drop table comment cascade CONSTRAINT;

CREATE TABLE users(
   user_index number primary key,
   user_id  VARCHAR2(10) not null,
   user_pwd VARCHAR2(20) not null,
   user_image varchar2(50),
   user_stack varchar2(50),
   user_email varchar2(50) not null,
   region varchar2(20)
);

CREATE SEQUENCE USER_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 10000 MINVALUE 1;

CREATE TABLE board(
   post_id number primary key,
   title  VARCHAR2(60) not null,
   user_index references users(user_index),
   context VARCHAR2(500) not null,
   project_period varchar2(20) not null,
   region varchar2(20) not null,
   meeting_method varchar2(20) not null,
   recruiting_number varchar2(20) not null,
   team_image varchar2(20),
   project_stack varchar2(50) not null,
   upload_time DATE default sysdate,
   board_type number not null
   );
   
CREATE TABLE team(
   team_id number primary key,   --unique + not null   , index 생성
   post_id references board(post_id),     -- 한글 3바이트 차지
   max_person number not null,
   leader_id number not null,
   title varchar2(50) not null,
   status number not null
);
CREATE TABLE member(
   member_id number primary key,   --unique + not null   , index 생성
   team_id references team(team_id),     -- 한글 3바이트 차지
   user_index number,
   status number not null,
);

CREATE TABLE review(
   review_id number primary key,   --unique + not null   , index 생성
   post_id references team(post_id),     -- 한글 3바이트 차지
   publisher VARCHAR2(60) not null,
   target_user_number number not null,
   review_text varchar2(100) not null,
   start number not null
);
CREATE TABLE comment(
   comment_id number primary key,   --unique + not null   , index 생성
   user_index references users(user_index),     -- 한글 3바이트 차지
   post_id references board(post_id),
   comment_text varchar2(100) not null,
   comment_type varchar2(50) not null,
   comment_class number not null,
   comment_order number not null,
   comment_group number not null
);

insert into users values(1, 'test', 'test', null, 'java/c', 'xxx@xxxx.com');