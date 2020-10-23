-- id:im
-- pw:1234

-- 인사동기화로 저장되는 im의 사용자 테이블
CREATE TABLE org_user  
( 
user_id number(10), 
domain_id number(10), 
dept_id number(10),
hr_group_id number(10),
hr_sync number(10),
hr_sync_group number(10),
status varchar2(64),
is_valid varchar2(64),
create_dt date,
modify_dt date,
pwd_dt date,
username varchar2(64),
companycode varchar2(64),
empid varchar2(64),
deptcode varchar2(64),
code varchar2(64) NOT null,
login_id varchar2(64),
pwd varchar2(64),
email varchar2(64),
mobile varchar2(64),
hired_dt date,
  CONSTRAINT user_pk PRIMARY KEY (code)  
);

INSERT INTO org_user (USER_ID,DOMAIN_ID,DEPT_ID,HR_GROUP_ID,HR_SYNC,HR_SYNC_GROUP,STATUS,IS_VALID,CREATE_DT,MODIFY_DT,PWD_DT,USERNAME,
COMPANYCODE,EMPID,DEPTCODE,CODE,LOGIN_ID,PWD,EMAIL,MOBILE,HIRED_DT) VALUES 
(10,1,10,10,1,1,'sync','Y','07-SEP-2020','07-SEP-2020','07-SEP-2020','toni kroos',
'BGCOMMERCE','tonikroos1','CUSTOMER SUPPORT','BGCOMMERCE.tonikroos1','tonikroos1@gmail.com','1234','tonikroos1@gmail.com','010-8223-2221','01-FEB-2020');

-- 고객요청용 게시판 
CREATE TABLE dashboard  
( 
bno number, 
subject varchar2(200), 
content varchar2(3000),
writer varchar2(64),
reg_date date,
  CONSTRAINT bno PRIMARY KEY (bno)  
);

