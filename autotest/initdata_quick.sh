#!/usr/bin/env bash
. ~/.bashrc
export PARENT_DIR_YA100="$(cd "`dirname "$0"`"/..; pwd)"
source ${PARENT_DIR_YA100}/conf/ya100_env.sh

 echo "MrMakeShuData"
 hadoop fs -mkdir -p /data/example/ydb/
 hadoop fs -ls /data/example/ydb/
 hadoop fs -rm -r /data/example/ydb/
 hadoop fs -mkdir -p /data/example/ydb/
 hadoop fs -ls /data/example/ydb/
 hadoop jar ${PARENT_DIR_YA100}/lib/ydb-1.1.6-pg.jar cn.net.ycloud.ydb.server.reader.kafka.MrMakeShuData 500000  /data/example/ydb/1.txt
 hadoop fs -ls /data/example/ydb/
 
 echo "spark_import_txt"
 hadoop fs -mkdir -p /data/example/spark_import_txt/
 hadoop fs -ls /data/example/spark_import_txt/
 hadoop fs -rm -r /data/example/spark_import_txt/
 hadoop fs -mkdir -p /data/example/spark_import_txt/
 hadoop fs -ls /data/example/spark_import_txt/
 hadoop jar ${PARENT_DIR_YA100}/lib/ydb-1.1.6-pg.jar cn.net.ycloud.ydb.server.reader.kafka.MrMakeShuData 500000 /data/example/spark_import_txt/1.txt
 hadoop fs -ls /data/example/spark_import_txt/
 
 echo "shu"
 hadoop fs -mkdir -p /data/example/demo/shu/
 hadoop fs -ls /data/example/demo/shu/
 hadoop fs -rm -r /data/example/demo/shu/
 hadoop fs -mkdir -p /data/example/demo/shu/
 hadoop fs -ls /data/example/demo/shu/
 hadoop jar ${PARENT_DIR_YA100}/lib/ydb-1.1.6-pg.jar cn.net.ycloud.ydb.server.reader.kafka.MrMakeShuData 500000 /data/example/demo/shu/shu_data.txt 
 hadoop fs -ls /data/example/demo/shu/
 curl "http://127.0.0.1:1210/insertdir?reader=filesplit&tablename=ydb_example_shu&partion=20150811&splitInfo=,&hdfsdir=/data/example/demo/shu/"
 
 echo "ads"
 hadoop fs -mkdir -p /data/example/demo/ads
 hadoop fs -ls /data/example/demo/ads
 hadoop fs -rm -r /data/example/demo/ads
 hadoop fs -mkdir -p /data/example/demo/ads/
 hadoop fs -ls /data/example/demo/ads/
 hadoop jar ${PARENT_DIR_YA100}/lib/ydb-1.1.6-pg.jar cn.net.ycloud.ydb.server.reader.kafka.MrMakeAdsData 500000 >ads_data.txt 
 hadoop fs -put ./ads_data.txt /data/example/demo/ads/
 hadoop fs -ls /data/example/demo/ads/
 curl "http://127.0.0.1:1210/insertdir?reader=filesplit&tablename=ydb_example_ads&partion=20151111&splitInfo=,&hdfsdir=/data/example/demo/ads/"
 
 echo " trade"
 hadoop fs -mkdir -p /data/example/demo/trade/
 hadoop fs -ls /data/example/demo/trade/
 hadoop fs -rm -r /data/example/demo/trade/
 hadoop fs -mkdir -p /data/example/demo/trade/
 hadoop fs -ls /data/example/demo/trade/
 hadoop jar ${PARENT_DIR_YA100}/lib/ydb-1.1.6-pg.jar cn.net.ycloud.ydb.server.reader.kafka.KafkaMakeJsonData 500000 /data/example/demo/trade/10001.txt 
 hadoop fs -ls /data/example/demo/trade/
 curl "http://127.0.0.1:1210/insertdir?hdfsdir=/data/example/demo/trade/"
 
 echo "YdbJoinExample"
 hadoop fs -mkdir -p /data/example/vehiclepass_txt
 hadoop fs -ls /data/example/vehiclepass_txt
 hadoop fs -rm -r /data/example/vehiclepass_txt
 hadoop fs -mkdir -p /data/example/vehiclepass_txt
 hadoop fs -ls /data/example/vehiclepass_txt
 hadoop jar ${PARENT_DIR_YA100}/lib/ydb-1.1.6-pg.jar cn.net.ycloud.ydb.server.reader.kafka.importexample.YdbJoinExample 1000000 /data/example/vehiclepass_txt/10001.txt 
 hadoop fs -ls /data/example/vehiclepass_txt

 echo "yorbit"
 hadoop fs -mkdir -p /data/example/demo/yorbit/
 hadoop fs -ls /data/example/demo/yorbit/
 hadoop fs -rm -r /data/example/demo/yorbit/
 hadoop fs -mkdir -p /data/example/demo/yorbit/
 hadoop fs -ls /data/example/demo/yorbit/
 hadoop jar ${PARENT_DIR_YA100}/lib/ydb-1.1.6-pg.jar cn.net.ycloud.ydb.server.reader.kafka.importexample.YdbDemo_jiaotong_Yorbit_notfound 500000 /data/example/demo/yorbit/10003.txt 
 hadoop fs -ls /data/example/demo/yorbit/
 curl "http://127.0.0.1:1210/insertdir?hdfsdir=/data/example/demo/yorbit/"


 echo "proformance"
 hadoop fs -mkdir -p /data/example/proformance/
 hadoop fs -ls /data/example/proformance/
 hadoop fs -rm -r /data/example/proformance/
 hadoop fs -mkdir -p /data/example/proformance/
 hadoop fs -ls /data/example/proformance/
 hadoop jar ${PARENT_DIR_YA100}/lib/ydb-1.1.6-pg.jar cn.net.ycloud.ydb.server.reader.kafka.MrMakeShuData 500000 /data/example/proformance/1.txt
 hadoop fs -ls /data/example/proformance/
         
 echo "ya100_all_type_raw"
 hadoop fs -mkdir -p /data/example/ya100_all_type_raw/
 hadoop fs -ls /data/example/ya100_all_type_raw/
 hadoop fs -rm -r /data/example/ya100_all_type_raw/
 hadoop fs -mkdir -p /data/example/ya100_all_type_raw/
 hadoop fs -ls /data/example/ya100_all_type_raw/
 hadoop jar ${PARENT_DIR_YA100}/lib/ydb-1.1.6-pg.jar cn.net.ycloud.ydb.server.reader.kafka.MrMakeTypeData 100000 >alltype
 hadoop fs -put ./alltype* /data/example/ya100_all_type_raw/
 hadoop fs -ls /data/example/ya100_all_type_raw/

 
 echo "ydb_all_type_raw"
 hadoop fs -mkdir -p /data/example/ydb_all_type_raw/
 hadoop fs -ls /data/example/ydb_all_type_raw/
 hadoop fs -rm -r /data/example/ydb_all_type_raw/
 hadoop fs -mkdir -p /data/example/ydb_all_type_raw/
 hadoop fs -ls /data/example/ydb_all_type_raw/
 hadoop jar ${PARENT_DIR_YA100}/lib/ydb-1.1.6-pg.jar cn.net.ycloud.ydb.server.reader.kafka.importexample.MrMakeTypeData 100000 >ydballtype
 hadoop fs -put ./ydballtype* /data/example/ydb_all_type_raw/
 hadoop fs -ls /data/example/ydb_all_type_raw/
 
 echo "blocksort"
 hadoop fs -mkdir -p /data/example/demo/blocksort/
 hadoop fs -ls /data/example/demo/blocksort/
 hadoop fs -rm -r /data/example/demo/blocksort/
 hadoop fs -mkdir -p /data/example/demo/blocksort/
 hadoop fs -ls /data/example/demo/blocksort/
 hadoop jar ${PARENT_DIR_YA100}/lib/ydb-1.1.6-pg.jar cn.net.ycloud.ydb.server.reader.kafka.KafkaMakeBlockSortData 1000000 /data/example/demo/blocksort/10001.txt 
 hadoop fs -ls /data/example/demo/blocksort/

 
 echo "#############end############"


 cat << EOF >/tmp/ydb.sql

  drop table blocksort_txt;
