
  CREATE TABLE "COURSE" 
   (	"TITLE" VARCHAR2(100), 
	"NUM" NUMBER, 
	"CONTENT" CLOB, 
	"PHOTO" CLOB, 
	"REGDATE" DATE DEFAULT sysdate, 
	"PRICE" NUMBER, 
	"WRITER" VARCHAR2(100), 
	"PREVIEW" NUMBER DEFAULT 1, 
	"DAYS" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
----�����������������������������������������������������Ʒ��� ���̺� ���� ���� �ڷ� ������������������������������������������
--  
-- LOB ("CONTENT") STORE AS BASICFILE (
--  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION ,
--  NOCACHE LOGGING ,
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT));
-- LOB ("PHOTO") STORE AS BASICFILE (
--  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
--  NOCACHE LOGGING 
--  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT))


REM INSERTING into TBL_MEMBER
SET DEFINE OFF;
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('user0','$2a$10$GDy.bHVUFT0eQS68T6BYKeHb9drh1TnfEpiAzqy7yIZVeQkJH43/.','�Ϲݻ����','20/05/27',to_date('20/06/26','RR/MM/DD'),'1','abc@naver.com','127.0.0.2','��');
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('sdsfs','$2a$10$vim3mt35Tor6tzWSGtdxmefXC/X9Aeb1B6xU3ouL54XCGUxU6P.l2','�Ϲݻ����','20/05/31',to_date('20/05/31','RR/MM/DD'),'0','sdsd@naver.com','127.0.0.3',null);
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('aaaaa','$2a$10$90CpF6pFTM5lNRWX31.Wxen5hd0N2la.Q/aIfpZUoImpRjI7VzBoS','�Ϲݻ����','20/05/31',to_date('20/05/31','RR/MM/DD'),'1','asd@a.s','127.0.0.4',null);
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('aaa','$2a$10$C5m/r5mRHzSzCvLNT/0RgeiT..8Jgl.xp1Ma0xyCismUD7DvfxJT2','������','20/05/27',to_date('20/05/23','RR/MM/DD'),'1','althsuwpfl@naver.com','127.0.0.6','����');
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('tss','$2a$10$OjjKTqraQIu1WnyMOxFpve5EeYo4koO7pULW.BFyAiULw7sXrOC9K','�Ϲݻ����','20/06/23',to_date('20/06/23','RR/MM/DD'),'1','tss@gmail.com','127.0.0.1',null);
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('althsuwpfl','$2a$10$C5m/r5mRHzSzCvLNT/0RgeiT..8Jgl.xp1Ma0xyCismUD7DvfxJT2','������','20/05/27',to_date('20/05/23','RR/MM/DD'),'1','althsuwpfl@naver.com','127.0.0.6','����');
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('saddas','$2a$10$CmSvIR.i1m95zFSsYAgBXedmZYfUdH669yZDpKTGiNtCKYg9n3EBK','�Ϲݻ����','20/06/23',to_date('20/06/23','RR/MM/DD'),'1','adsadasd@gmail.com','127.0.0.1',null);
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('iptest','$2a$10$2IiM3SbFDbzD6JIY8ZeJyeMNBDm3pnq07glkFp41b6P8ALCIvFi6q','�Ϲݻ����','20/06/18',to_date('20/06/18','RR/MM/DD'),'1','alal@naver.com','127.0.0.1',null);
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('asdadsd','$2a$10$SeKjxisoK7fQvNJ/IZBn/eoF9BzWw7mJuJv6jVkPfc2bYG7dUvTHm','�Ϲݻ����','20/06/23',to_date('20/06/23','RR/MM/DD'),'0','asdas@naver.com','127.0.0.1',null);
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('asdad','$2a$10$I4AHPVK4AwIepO3kVWBXcO8w0zwyLo7qw06rnT2NWgOUhI7/MXeQe','�Ϲݻ����','20/06/23',to_date('20/06/23','RR/MM/DD'),'0','sadd@naver.com','127.0.0.1',null);
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('adsadada','$2a$10$afBoYU4F7Jzo0RDMKFWvl.jMaQQmnIAdmUtpC6UTjScck5MtdiMca','�Ϲݻ����','20/06/23',to_date('20/06/23','RR/MM/DD'),'1','asasdasd@gmail.com','127.0.0.1',null);
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('daafafafaf','$2a$10$GViqF26A7WX4iPzUXa/e5eLkXEkC/TZdUI0jZF6UTWdalKinSFsPG','�Ϲݻ����','20/06/23',to_date('20/06/23','RR/MM/DD'),'0','asdnas@naver.com','127.0.0.1',null);
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('asdadad','$2a$10$eXX3yqQU3ye2e2IVjQo5Pee.hlr1RRsHw/EJYfQ4XrVFjzEiQnTF.','�Ϲݻ����','20/06/27',to_date('20/06/27','RR/MM/DD'),'1','sadads@naver.com','127.0.0.1','�����䳢');
Insert into TBL_MEMBER (USERID,USERPW,USERNAME,REGDATE,UPDATEDATE,ENABLED,USEREMAIL,IP,NICKNAME) values ('eun960411','$2a$10$zHxeJjjrMnY4wvrBkpf09e0vD7DZcdOCRbSpcnXBJqzzvZluyGHyW','�Ϲݻ����','20/07/06',to_date('20/07/06','RR/MM/DD'),'0','anaksld@naver.com','127.0.0.1','����');
REM INSERTING into RES_CART
SET DEFINE OFF;
REM INSERTING into RES_TABLE
SET DEFINE OFF;
REM INSERTING into RESERVATION
SET DEFINE OFF;
REM INSERTING into REVIEW
SET DEFINE OFF;
Insert into REVIEW (NUM,TITLE,CONTENT,WRITER,REGDATE,PHOTO,NICKNAME) values (11,'�׽�Ʈ�Դϴ�.','<p>����</p>','alth',to_date('20/06/02','RR/MM/DD'),'9004426a-0_JAVA_Bean.jpg',null);
Insert into REVIEW (NUM,TITLE,CONTENT,WRITER,REGDATE,PHOTO,NICKNAME) values (12,'�����׽�Ʈ','<p>�׽�Ʈ�����̿���.</p><p>&nbsp;</p><p>�� ������..?</p>','user0',to_date('20/06/02','RR/MM/DD'),'ea6805ef-0_loginbg.jpg',null);
Insert into REVIEW (NUM,TITLE,CONTENT,WRITER,REGDATE,PHOTO,NICKNAME) values (21,'�׽�Ʈ�Դϴ�.','<p>12313</p>','althsuwpfls',to_date('20/06/05','RR/MM/DD'),'0c43e583-4_JAVA_Bean.jpg',null);
Insert into REVIEW (NUM,TITLE,CONTENT,WRITER,REGDATE,PHOTO,NICKNAME) values (22,'�׽�Ʈ�Դϴ�.','<p>213</p>','althsuwpfls',to_date('20/06/05','RR/MM/DD'),'b3a193ba-c_JAVA_Bean.jpg',null);
Insert into REVIEW (NUM,TITLE,CONTENT,WRITER,REGDATE,PHOTO,NICKNAME) values (41,'�׽�Ʈ �г���','<p>�г��� �׽�Ʈ</p>','�����䳢',to_date('20/06/27','RR/MM/DD'),'af8beddd-2_loginbg.jpg',null);
Insert into REVIEW (NUM,TITLE,CONTENT,WRITER,REGDATE,PHOTO,NICKNAME) values (46,'�ູ�� �ð��̿����ϴ�.','<p>��������</p>','eun960411',to_date('20/07/02','RR/MM/DD'),'67eee972-d_shiroyama.webp',null);
Insert into REVIEW (NUM,TITLE,CONTENT,WRITER,REGDATE,PHOTO,NICKNAME) values (43,'�ʹ����Ҿ��','<p>������õ�Դϴ�</p>','eun960411',to_date('20/07/02','RR/MM/DD'),'b58b83ad-c_5.jpg',null);
Insert into REVIEW (NUM,TITLE,CONTENT,WRITER,REGDATE,PHOTO,NICKNAME) values (44,'�ٽÿ��� �;��','<p>�����ǿ�����</p>','eun960411',to_date('20/07/02','RR/MM/DD'),'638a054b-e_6.jpg',null);
REM INSERTING into NOTICEREPLY
SET DEFINE OFF;
Insert into NOTICEREPLY (NUM,N_NUM,USERID,COMM,REGDATE,LIKES,HATES,NICKNAME) values (12,10,'althsuwpfl','��� �׽�Ʈ 2 �Դϴ�.',to_date('20/06/01','RR/MM/DD'),31,13,null);
Insert into NOTICEREPLY (NUM,N_NUM,USERID,COMM,REGDATE,LIKES,HATES,NICKNAME) values (13,10,'user0','�ȳ�. USER�Դϴ�.',to_date('20/06/01','RR/MM/DD'),22,11,null);
Insert into NOTICEREPLY (NUM,N_NUM,USERID,COMM,REGDATE,LIKES,HATES,NICKNAME) values (15,21,'althsuwpfl','!? ����?',to_date('20/06/01','RR/MM/DD'),7,2,null);
Insert into NOTICEREPLY (NUM,N_NUM,USERID,COMM,REGDATE,LIKES,HATES,NICKNAME) values (16,21,'althsuwpfl','�Ǳ�� ������',to_date('20/06/01','RR/MM/DD'),1,2,null);
Insert into NOTICEREPLY (NUM,N_NUM,USERID,COMM,REGDATE,LIKES,HATES,NICKNAME) values (68,21,'asdadad','<p>�׽�Ʈ</p>',to_date('20/06/27','RR/MM/DD'),3,1,'�����䳢');
Insert into NOTICEREPLY (NUM,N_NUM,USERID,COMM,REGDATE,LIKES,HATES,NICKNAME) values (79,22,'user0','test',to_date('20/07/03','RR/MM/DD'),3,3,'��');
Insert into NOTICEREPLY (NUM,N_NUM,USERID,COMM,REGDATE,LIKES,HATES,NICKNAME) values (21,22,'althsuwpfls','asdsa',to_date('20/06/03','RR/MM/DD'),4,3,'�䳢');
REM INSERTING into NOTICEWRITE
SET DEFINE OFF;
Insert into NOTICEWRITE (SEQUENCE,USERID,TITLE,CONTENT,VIEWER,RECOMMEND,DISRECOMMEND,NICKNAME) values (21,'althsuwpfl','�߰� ��������','<p>06�� 21�� ������ ���� ����</p>',135,6,1,'������');
Insert into NOTICEWRITE (SEQUENCE,USERID,TITLE,CONTENT,VIEWER,RECOMMEND,DISRECOMMEND,NICKNAME) values (22,'althsuwpfl','�׽�Ʈ�Դϴ�.','<p>te</p>',611,6,4,'������');
REM INSERTING into PERSISTENT_LOGINS
SET DEFINE OFF;
Insert into PERSISTENT_LOGINS (USERNAME,SERIES,TOKEN,LAST_USED) values ('asdadad','e5D068nrlnamAXLtAgPmRw==','nX6g3i+26Th01HuRJ1wWqA==',to_timestamp('20/06/27 17:40:29.149000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PERSISTENT_LOGINS (USERNAME,SERIES,TOKEN,LAST_USED) values ('althsuwpfls','r3kUHc3Kw6Ln/H0hEZ9ZoA==','9jE1EWPZbsjKqF8wpv6ynQ==',to_timestamp('20/07/07 18:54:19.706000000','RR/MM/DD HH24:MI:SSXFF'));

REM INSERTING into PRODUCT
SET DEFINE OFF;
Insert into PRODUCT (NUM,USERID,GOODS,CONTENT,PRICE,CATEGORY,GOODSPHOTO,STATUS,NICKNAME,STARTDATE,LASTDATE,REGDATE) values (32,'eun960411','�������۽Ľ���Ƽ','<p>�ʰ淮�� ưư�ϰ� �ܴ��� ������, �������������� ��ο���</p><p>''�������� �ڵ鸵�� ���� ����� ��ȸ���� ���� ����ũ�Դϴ�.''</p>','1500','������','a4c3bda1-815f-4133-846a-b49c0f581347_4.png','1','����',to_date('20/07/08','RR/MM/DD'),to_date('20/07/31','RR/MM/DD'),to_date('20/07/06','RR/MM/DD'));
Insert into PRODUCT (NUM,USERID,GOODS,CONTENT,PRICE,CATEGORY,GOODSPHOTO,STATUS,NICKNAME,STARTDATE,LASTDATE,REGDATE) values (33,'eun960411','���̾�Ʈ ����Ʈ SL 1','<p>����� ���� �ε� �����ս��� ���Ͽ�</p><p>''���̴����� �ε巯�� ���̵��� ������ �� �ְ� ���ݴϴ�.''</p>','50000','������','b3112879-64e7-4f33-a4c8-d7428e2da7d1_5.png','1','����',to_date('20/07/09','RR/MM/DD'),to_date('20/07/31','RR/MM/DD'),to_date('20/07/06','RR/MM/DD'));
Insert into PRODUCT (NUM,USERID,GOODS,CONTENT,PRICE,CATEGORY,GOODSPHOTO,STATUS,NICKNAME,STARTDATE,LASTDATE,REGDATE) values (34,'eun960411','TALON 27.5 0','<p>�������� �ϵ������� ������! ������ ALUCXX �˷�̴� �����ӿ�</p><p>���̾�Ʈ�� �������� 27.5��ġ �� ��ũ����� ������ ��������</p><p>������ ���� ���̴����� ���� �Ϻ��� ������ �̷�½��ϴ�.</p>','70000','������','6389a3b6-0ce6-48fa-b205-483234c85602_6.png','1','����',to_date('20/07/15','RR/MM/DD'),to_date('20/08/21','RR/MM/DD'),to_date('20/07/06','RR/MM/DD'));
Insert into PRODUCT (NUM,USERID,GOODS,CONTENT,PRICE,CATEGORY,GOODSPHOTO,STATUS,NICKNAME,STARTDATE,LASTDATE,REGDATE) values (35,'eun960411','SCR2 PLUS','<p>������ SCR2 ���� �ѵ�� ����</p><p>�˷轺SL ����� �˷�̴� ���������� �����Ǿ� ����</p><p>���� �淮 �������� ������ ���̵��� ���� �� �ֽ��ϴ�.</p>','5500','������','f143a7c1-1d93-4f8c-bf76-38a046272c38_7.png','1','����',to_date('20/07/08','RR/MM/DD'),to_date('20/07/31','RR/MM/DD'),to_date('20/07/06','RR/MM/DD'));
Insert into PRODUCT (NUM,USERID,GOODS,CONTENT,PRICE,CATEGORY,GOODSPHOTO,STATUS,NICKNAME,STARTDATE,LASTDATE,REGDATE) values (38,'eun960411','ī�� TCR ADVANCED 2','<p>������ ���༺�� �뷱���� ã�Ƴ���</p><p>''�����ս� ī�� �ε� ����ũ''</p>','2000','������','003a129c-53cd-405e-863b-783a58cf0853_3.png','1','����',to_date('20/07/08','RR/MM/DD'),to_date('20/07/31','RR/MM/DD'),to_date('20/07/06','RR/MM/DD'));
Insert into PRODUCT (NUM,USERID,GOODS,CONTENT,PRICE,CATEGORY,GOODSPHOTO,STATUS,NICKNAME,STARTDATE,LASTDATE,REGDATE) values (39,'eun960411','����ȶ������ ���������� 29��ġ','<p>���� ��ȭ�� eMTB �����Ӱ� ���� �� ���͸� ���</p><p>''��÷�� M5 �˷��� ���ÿ� �����ϴ� ���� �ε巴�� ������ ����''</p>','6000','������','bf3a036e-ba2a-4ed2-8405-b1b5ab3dc7ee_2.png','1','����',to_date('20/07/09','RR/MM/DD'),to_date('20/07/31','RR/MM/DD'),to_date('20/07/06','RR/MM/DD'));
REM INSERTING into QNA
SET DEFINE OFF;
Insert into QNA (NUM,TITLE,WRITER,REGDATE,CONTENT) values (21,'ȸ�� ���Կ� ���Ͽ�','althsuwpfl',to_date('20/06/26','RR/MM/DD'),'<p>ȸ�� ������ ���̵�, �̸���, ��й�ȣ�� Ȯ���� ���� &nbsp;������ �����մϴ�.</p><p>&nbsp;</p><p>���̵�, �̸����� �ڵ����� �ߺ�Ȯ���� ���� �ϸ�, &nbsp;�ٸ� ������ ������ ��쿡 1:1 ���Ǹ� �� �ֽñ� �ٶ��ϴ�.</p><p>&nbsp;</p><p>�����մϴ�.</p>');
Insert into QNA (NUM,TITLE,WRITER,REGDATE,CONTENT) values (22,'�������� ��� �� ��Ż ����� ���Ͽ�','althsuwpfl',to_date('20/06/26','RR/MM/DD'),'<p>�������� ��Ż �ݾ׿� ���� �ڼ��� ������ <a href="https://localhost:8443/about">�̿�ȳ�</a>�� �̿��� �ֽñ� �ٶ��ϴ�.</p><p>��Ż ����� 1:1���� �� �뿩 ���� �� ������ ����� ����, �� ���뿡�� �����ư�� �����ֽø� �˴ϴ�.</p><p>&nbsp;</p><p>�����մϴ�.</p>');
REM INSERTING into INLOG
SET DEFINE OFF;
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('aaaaa',2,0,0);
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('althsuwpfls',0,512,9);
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('sdsfs',0,0,0);
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('tss',0,30,0);
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('saddas',0,0,0);
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('iptest',0,3,0);
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('asdad',0,0,0);
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('adsadada',0,0,0);
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('daafafafaf',0,0,0);
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('asdadad',0,15,0);
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('althsuwpfl',0,917,42);
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('user0',0,506,8);
Insert into INLOG (USERID,FAIL_COUNT,LOGIN_COUNT,FULLFAIL_COUNT) values ('eun960411',0,0,0);
REM INSERTING into IPBANLIST
SET DEFINE OFF;
Insert into IPBANLIST (USERID,IP,BANDATE,ENABLED) values ('iptest','127.0.0.1',to_date('20/06/21','RR/MM/DD'),'0');
REM INSERTING into APPLY_USER
SET DEFINE OFF;
Insert into APPLY_USER (NUM,USERNAME,USERID,USEREMAIL,ADDR,APPLYDATE,PHONENUM,ENABLED) values (2,'�䳢','althsuwpfls','althsuwpfl@gmail.com','asad',to_date('20/06/27','RR/MM/DD'),'131-3123-2424','0');
REM INSERTING into AREPLY
SET DEFINE OFF;
Insert into AREPLY (NUM,N_NUM,NICKNAME,COMM,REGDATE) values (3,2,'�����䳢','�׽�Ʈ2',to_date('20/07/07','RR/MM/DD'));
Insert into AREPLY (NUM,N_NUM,NICKNAME,COMM,REGDATE) values (4,2,'�����䳢','������',to_date('20/07/07','RR/MM/DD'));
Insert into AREPLY (NUM,N_NUM,NICKNAME,COMM,REGDATE) values (5,2,'�����䳢','testa',to_date('20/07/07','RR/MM/DD'));
REM INSERTING into CONTACTUS
SET DEFINE OFF;
Insert into CONTACTUS (NUM,EMAIL,MESSAGE,REGDATE,STATUS,TITLE) values (3,'althsuwpfl@gmail.com','asdasd',to_date('20/05/31','RR/MM/DD'),'0','�׽�Ʈ');
Insert into CONTACTUS (NUM,EMAIL,MESSAGE,REGDATE,STATUS,TITLE) values (4,'althsuwpfl@gmail.com','rte',to_date('20/06/01','RR/MM/DD'),'0','�׽�Ʈ�Դϴ�.');
Insert into CONTACTUS (NUM,EMAIL,MESSAGE,REGDATE,STATUS,TITLE) values (21,'althsuwpfl@gmail.com','asd',to_date('20/06/05','RR/MM/DD'),'0','�׽�Ʈ�Դϴ�.');
Insert into CONTACTUS (NUM,EMAIL,MESSAGE,REGDATE,STATUS,TITLE) values (41,'athsu@naver.com','������Ͽ򴩝�ؾȸ��ӿ츶���Ƥ�',to_date('20/06/26','RR/MM/DD'),'1','�ȳ�? ������?');
Insert into CONTACTUS (NUM,EMAIL,MESSAGE,REGDATE,STATUS,TITLE) values (2,'althsuwpfl@gmail.com','�׽�Ʈ ���� �Դϴ�.',to_date('20/05/30','RR/MM/DD'),'0','���� �׽�Ʈ');
REM INSERTING into COURSE
SET DEFINE OFF;
Insert into COURSE (TITLE,NUM,REGDATE,PRICE,WRITER,PREVIEW,DAYS) values ('���ο� ����������',7,to_date('20/07/06','RR/MM/DD'),6000,'������',2,2);
Insert into COURSE (TITLE,NUM,REGDATE,PRICE,WRITER,PREVIEW,DAYS) values ('���ֵ� ����',8,to_date('20/07/06','RR/MM/DD'),15000,'������',2,10);
Insert into COURSE (TITLE,NUM,REGDATE,PRICE,WRITER,PREVIEW,DAYS) values ('�Ƹ�����',3,to_date('20/07/06','RR/MM/DD'),6000,'������',5,1);
Insert into COURSE (TITLE,NUM,REGDATE,PRICE,WRITER,PREVIEW,DAYS) values ('���� ����������',4,to_date('20/07/06','RR/MM/DD'),50000,'������',3,2);
Insert into COURSE (TITLE,NUM,REGDATE,PRICE,WRITER,PREVIEW,DAYS) values ('�غ�����',5,to_date('20/07/06','RR/MM/DD'),70000,'������',5,5);
Insert into COURSE (TITLE,NUM,REGDATE,PRICE,WRITER,PREVIEW,DAYS) values ('��������� �Բ�',9,to_date('20/07/06','RR/MM/DD'),70000,'������',5,2);
��������������������������������������������������������������������������������������������������������������������������������

�����������������������������������������������Ʒ����� PK, FK, Unique key����������������������������������������������������
--------------------------------------------------------
--  DDL for Index USERNOTICEWRITE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USERNOTICEWRITE_PK" ON "USERNOTICEWRITE" ("NICKNAME", "SEQUENCE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index USERNOTICEWRITE_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "USERNOTICEWRITE_PK1" ON "USERNOTICEWRITE" ("SEQUENCE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index TBL_MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_MEMBER_PK" ON "TBL_MEMBER" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL;
--------------------------------------------------------
--  DDL for Index NICKNAME_QE
--------------------------------------------------------

  CREATE UNIQUE INDEX "NICKNAME_QE" ON "TBL_MEMBER" ("NICKNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index RES_CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RES_CART_PK" ON "RES_CART" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index RES_TABLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RES_TABLE_PK" ON "RES_TABLE" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RESERVATION_PK" ON "RESERVATION" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REVIEW_PK" ON "REVIEW" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index REVIEW_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "REVIEW_UK1" ON "REVIEW" ("NICKNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index NOTICEREPLY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOTICEREPLY_PK" ON "NOTICEREPLY" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index NOTICEWRITE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOTICEWRITE_PK" ON "NOTICEWRITE" ("SEQUENCE", "USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index PERSISTENT_LOGINS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERSISTENT_LOGINS_PK" ON "PERSISTENT_LOGINS" ("SERIES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRODUCT_PK" ON "PRODUCT" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index QNA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "QNA_PK" ON "QNA" ("NUM", "WRITER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL;
--------------------------------------------------------
--  DDL for Index INLOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INLOG_PK" ON "INLOG" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index IPBANLIST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IPBANLIST_PK" ON "IPBANLIST" ("USERID", "IP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index APPLY_USER_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "APPLY_USER_UK1" ON "APPLY_USER" ("USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index APPLY_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APPLY_USER_PK" ON "APPLY_USER" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TABLE1_PK" ON "AREPLY" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index CONTACTUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CONTACTUS_PK" ON "CONTACTUS" ("NUM", "EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  DDL for Index COURSE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COURSE_PK" ON "COURSE" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS";
--------------------------------------------------------
--  Constraints for Table USERNOTICEWRITE
--------------------------------------------------------

���������������������������������������̺� ���� ���� ����������������������������������������������������������������
  ALTER TABLE "USERNOTICEWRITE" MODIFY ("SEQUENCE" NOT NULL ENABLE);
 
  ALTER TABLE "USERNOTICEWRITE" MODIFY ("NICKNAME" NOT NULL ENABLE);
 
  ALTER TABLE "USERNOTICEWRITE" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "USERNOTICEWRITE" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "USERNOTICEWRITE" MODIFY ("VIEWER" NOT NULL ENABLE);
 
  ALTER TABLE "USERNOTICEWRITE" MODIFY ("RECOMMEND" NOT NULL ENABLE);
 
  ALTER TABLE "USERNOTICEWRITE" MODIFY ("DISRECOMMEND" NOT NULL ENABLE);
 
  ALTER TABLE "USERNOTICEWRITE" ADD CONSTRAINT "USERNOTICEWRITE_PK" PRIMARY KEY ("SEQUENCE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
