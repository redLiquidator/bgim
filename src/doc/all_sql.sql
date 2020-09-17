-- id:im
-- pw:1234

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

CREATE TABLE comments(
  cno number GENERATED BY DEFAULT ON NULL AS IDENTITY,//댓글 seq
  bno number not null,   //댓글이 달릴 게시글 seq
  content varchar(3000) not null,//댓글 내용
  writer varchar(64) not null, //댓글 작성자
  reg_date date not NULL, // 댓글 작성 시간
  CONSTRAINT cno PRIMARY KEY (cno) );
 
INSERT INTO comments (cno,bno,content,writer,reg_date) VALUES (1,1,'회원등록완료되었습니다','IM admin','15-SEP-2020');
INSERT INTO comments (cno,bno,content,writer,reg_date) VALUES (2,1,'온라인몰 비밀번호는 도메인.사번 입니다','IM admin','15-SEP-2020');