CREATE external  table blocksort_txt( 
     amtdouble double,
     amtfloat float,
     tradetime bigint,
     amtint int

)
row format delimited fields terminated by ',' 
stored as 
    INPUTFORMAT 'cn.net.ycloud.ydb.handle.YdbCombineInputFormat'
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 
location '/data/example/demo/blocksort'
TBLPROPERTIES (
    'ydb.combine.input.format.raw.format'='org.apache.hadoop.mapred.TextInputFormat'
);

/*ydb.pushdown('->')*/     
    create table blocksort_ydb(
     amtdouble tdouble,
     amtfloat tfloat,
     tradetime tlong,
     amtint tint
    )
/*('<-')pushdown.ydb*/;

insert overwrite table  ydbpartion 
 select 'blocksort_ydb', 'ydb_default_partion', '',
    YROW(
    'amtdouble',amtdouble,
    'amtfloat',amtfloat,
    'tradetime',tradetime,
    'amtint',amtint    )
from blocksort_txt;
 
 
 drop table ydb_all_type_txt;

create external table ydb_all_type_txt(
 c1_byte TINYINT,
 c2_byte TINYINT,
 c1_short SMALLINT,
 c2_short SMALLINT,
 c1_int int,
 c2_int int,
 c3_int int,
 c4_int int,
 c1_long BIGINT,
 c2_long BIGINT,
 c3_long BIGINT,
 c4_long BIGINT,
 c1_float float,
 c2_float float,
 c3_float float,
 c4_float float,
 c1_double double,
 c2_double double,
 c3_double double,
 c4_double double,
 c1_string string,
 c2_string string,
 c3_string string,
 c4_string string,
 d1_byte TINYINT,
 d2_byte TINYINT,
 
 d1_short SMALLINT,
 d2_short SMALLINT,
 d1_int int,
 d2_int int,
 d3_int int,
 d4_int int,
 d1_long BIGINT,
 d2_long BIGINT,
 d3_long BIGINT,
 d4_long BIGINT,
 d1_float float,
 d2_float float,
 d3_float float,
 d4_float float,
 d1_double double,
 d2_double double,
 d3_double double,
 d4_double double,
 d1_string string,
 d2_string string,
 d3_string string,
 d4_string string
 )
 row format delimited fields terminated by ',' 
 stored as INPUTFORMAT 'cn.net.ycloud.ydb.handle.Ya100FixNumCombineTextInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 
 location '/data/example/ydb_all_type_raw';
     
     drop table ydb_all_type;
    create  external table ydb_all_type(
 c1_byte TINYINT,
 c2_byte TINYINT,
 c1_short SMALLINT,
 c2_short SMALLINT,
 c1_int int,
 c2_int int,
 c3_int int,
 c4_int int,
 c1_long BIGINT,
 c2_long BIGINT,
 c3_long BIGINT,
 c4_long BIGINT,
 c1_float float,
 c2_float float,
 c3_float float,
 c4_float float,
 c1_double double,
 c2_double double,
 c3_double double,
 c4_double double,
 c1_string string,
 c2_string string,
 c3_string string,
 c4_string string,
 d1_byte TINYINT,
 d2_byte TINYINT,
 
 d1_short SMALLINT,
 d2_short SMALLINT,
 d1_int int,
 d2_int int,
 d3_int int,
 d4_int int,
 d1_long BIGINT,
 d2_long BIGINT,
 d3_long BIGINT,
 d4_long BIGINT,
 d1_float float,
 d2_float float,
 d3_float float,
 d4_float float,
 d1_double double,
 d2_double double,
 d3_double double,
 d4_double double,
 d1_string string,
 d2_string string,
 d3_string string,
 d4_string string,
 ydbpartion string, ya100_pipe string
 )