INSERT INTO board(bno,subject,content,writer,reg_date) VALUES (1,'아래 사용자 온라인몰 회원등록해주세요','안녕하세요, 아래 사용자 등록해주세요. 
도메인명: BGCOMMERCE, 이름: Doris Wilsson 연락처: 010-9979-8657', '유주영 과장','11-Sep-2020');

-- 게시판 댓글
CREATE TABLE comments(
  cno number GENERATED BY DEFAULT ON NULL AS IDENTITY,//댓글 seq
  bno number not null,   //댓글이 달릴 게시글 seq
  content varchar(3000) not null,//댓글 내용
  writer varchar(64) not null, //댓글 작성자
  reg_date date not NULL, // 댓글 작성 시간
  CONSTRAINT cno PRIMARY KEY (cno) );
 
INSERT INTO comments (cno,bno,content,writer,reg_date) VALUES (1,1,'회원등록완료되었습니다','IM admin','15-SEP-2020');
INSERT INTO comments (cno,bno,content,writer,reg_date) VALUES (2,1,'온라인몰 비밀번호는 도메인.사번 입니다','IM admin','15-SEP-2020');

-- 파일업로드및 다운로드 기록저장
create table files(
fno int not null primary key,
bno int not null,
filename varchar(200) not null,
fileOriName varchar(300) not null,
fileurl varchar(500) not null);
CREATE SEQUENCE fno START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

-- presync_user를 org_user로 인사동기화한다. 테이블내용은 org_user와 동일하다.
CREATE TABLE presync_user  
( 
username varchar2(64),
companycode varchar2(64),
empid varchar2(64),
deptcode varchar2(64),
code varchar2(64) NOT null,
login_id varchar2(64),
email varchar2(64),
mobile varchar2(64),
hired_dt date,
  CONSTRAINT presync_user_pk PRIMARY KEY (code)  
);

INSERT INTO presync_user (USERNAME,COMPANYCODE,EMPID,DEPTCODE,CODE,LOGIN_ID,EMAIL,MOBILE,HIRED_DT) VALUES 
('Jenny Yoon','BGCOMMERCE','jenny11','SALES','BGCOMMERCE.tonikroos11','jenny11@gmail.com','jenny11@gmail.com','010-1113-2299','01-JAN-2020');
INSERT INTO presync_user (USERNAME,COMPANYCODE,EMPID,DEPTCODE,CODE,LOGIN_ID,EMAIL,MOBILE,HIRED_DT) VALUES 
('Hoxy','BGSPACE','hoxy000','ASTRONAUT','BGSPACE.hoxy000','hoxy000@gmail.com','hoxy000@gmail.com','010-9999-2299','01-JAN-2011');
INSERT INTO presync_user (USERNAME,COMPANYCODE,EMPID,DEPTCODE,CODE,LOGIN_ID,EMAIL,MOBILE,HIRED_DT) VALUES 
('Ddal','BGSPACE','ddal1','ASTRONAUT','BGSPACE.ddal1','ddal1@gmail.com','ddal1@gmail.com','010-1111-2299','01-APR-2011');
INSERT INTO presync_user (USERNAME,COMPANYCODE,EMPID,DEPTCODE,CODE,LOGIN_ID,EMAIL,MOBILE,HIRED_DT) VALUES 
('Stevie','BGCOMMERCE','stevie5','SALES','BGCOMMERCE.stevie5','stevie5@gmail.com','stevie5@gmail.com','010-1441-2109','01-MAR-2011');
INSERT INTO presync_user (USERNAME,COMPANYCODE,EMPID,DEPTCODE,CODE,LOGIN_ID,EMAIL,MOBILE,HIRED_DT) VALUES 
('Enyo','BGCOMMERCE','Enyo1','SALES','BGCOMMERCE.Enyo1','Enyo1@gmail.com','Enyo1@gmail.com','010-8841-2335','02-APR-2011');

-- org_user -> sso_user 로 프로비저닝 한다. 테이블내용은 org_user와 동일하다.
CREATE TABLE sso_user  
( 
username varchar2(64),
companycode varchar2(64),
empid varchar2(64),
deptcode varchar2(64),
code varchar2(64) NOT null,
login_id varchar2(64),
pwd varchar2(64),
email varchar2(64),
mobile varchar2(64),
hired_dt date,
  CONSTRAINT sso_user_pk PRIMARY KEY (code)  
);

-- org_user -> mall_user 로 프로비저닝 한다. 테이블내용은 org_user와 동일하다.
CREATE TABLE mall_user  
( 
username varchar2(64),
companycode varchar2(64),
empid varchar2(64),
deptcode varchar2(64),
code varchar2(64) NOT null,
login_id varchar2(64),
pwd varchar2(64),
email varchar2(64),
mobile varchar2(64),
hired_dt date,
  CONSTRAINT mall_user_pk PRIMARY KEY (code)  
);


CREATE TABLE org_domain  
( 
companycode varchar2(64), 
companyname varchar2(64), 
reg_date date,
  CONSTRAINT companycode_pk PRIMARY KEY (companycode)  
);

INSERT INTO org_domain (companycode,companyname,reg_date) VALUES ('BGLAB','BG laboratory','11-SEP-2000');
INSERT INTO org_domain (companycode,companyname,reg_date) VALUES ('BGCOMMERCE','BG commerce','11-SEP-2000');
INSERT INTO org_domain (companycode,companyname,reg_date) VALUES ('BGAGRICULTURE','BG agriculture','11-DEC-2000');
INSERT INTO org_domain (companycode,companyname,reg_date) VALUES ('BGSPACE','BG space','11-SEP-1990');
INSERT INTO org_domain (companycode,companyname,reg_date) VALUES ('BGFOOD','BG food','01-AUG-2000');

CREATE TABLE org_dept  
( 
deptcode varchar2(64), 
deptname varchar2(64), 
companycode varchar2(64), 
reg_date date,
  CONSTRAINT deptcode_pk PRIMARY KEY (deptcode)  
);

INSERT INTO org_dept (deptcode,deptname,companycode,reg_date) VALUES ('BIOCHEM1','biochemistry1','BGLAB','11-SEP-2000');
INSERT INTO org_dept (deptcode,deptname,companycode,reg_date) VALUES ('SEOULSUPPORT','seoul support','BGCOMMERCE','11-SEP-2000');
INSERT INTO org_dept (deptcode,deptname,companycode,reg_date) VALUES ('BIOCHEM2','biochemistry2','BGLAB','11-SEP-2001');
INSERT INTO org_dept (deptcode,deptname,companycode,reg_date) VALUES ('INCHEONSUPPORT','incheon support','BGCOMMERCE','11-SEP-2001');

CREATE TABLE presync_domain  
( 
companycode varchar2(64), 
companyname varchar2(64),
  CONSTRAINT presynccompanycode_pk PRIMARY KEY (companycode)  
);

INSERT INTO presync_domain (companycode,companyname) VALUES ('BGAGRICULTURE','BG agriculture');
INSERT INTO presync_domain (companycode,companyname) VALUES ('BGSPACE','BG space');

-- user의 프로비전결과를 테이블에 저장한다. 
CREATE TABLE provision_history_user  
( 
history_id number(10) NOT null, 
status varchar2(64),
resource_name varchar2(64),
content varchar2(300),
executed_time date,
user_id varchar2(64),
CONSTRAINT provision_history_user_pk PRIMARY KEY (history_id)  
);


-- domain의 프로비전결과를 테이블에 저장한다. 
CREATE TABLE provision_history_domain  
( 
history_id number(10) NOT null,
status varchar2(64),
resource_name varchar2(64),
content varchar2(300),
executed_time date,
domain_id varchar2(64) NOT null,
CONSTRAINT provision_history_domain_pk PRIMARY KEY (history_id)  
);

-- user의 동기화결과를 테이블에 저장한다. 
CREATE TABLE sync_history_user  
( 
history_id number(10) NOT null,
status varchar2(64),
content varchar2(300),
executed_time date,
user_id varchar2(64) NOT null,
CONSTRAINT sync_history_user_pk PRIMARY KEY (history_id)  
);

INSERT INTO sync_history_user VALUES (0,'success','BGCOMMERCE.stevie1의 인사동기화가 성공하였습니다',SYSDATE,'BGCOMMERCE.stevie1');

--domain의 동기화결과를 테이블에 저장한다. 
CREATE TABLE sync_history_domain  
( 
history_id number(10) NOT null,
status varchar2(64),
content varchar2(300),
executed_time date,
domain_id varchar2(64) NOT null,
CONSTRAINT sync_history_domain_pk PRIMARY KEY (history_id)  
);

-- 업로드및 다운로드할 file정보를 저장 
CREATE TABLE files  
( 
file_id number(10) NOT null, 
menu varchar2(64),
file_name varchar2(64),
file_path varchar2(300),
executed_time date,
CONSTRAINT files_pk PRIMARY KEY (file_id)  
);



