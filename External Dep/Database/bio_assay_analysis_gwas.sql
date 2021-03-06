--------------------------------------------------------
--  File created - Thursday-October-25-2012   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BIO_ASSAY_ANALYSIS_GWAS
--------------------------------------------------------

  CREATE TABLE "BIOMART"."BIO_ASSAY_ANALYSIS_GWAS" 
   (	"BIO_ASY_ANALYSIS_GWAS_ID" NUMBER(18,0), 
	"BIO_ASSAY_ANALYSIS_ID" NUMBER(18,0), 
	"RS_ID" NVARCHAR2(50), 
	"P_VALUE_CHAR" VARCHAR2(100 BYTE), 
	"P_VALUE" BINARY_DOUBLE, 
	"LOG_P_VALUE" BINARY_DOUBLE, 
	"ETL_ID" NUMBER(18,0), 
	"EXT_DATA" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BIOMART" ;
--------------------------------------------------------
--  DDL for Index BIO_ASSAY_ANALYSIS_GWAS_IDX1
--------------------------------------------------------

  CREATE INDEX "BIOMART"."BIO_ASSAY_ANALYSIS_GWAS_IDX1" ON "BIOMART"."BIO_ASSAY_ANALYSIS_GWAS" ("BIO_ASSAY_ANALYSIS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDX" ;
--------------------------------------------------------
--  DDL for Index BIO_ASSAY_ANALYSIS_GWAS_IDX2
--------------------------------------------------------

  CREATE INDEX "BIOMART"."BIO_ASSAY_ANALYSIS_GWAS_IDX2" ON "BIOMART"."BIO_ASSAY_ANALYSIS_GWAS" ("RS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDX" ;
--------------------------------------------------------
--  DDL for Index BIO_ASSAY_ANALYSIS_GWAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BIOMART"."BIO_ASSAY_ANALYSIS_GWAS_PK" ON "BIOMART"."BIO_ASSAY_ANALYSIS_GWAS" ("BIO_ASY_ANALYSIS_GWAS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDX" ;
--------------------------------------------------------
--  Constraints for Table BIO_ASSAY_ANALYSIS_GWAS
--------------------------------------------------------

  ALTER TABLE "BIOMART"."BIO_ASSAY_ANALYSIS_GWAS" MODIFY ("BIO_ASY_ANALYSIS_GWAS_ID" NOT NULL ENABLE);
 
  ALTER TABLE "BIOMART"."BIO_ASSAY_ANALYSIS_GWAS" MODIFY ("BIO_ASSAY_ANALYSIS_ID" NOT NULL ENABLE);

--------------------------------------------------------
--  DDL for Trigger TRG_BIO_ASY_ANALYSIS_GWAS_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_BIO_ASY_ANALYSIS_GWAS_ID" 
before insert on BIOMART.BIO_ASSAY_ANALYSIS_GWAS for each row
begin     
  if inserting then       
    if :NEW."BIO_ASY_ANALYSIS_GWAS_ID" is null then          
      select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_ASY_ANALYSIS_GWAS_ID" from dual;
    end if;
  end if;
end;
/
ALTER TRIGGER "BIOMART"."TRG_BIO_ASY_ANALYSIS_GWAS_ID" ENABLE;