STORED BY 'cn.net.ycloud.ydb.handle.Ya100StorageHandler'
TBLPROPERTIES(
"ya100.handler.table.name"="ydb_all_type",
"ya100.handler.master"="ydb.zookeeper.mode",
"ya100.handler.columns.mapping"="c1_byte,c2_byte,c1_short,c2_short,c1_int,c2_int,c3_int,c4_int,c1_long,c2_long,c3_long,c4_long,c1_float,c2_float,c3_float,c4_float,c1_double,c2_double,c3_double,c4_double,c1_string,c2_string,c3_string,c4_string,d1_byte,d2_byte,d1_short,d2_short,d1_int,d2_int,d3_int,d4_int,d1_long,d2_long,d3_long,d4_long,d1_float,d2_float,d3_float,d4_float,d1_double,d2_double,d3_double,d4_double,d1_string,d2_string,d3_string,d4_string,ydbpartion,ya100_pipe"
);


 insert overwrite  table ydb_all_type select *,'3000w','' from ydb_all_type_txt ;

 
 
drop table ydb_import_txt;
CREATE external  table ydb_import_txt( 
phonenum string, usernick string, ydb_sex string, ydb_province string, ydb_grade string, ydb_age string, ydb_blood string, ydb_zhiye string, ydb_earn string, ydb_prefer string, ydb_consume string, ydb_day string, amtdouble double,amtlong bigint,content string,multyvalue string
)
row format delimited fields terminated by ',' 
stored as 
    INPUTFORMAT 'cn.net.ycloud.ydb.handle.YdbCombineInputFormat'
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 
location '/data/example/ydb'
TBLPROPERTIES (
    'ydb.combine.input.format.raw.format'='org.apache.hadoop.mapred.TextInputFormat'
);
 
select * from ydb_import_txt limit 10;
select count(*) from ydb_import_txt limit 10;

drop table vehiclepass_txt;
CREATE external  table vehiclepass_txt( 
tollCode bigint, vehiclePlate string
)
row format delimited fields terminated by ',' 
 stored as INPUTFORMAT 'cn.net.ycloud.ydb.handle.Ya100FixNumCombineTextInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 

location '/data/example/vehiclepass_txt';


insert overwrite table  ydbpartion 
select 'ydb_example_shu', '3000w', '',
    YROW(
        'phonenum',phonenum,
        'usernick',usernick,
        'ydb_sex',ydb_sex,
        'ydb_province',ydb_province,
        'ydb_grade',ydb_grade,
        'ydb_age',ydb_age,
        'ydb_blood',ydb_blood,
        'ydb_zhiye',ydb_zhiye,
        'ydb_earn',ydb_earn,
        'ydb_prefer',ydb_prefer,
        'ydb_consume',ydb_consume,
        'ydb_day',ydb_day,
        'amtdouble',amtdouble,
        'amtlong',amtlong,
        'content',content
    )
from ydb_import_txt;



