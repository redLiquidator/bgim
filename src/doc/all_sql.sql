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
code varchar2(64),
login_id varchar2(64),
pwd varchar2(64),
email varchar2(64),
mobile varchar2(64),
hired_dt date,
  CONSTRAINT user_pk PRIMARY KEY (user_id)  
);

INSERT INTO org_user (USER_ID,DOMAIN_ID,DEPT_ID,HR_GROUP_ID,HR_SYNC,HR_SYNC_GROUP,STATUS,IS_VALID,CREATE_DT,MODIFY_DT,PWD_DT,USERNAME,
COMPANYCODE,EMPID,DEPTCODE,CODE,LOGIN_ID,PWD,EMAIL,MOBILE,HIRED_DT) VALUES 
(10,1,10,10,1,1,'sync','Y','07-SEP-2020','07-SEP-2020','07-SEP-2020','toni kroos',
'BGCOMMERCE','tonikroos1','CUSTOMER SUPPORT','BGCOMMERCE.tonikroos1','tonikroos1@gmail.com','1234','tonikroos1@gmail.com','010-8223-2221','01-FEB-2020');
