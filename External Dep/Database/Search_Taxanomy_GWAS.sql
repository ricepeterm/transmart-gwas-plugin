-- Unable to render TABLE DDL for object SEARCHAPP.SEARCH_TAXONOMY_GWAS with DBMS_METADATA attempting internal generator.
CREATE TABLE SEARCHAPP.SEARCH_TAXONOMY_GWAS
(
  TERM_ID NUMBER(22, 0) NOT NULL 
, TERM_NAME VARCHAR2(900 BYTE) NOT NULL 
, SOURCE_CD VARCHAR2(900 BYTE) 
, IMPORT_DATE TIMESTAMP(1) DEFAULT Sysdate 
, SEARCH_KEYWORD_ID NUMBER(38, 0) 
) 
NOLOGGING 
TABLESPACE BIOMART 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  BUFFER_POOL DEFAULT 
) 
NOCOMPRESSCREATE UNIQUE INDEX SEARCHAPP.SEARCH_TAXONOMY_GWAS_PK ON SEARCHAPP.SEARCH_TAXONOMY_GWAS (TERM_ID ASC) 
NOLOGGING 
TABLESPACE BIOMART 
PCTFREE 10 
INITRANS 2 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  BUFFER_POOL DEFAULT 
) 
NOPARALLELALTER TABLE SEARCHAPP.SEARCH_TAXONOMY_GWAS
ADD CONSTRAINT FK_SEARCH_TAX_SEARCH_KEYWORD_GWAS FOREIGN KEY
(
  SEARCH_KEYWORD_ID 
)
REFERENCES SEARCHAPP.SEARCH_KEYWORD
(
  SEARCH_KEYWORD_ID 
)
ENABLEALTER TABLE SEARCHAPP.SEARCH_TAXONOMY_GWAS
ADD CONSTRAINT SEARCH_TAXONOMY_GWAS_PK PRIMARY KEY 
(
  TERM_ID 
)
USING INDEX SEARCH_TAXONOMY_GWAS_PK
ENABLE