drop table ydb_example_shu;
CREATE external  table ydb_example_shu( 
 ydbpartion string, ya100_pipe string,phonenum string, usernick string, ydb_sex string,  ydb_province string, ydb_grade string, ydb_age string, ydb_blood string, ydb_zhiye string, ydb_earn string, ydb_prefer string, ydb_consume string, ydb_day string, amtdouble double,amtlong bigint, content string
)
STORED BY 'cn.net.ycloud.ydb.handle.Ya100StorageHandler'
TBLPROPERTIES(
"ya100.handler.table.name"="ydb_example_shu",
"ya100.handler.master"="ydb.zookeeper.mode",
"ya100.handler.columns.mapping"="ydbpartion,ya100_pipe,phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content"
);

drop table ydb_import_txt_multyvalue;
CREATE external  table ydb_import_txt_multyvalue( 
phonenum string, usernick string, ydb_sex string, ydb_province string, ydb_grade string, ydb_age string, ydb_blood string, ydb_zhiye string, ydb_earn string, ydb_prefer string, ydb_consume string, ydb_day string, amtdouble double,amtlong bigint,content string,multyvalue string
)
row format delimited fields terminated by ',' 
 stored as INPUTFORMAT 'cn.net.ycloud.ydb.handle.Ya100FixNumCombineTextInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 

 location '/data/example/ydb';
 
 
 
 insert overwrite table  ydbpartion 
select 'ydb_example_shu_multyvalue', '3000w', '',
    YROW(
        'phonenum',phonenum,
        'usernick',usernick,
        'ydb_sex',ydb_sex,
        'ydb_province',ydb_province,
        'ydb_grade',ydb_grade,
        'ydb_age',ydb_age,
        'ydb_blood',ydb_blood,
        'ydb_zhiye',ydb_zhiye,
        'ydb_earn',ydb_earn,
        'ydb_prefer',ydb_prefer,
        'ydb_consume',ydb_consume,
        'ydb_day',ydb_day,
        'amtdouble',amtdouble,
        'amtlong',amtlong,
        'content',content,
        'multyvalue_string',multyvalue,
        'multyvalue_tlong',multyvalue,
        'multyvalue_long',multyvalue,
        'multyvalue_tdouble',multyvalue,
        'multyvalue_double',multyvalue
    )
from ydb_import_txt_multyvalue;



insert into table  ydbpartion 
select 'ydb_example_shu_multyvalue', '3000w', '',
    YROW(
        'phonenum',phonenum,
        'usernick',usernick,
        'ydb_sex',ydb_sex,
        'ydb_province',ydb_province,
        'ydb_grade',ydb_grade,
        'ydb_age',ydb_age,
        'ydb_blood',ydb_blood,
        'ydb_zhiye',ydb_zhiye,
        'ydb_earn',ydb_earn,
        'ydb_prefer',ydb_prefer,
        'ydb_consume',ydb_consume,
        'ydb_day',ydb_day,
        'amtdouble',amtdouble,
        'amtlong',amtlong,
        'content',content
    )
from ydb_import_txt_multyvalue limit 10000;

insert into table  ydbpartion 
select 'ydb_example_shu_multyvalue', '3000w', '',
    YROW(
        'phonenum',phonenum,
        'usernick',usernick,
        'ydb_sex',ydb_sex,
        'ydb_province',ydb_province,
        'ydb_grade',ydb_grade,
        'ydb_age',ydb_age,
        'ydb_blood',ydb_blood,
        'ydb_zhiye',ydb_zhiye,
        'ydb_earn',ydb_earn,
        'ydb_prefer',ydb_prefer,
        'ydb_consume',ydb_consume,
        'ydb_day',ydb_day,
        'amtdouble',amtdouble,
        'amtlong',amtlong,
        'content',content,
        'multyvalue_string','',
        'multyvalue_tlong','',
        'multyvalue_long','',
        'multyvalue_tdouble','',
        'multyvalue_double',''
    )
from ydb_import_txt_multyvalue limit 10000;



insert overwrite table  ydbpartion 
select 'ydb_example_shu', 'nullcheck', '',
    YROW(
        'phonenum',phonenum,
        'usernick',usernick,
        'ydb_sex',ydb_sex,
        'ydb_province',ydb_province,
        'ydb_grade',ydb_grade,
        'ydb_age',ydb_age,
        'ydb_blood',ydb_blood,
        'ydb_zhiye',ydb_zhiye,
        'ydb_earn',ydb_earn,
        'ydb_prefer',ydb_prefer,
        'ydb_consume',ydb_consume,
        'ydb_day',ydb_day,
        'amtdouble',amtdouble,
        'amtlong',amtlong,
        'content',content
    )
from ydb_import_txt limit 10;

