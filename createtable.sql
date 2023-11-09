-- default.traveladvisory
CREATE EXTERNAL TABLE `default`.`customer`(
  `id` int, 
  `name` string, 
  `created_at` timestamp, 
  `country_code` string)
PARTITIONED BY SPEC ( 
country_code)
ROW FORMAT SERDE 
  'org.apache.iceberg.mr.hive.HiveIcebergSerDe' 
STORED BY 
  'org.apache.iceberg.mr.hive.HiveIcebergStorageHandler' 

	-- worked for ice
CREATE TABLE default.traveladvisory
(
  TITLE string,
	PUBDATE string ,
	LINK string,
	GUID string ,
	DOMAIN string ,
	CATEGORY string,
	DESCRIPTION string,
	UUID string ,
	TS BIGINT NOT NULL ,
	summary string 
)
PARTITIONED BY (ADVISORYID string) STORED BY ICEBERG;


-- default.customer definition

CREATE EXTERNAL TABLE `default`.`customer`(
  `id` int, 
  `name` string, 
  `created_at` timestamp, 
  `country_code` string)
PARTITIONED BY SPEC ( 
country_code)
ROW FORMAT SERDE 
  'org.apache.iceberg.mr.hive.HiveIcebergSerDe' 
STORED BY 
  'org.apache.iceberg.mr.hive.HiveIcebergStorageHandler' 

LOCATION
  'file:/opt/hive/data/warehouse/customer'
TBLPROPERTIES (
  'TRANSLATED_TO_EXTERNAL'='TRUE', 
  'bucketing_version'='2', 
  'current-schema'='{"type":"struct","schema-id":0,"fields":[{"id":1,"name":"id","required":false,"type":"int"},{"id":2,"name":"name","required":false,"type":"string"},{"id":3,"name":"created_at","required":false,"type":"timestamp"},{"id":4,"name":"country_code","required":false,"type":"string"}]}', 
  'default-partition-spec'='{"spec-id":0,"fields":[{"name":"country_code","transform":"identity","source-id":4,"field-id":1000}]}', 
  'engine.hive.enabled'='true', 
  'external.table.purge'='TRUE', 
  'iceberg.orc.files.only'='false', 
  'metadata_location'='file:/opt/hive/data/warehouse/customer/metadata/00000-51f2de68-6076-4f21-a91e-878f463dd874.metadata.json', 
  'serialization.format'='1', 
  'snapshot-count'='0', 
  'table_type'='ICEBERG', 
  'transient_lastDdlTime'='1699549676', 
  'uuid'='85680c93-d1ce-4c93-811a-380ee6c6448d');

CREATE TABLE "DB2INST1"."TRAVELADVISORY"  (
		  "TITLE" VARCHAR(250 OCTETS) ,
		  "PUBDATE" VARCHAR(250 OCTETS) ,
		  "LINK" VARCHAR(250 OCTETS) ,
		  "GUID" VARCHAR(250 OCTETS) ,
		  "ADVISORYID" VARCHAR(250 OCTETS) ,
		  "DOMAIN" VARCHAR(250 OCTETS) ,
		  "CATEGORY" VARCHAR(4096 OCTETS) ,
		  "DESCRIPTION" VARCHAR(4096 OCTETS) ,
		  "UUID" VARCHAR(250 OCTETS) NOT NULL ,
		  "TS" BIGINT NOT NULL ,
		  "summary" VARCHAR(2048 OCTETS) )  
		 IN "IBMDB2SAMPLEREL" 
		 ORGANIZE BY ROW;
