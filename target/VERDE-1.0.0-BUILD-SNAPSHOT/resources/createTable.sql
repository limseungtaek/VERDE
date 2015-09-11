CREATE TABLE TB_COMMUNITY (
  COMMUNITY_ID int NOT NULL auto_increment,
  COMMUNITY_TYPE VARCHAR(512),
  COMMUNITY_NAME VARCHAR(512),
  USE_YN CHAR(1),
  REGIST_YMDT varchar(19),
  UPDATE_YMDT varchar(19),
  primary key(COMMUNITY_ID)
);

INSERT INTO TB_COMMUNITY
    (community_type, community_name, use_yn, regist_ymdt)
VALUES
    ('ARTICLE', '자유게시판', 'Y', now());

CREATE TABLE TB_ARTICLE (
  ARTICLE_ID int NOT NULL auto_increment,
  COMMUNITY_ID int NOT NULL ,
  EMPNO int ,
  GROUP_ID int NOT NULL ,
  RE_LEVEL int NOT NULL ,
  RE_DEPTH int NOT NULL ,
  TITLE VARCHAR(512),
  NAME VARCHAR(32) ,
  CONTENT text,
  USE_YN CHAR(1),
  REGIST_YMDT varchar(19),
  UPDATE_YMDT varchar(19),
  primary key(ARTICLE_ID)
);

insert into TB_ARTICLE(COMMUNITY_ID, EMPNO, GROUP_ID, RE_LEVEL, RE_DEPTH, TITLE, NAME, CONTENT, USE_YN, REGIST_YMDT, UPDATE_YMDT)
values(1, 1, 1, 1, 1, 'TITLE', 'NAME', 'CONTENT', 'Y', now(), now());

CREATE TABLE TB_FILE (
  FILE_ID int NOT NULL auto_increment,
  ARTICLE_ID int NOT NULL,
  ORIGIN_FILENAME VARCHAR(256),
  SAVE_FILENAME VARCHAR(256),
  FILE_SIZE VARCHAR(32),
  MIME_TYPE VARCHAR(128),
  FILE_PATH VARCHAR(512),
  USE_YN CHAR(1),
  REGIST_YMDT varchar(19),
  UPDATE_YMDT varchar(19),
  primary key(FILE_ID)
) ;