insert into  table ydbpartion 
select 'ydb_example_shu', 'nullcheck', '',
    YROW(
        'phonenum',phonenum,
        'usernick',null,
        'ydb_sex','',
        'ydb_province',ydb_province,
        'ydb_grade',ydb_grade,
        'ydb_age',ydb_age,
        'ydb_blood',ydb_blood,
        'ydb_zhiye',ydb_zhiye,
        'ydb_earn',ydb_earn,
        'ydb_prefer',ydb_prefer,
        'ydb_consume',ydb_consume,
        'ydb_day',ydb_day,
        'amtdouble',amtdouble,
        'amtlong',amtlong,
        'content',content
    )
from ydb_import_txt limit 10;

insert into table  ydbpartion 
select 'ydb_example_shu', 'nullcheck', '',
    YROW(
        'phonenum',phonenum,
        'usernick',usernick,
        'ydb_grade',ydb_grade,
        'ydb_age',ydb_age,
        'ydb_blood',ydb_blood,
        'ydb_zhiye',ydb_zhiye,
        'ydb_earn',ydb_earn,
        'ydb_prefer',ydb_prefer,
        'ydb_consume',ydb_consume,
        'ydb_day',ydb_day,
        'amtdouble',amtdouble,
        'amtlong',amtlong,
        'content',content
    )
from ydb_import_txt limit 10;

 

insert overwrite table ydbpartion 
select 'ydb_example_shu','3000w','' ,YROW(
 'phonenum',phonenum,
 'usernick',usernick,
 'ydb_sex',ydb_sex,
 'ydb_province',ydb_province,
 'ydb_grade',ydb_grade,
 'ydb_age',ydb_age,
 'ydb_blood',ydb_blood,
 'ydb_zhiye',ydb_zhiye,
 'ydb_earn',ydb_earn,
 'ydb_prefer',ydb_prefer,
 'ydb_consume',ydb_consume,
 'ydb_day',ydb_day,
 'amtdouble',amtdouble,
 'amtlong',amtlong,
 'content',content
 )
from ydb_import_txt;
insert overwrite table ydbpartion 
select 'ydb_example_shu','ydb_default_partion','' ,YROW(
 'phonenum',phonenum,
 'usernick',usernick,
 'ydb_sex',ydb_sex,
 'ydb_province',ydb_province,
 'ydb_grade',ydb_grade,
 'ydb_age',ydb_age,
 'ydb_blood',ydb_blood,
 'ydb_zhiye',ydb_zhiye,
 'ydb_earn',ydb_earn,
 'ydb_prefer',ydb_prefer,
 'ydb_consume',ydb_consume,
 'ydb_day',ydb_day,
 'amtdouble',amtdouble,
 'amtlong',amtlong,
 'content',content
 )
from ydb_import_txt;

insert overwrite table  ydbpartion 
select 'lonlattable_test', '3000w', '',
    YROW(
        'lon',r[0],
        'lat',r[1],
        'mortonhash',YMortonHash(r[0],r[1])
    )
from  ydb where YSQL('from','select LAT,LON from ydb_oribit where ydbpartion="20160619" ','segment') ;




 drop table spark_import_txt;
CREATE external  table spark_import_txt( 
phonenum bigint, usernick string, ydb_sex string, ydb_province string, ydb_grade string, ydb_age string, ydb_blood string, ydb_zhiye string, ydb_earn string, ydb_prefer string, ydb_consume string, ydb_day string, amtdouble double,amtlong int,content string
)
row format delimited fields terminated by ',' 
 stored as INPUTFORMAT 'cn.net.ycloud.ydb.handle.Ya100FixNumCombineTextInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 
 location '/data/example/spark_import_txt';
 
 
 
 drop table spark_index_ya100;
CREATE external   table spark_index_ya100( 
 phonenum bigint, usernick string, ydb_sex string,  ydb_province string, ydb_grade string, ydb_age string, ydb_blood string, ydb_zhiye string, ydb_earn string, ydb_prefer string, ydb_consume string, ydb_day string, amtdouble double,amtlong int, content string
 , ydbpartion string, ya100_pipe string
)

 ROW FORMAT SERDE 'cn.net.ycloud.ydb.handle.Ya100Serde'      
 stored as INPUTFORMAT 'cn.net.ycloud.ydb.handle.Ya100HiveTableInputFormat' OUTPUTFORMAT 'cn.net.ycloud.ydb.handle.Ya100HiveOutputFormat' 
 
 location '/data/example/spark_index_ya100'
TBLPROPERTIES(
"ya100.handler.table.name"="spark_index_ya100",
"ya100.handler.schema"="phonenum long,usernick string,ydb_sex string,ydb_province string,ydb_grade string,ydb_age string,ydb_blood string,ydb_zhiye string,ydb_earn string,ydb_prefer string,ydb_consume string,ydb_day string, amtdouble double,amtlong int,content textcjk,ydbpartion string,ya100_pipe string"
) ;

insert overwrite  table spark_index_ya100 select *,'','' from spark_import_txt ;


insert overwrite  table ydbpartion 
select 'vehiclepass', '3000w', '',
    YROW(
        'tollCode',tollCode,
        'vehiclePlate',vehiclePlate
    )
from vehiclepass_txt;


insert overwrite table ydbpartion 
select 'ydb_example_shu','test2','' ,YROW(
 'phonenum',phonenum,
 'usernick',usernick,
 'ydb_sex',ydb_sex,
 'ydb_province',ydb_province,
 'ydb_grade',ydb_grade,
 'ydb_age',ydb_age,
 'ydb_blood',ydb_blood,
 'ydb_zhiye',ydb_zhiye,
 'ydb_earn',ydb_earn,
 'ydb_prefer',ydb_prefer,
 'ydb_consume',ydb_consume,
 'ydb_day',ydb_day,
 'amtdouble',amtdouble,
 'amtlong',amtlong,
 'content',content
 )
from ydb_import_txt;
insert overwrite table ydbpartion 
select 'ydb_example_shu','test1','' ,YROW(
 'phonenum',phonenum,
 'usernick',usernick,
 'ydb_sex',ydb_sex,
 'ydb_province',ydb_province,
 'ydb_grade',ydb_grade,
 'ydb_age',ydb_age,
 'ydb_blood',ydb_blood,
 'ydb_zhiye',ydb_zhiye,
 'ydb_earn',ydb_earn,
 'ydb_prefer',ydb_prefer,
 'ydb_consume',ydb_consume,
 'ydb_day',ydb_day,
 'amtdouble',amtdouble,
 'amtlong',amtlong,
 'content',content
 )
from ydb_import_txt;


insert overwrite table ydbpartion 
select 'ydb_example_shu','3000w','' ,YROW(
 'phonenum',phonenum,
 'usernick',usernick,
 'ydb_sex',ydb_sex,
 'ydb_province',ydb_province,
 'ydb_grade',ydb_grade,
 'ydb_age',ydb_age,
 'ydb_blood',ydb_blood,
 'ydb_zhiye',ydb_zhiye,
 'ydb_earn',ydb_earn,
 'ydb_prefer',ydb_prefer,
 'ydb_consume',ydb_consume,
 'ydb_day',ydb_day,
 'amtdouble',amtdouble,
 'amtlong',amtlong,
 'content',content
 )
from ydb_import_txt;
insert overwrite table ydbpartion 
select 'ydb_example_shu','300winsert','' ,YROW(
 'phonenum',phonenum,
 'usernick',usernick,
 'ydb_sex',ydb_sex,
 'ydb_province',ydb_province,
 'ydb_grade',ydb_grade,
 'ydb_age',ydb_age,
 'ydb_blood',ydb_blood,
 'ydb_zhiye',ydb_zhiye,
 'ydb_earn',ydb_earn,
 'ydb_prefer',ydb_prefer,
 'ydb_consume',ydb_consume,
 'ydb_day',ydb_day,
 'amtdouble',amtdouble,
 'amtlong',amtlong,
 'content',content
 )
from ydb_import_txt;
insert overwrite table ydbpartion 
select 'ydb_example_shu','300winsert2','' ,YROW(
 'phonenum',phonenum,
 'usernick',usernick,
 'ydb_sex',ydb_sex,
 'ydb_province',ydb_province,
 'ydb_grade',ydb_grade,
 'ydb_age',ydb_age,
 'ydb_blood',ydb_blood,
 'ydb_zhiye',ydb_zhiye,
 'ydb_earn',ydb_earn,
 'ydb_prefer',ydb_prefer,
 'ydb_consume',ydb_consume,
 'ydb_day',ydb_day,
 'amtdouble',amtdouble,
 'amtlong',amtlong,
 'content',content
 )
from ydb_import_txt;
insert overwrite table ydbpartion 
select 'ydb_example_shu','20151011','' ,YROW(
 'phonenum',phonenum,
 'usernick',usernick,
 'ydb_sex',ydb_sex,
 'ydb_province',ydb_province,
 'ydb_grade',ydb_grade,
 'ydb_age',ydb_age,
 'ydb_blood',ydb_blood,
 'ydb_zhiye',ydb_zhiye,
 'ydb_earn',ydb_earn,
 'ydb_prefer',ydb_prefer,
 'ydb_consume',ydb_consume,
 'ydb_day',ydb_day,
 'amtdouble',amtdouble,
 'amtlong',amtlong,
 'content',content
 )
from ydb_import_txt;
insert overwrite table ydbpartion 
select 'ydb_example_shu','testbig','' ,YROW(
 'phonenum',phonenum,
 'usernick',usernick,
 'ydb_sex',ydb_sex,
 'ydb_province',ydb_province,
 'ydb_grade',ydb_grade,
 'ydb_age',ydb_age,
 'ydb_blood',ydb_blood,
 'ydb_zhiye',ydb_zhiye,
 'ydb_earn',ydb_earn,
 'ydb_prefer',ydb_prefer,
 'ydb_consume',ydb_consume,
 'ydb_day',ydb_day,
 'amtdouble',amtdouble,
 'amtlong',amtlong,
 'content',content
 )
from ydb_import_txt;


drop table ydb_more_session;
 CREATE external  table ydb_more_session( 
line string
)
partitioned by (ydbsession string)
stored as INPUTFORMAT 'cn.net.ycloud.ydb.handle.Ya100FixNumCombineTextInputFormat' OUTPUTFORMAT 'cn.net.ycloud.ydb.handle.more.YdbMoreTextOutputFormat' 
location '/data/ycloud/ydb/rawdata/ydb_more_session';


drop table ydb_page_session;
 CREATE external  table ydb_page_session( 
pagekey string,
pagevalue string
)
partitioned by (ydbsession string)
stored as INPUTFORMAT 'cn.net.ycloud.ydb.handle.Ya100FixNumCombineTextInputFormat' OUTPUTFORMAT 'cn.net.ycloud.ydb.handle.more.YdbMoreTextOutputFormat' 
location '/data/ycloud/ydb/rawdata/ydb_page_session';




insert overwrite table ydbpartion 
select 'ydb_example_shu','3000a0','' ,YROW(
 'phonenum',phonenum,
 'usernick',usernick,
 'ydb_sex',ydb_sex,
 'ydb_province',ydb_province,
 'ydb_grade',ydb_grade,
 'ydb_age',ydb_age,
 'ydb_blood',ydb_blood,
 'ydb_zhiye',ydb_zhiye,
 'ydb_earn',ydb_earn,
 'ydb_prefer',ydb_prefer,
 'ydb_consume',ydb_consume,
 'ydb_day',ydb_day,
 'amtdouble',amtdouble,
 'amtlong',amtlong,
 'content',content
 )
from ydb_import_txt;

insert overwrite table  ydbpartion 
select 'ydb_example_shu_positon', '3000w', '',
    YROW(
        'phonenum',phonenum,
        'phonenum_chepai',phonenum,
        'content',content,
        'content_pyy',content
    )
from ydb_import_txt;

drop table ydb_import_importtest;
 CREATE external  table ydb_import_importtest( 
    phonenum bigint, usernick string, ydb_sex string, ydb_province string, ydb_grade string, ydb_age string, ydb_blood string, ydb_zhiye string, ydb_earn string, ydb_prefer string, ydb_consume string, ydb_day string, amtdouble double,amtlong int,content string
)location '/data/example/ydb_import_importtest';

insert overwrite table ydb_import_importtest 
select 
    r[0] as phone,
    r[1] as usernick,
    r[2] as ydb_sex,
    r[3] as ydb_province ,
    r[4] as ydb_grade,
    r[5] as ydb_age,
    r[6] as ydb_blood,
    r[7] as ydb_zhiye,
    r[8] as ydb_earn,
    r[9] as ydb_prefer,
    r[10] as ydb_consume,
    r[11] as ydb_day,
    r[12] as amtdouble,
    r[13] as amtlong,
    r[14] as content
from 
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = "3000w" ','segment');
 
 select * from ydb_import_importtest limit 10;
 select count(*) from ydb_import_importtest limit 10;
 
 insert overwrite table ydb_import_importtest 
select * from (
    select 
        r[0] as phone,
        r[1] as usernick,
        r[2] as ydb_sex,
        r[3] as ydb_province ,
        r[4] as ydb_grade,
        r[5] as ydb_age,
        r[6] as ydb_blood,
        r[7] as ydb_zhiye,
        r[8] as ydb_earn,
        r[9] as ydb_prefer,
        r[10] as ydb_consume,
        r[11] as ydb_day,
        r[12] as amtdouble,
        r[13] as amtlong,
        r[14] as content
    from 
        ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = "3000w"   and ydbkv="export.max.return.docset.size:1000"  ','segment')
) tmp  order by rand() limit 1000;


----数据导出到YDB的其他分区里示例 
insert overwrite table ydbpartion 
select 'ydb_example_shu', 'test3', '',
    YROW(
        'phonenum',r[0],
        'usernick',r[1],
        'ydb_sex',r[2],
        'ydb_province',r[3],
        'ydb_grade',r[4],
        'ydb_age',r[5],
        'ydb_blood',r[6],
        'ydb_zhiye',r[7],
        'ydb_earn',r[8],
        'ydb_prefer',r[9],
        'ydb_consume',r[10],
        'ydb_day',r[11],
        'amtdouble',r[12],
        'amtlong',r[13],
        'content',r[14]
    )
from ydb 
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = "3000w" ','segment');

select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "test3" ','segment') 
limit 10;

select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;



 drop table spark_raw;
 drop table spark_parquet;
 drop table spark_txt;
 drop table spark_ya100;

 
 
CREATE external  table spark_raw( 
phonenum bigint, usernick string, ydb_sex string, ydb_province string, ydb_grade string, ydb_age string, ydb_blood string, ydb_zhiye string, ydb_earn string, ydb_prefer string, ydb_consume string, ydb_day string, amtdouble double,amtlong int,content string
)
row format delimited fields terminated by ',' 
stored as INPUTFORMAT 'cn.net.ycloud.ydb.handle.Ya100FixNumCombineTextInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 
location '/data/example/proformance';




CREATE external  table spark_parquet( 
phonenum bigint, usernick string, ydb_sex string, ydb_province string, ydb_grade string, ydb_age string, ydb_blood string, ydb_zhiye string, ydb_earn string, ydb_prefer string, ydb_consume string, ydb_day string, amtdouble double,amtlong int,content string
)STORED AS PARQUET
location '/data/example/spark_p_parquet';

CREATE external  table spark_txt( 
phonenum bigint, usernick string, ydb_sex string, ydb_province string, ydb_grade string, ydb_age string, ydb_blood string, ydb_zhiye string, ydb_earn string, ydb_prefer string, ydb_consume string, ydb_day string, amtdouble double,amtlong int,content string
)location '/data/example/spark_p_txt';
 
CREATE external   table spark_ya100( 
 phonenum bigint, usernick string, ydb_sex string,  ydb_province string, ydb_grade string, ydb_age string, ydb_blood string, ydb_zhiye string, ydb_earn string, ydb_prefer string, ydb_consume string, ydb_day string, amtdouble double,amtlong int, content string
 , ydbpartion string, ya100_pipe string
) 
STORED BY 'cn.net.ycloud.ydb.handle.Ya100StorageHandler'
location '/data/example/ya100_index'
TBLPROPERTIES(
"ya100.handler.table.name"="spark_ya100",
"ya100.handler.schema"="phonenum long,usernick string,ydb_sex string,ydb_province string,ydb_grade string,ydb_age string,ydb_blood string,ydb_zhiye string,ydb_earn string,ydb_prefer string,ydb_consume string,ydb_day string, amtdouble double,amtlong int,content textcjk,ydbpartion string,ya100_pipe string"
) ;


insert overwrite  table spark_txt select * from spark_raw;
insert overwrite  table spark_parquet select * from spark_raw;
insert overwrite  table spark_ya100 select *,2,1 from spark_raw ;


drop table ya100_all_type_raw;
CREATE external  table ya100_all_type_raw( 
 c1_byte TINYINT,
 c2_byte TINYINT,
 c1_short SMALLINT,
 c2_short SMALLINT,
 c1_int int,
 c2_int int,
 c3_int int,
 c4_int int,
 c1_long BIGINT,
 c2_long BIGINT,
 c3_long BIGINT,
 c4_long BIGINT,
 c1_float float,
 c2_float float,
 c3_float float,
 c4_float float,
 c1_double double,
 c2_double double,
 c3_double double,
 c4_double double,
 c1_string string,
 c2_string string,
 c3_string string,
 c4_string string,
 c1_text string
)
row format delimited fields terminated by ',' 
stored as INPUTFORMAT 'cn.net.ycloud.ydb.handle.Ya100FixNumCombineTextInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 
location '/data/example/ya100_all_type_raw';

drop table ya100_all_type;
create external table ya100_all_type(
 c1_byte TINYINT,
 c2_byte TINYINT,
 c1_short SMALLINT,
 c2_short SMALLINT,
 c1_int int,
 c2_int int,
 c3_int int,
 c4_int int,
 c1_long BIGINT,
 c2_long BIGINT,
 c3_long BIGINT,
 c4_long BIGINT,
 c1_float float,
 c2_float float,
 c3_float float,
 c4_float float,
 c1_double double,
 c2_double double,
 c3_double double,
 c4_double double,
 c1_string string,
 c2_string string,
 c3_string string,
 c4_string string,
 c1_text string,
 ydbpartion string, ya100_pipe string
 )STORED BY 'cn.net.ycloud.ydb.handle.Ya100StorageHandler'
location '/data/example/ya100_all_type_index'
TBLPROPERTIES(
"ya100.handler.table.name"="ya100_all_type",
"ya100.handler.schema"="c1_byte int,c2_byte int,c1_short int,c2_short int,c1_int int,c2_int int,c3_int int,c4_int int,c1_long long,c2_long long,c3_long long,c4_long long,c1_float float,c2_float float,c3_float float,c4_float float,c1_double double,c2_double double,c3_double double,c4_double double,c1_string string,c2_string string,c3_string string,c4_string string,c1_text textcjk,ydbpartion string,ya100_pipe string"
);

insert overwrite  table ya100_all_type select *,2,1 from ya100_all_type_raw;



insert into  table ydbpartion 
select 'ydb_example_shu_ik', '3000w', '',
    YROW(
        'phonenum',phonenum,
        'usernick',usernick,
        'ydb_sex',ydb_sex,
        'ydb_province',ydb_province,
        'ydb_grade',ydb_grade,
        'ydb_age',ydb_age,
        'ydb_blood',ydb_blood,
        'ydb_zhiye',ydb_zhiye,
        'ydb_earn',ydb_earn,
        'ydb_prefer',ydb_prefer,
        'ydb_consume',ydb_consume,
        'ydb_day',ydb_day,
        'amtdouble',amtdouble,
        'amtlong',amtlong,
        'content',content
    )
from ydb_import_txt;




EOF


source ${PARENT_DIR_YA100}/bin/sql.sh -ff /tmp/ydb.sql
