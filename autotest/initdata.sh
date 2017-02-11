#!/usr/bin/env bash
. ~/.bashrc
export PARENT_DIR_YA100="$(cd "`dirname "$0"`"/..; pwd)"
source ${PARENT_DIR_YA100}/conf/ya100_env.sh


sh ./initdata_quick.sh


 cat << EOF >/tmp/ydb_init.sql

 
 
insert overwrite table ydbpartion 
select 'ydb_example_shu','3000a1','' ,YROW(
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
select 'ydb_example_shu','3000a2','' ,YROW(
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
select 'ydb_example_shu','3000a3','' ,YROW(
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
select 'ydb_example_shu','3000a4','' ,YROW(
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
select 'ydb_example_shu','3000a5','' ,YROW(
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
select 'ydb_example_shu','3000a6','' ,YROW(
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
select 'ydb_example_shu','3000a7','' ,YROW(
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
select 'ydb_example_shu','3000a8','' ,YROW(
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
select 'ydb_example_shu','3000a9','' ,YROW(
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
select 'ydb_example_shu','3000a10','' ,YROW(
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
select 'ydb_example_shu','3000a11','' ,YROW(
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
select 'ydb_example_shu','3000a12','' ,YROW(
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
select 'ydb_example_shu','3000a13','' ,YROW(
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
select 'ydb_example_shu','3000a14','' ,YROW(
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
select 'ydb_example_shu','3000a15','' ,YROW(
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
select 'ydb_example_shu','3000a16','' ,YROW(
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
select 'ydb_example_shu','3000a17','' ,YROW(
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
select 'ydb_example_shu','3000a18','' ,YROW(
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
select 'ydb_example_shu','3000a19','' ,YROW(
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
select 'ydb_example_shu','3000b0','' ,YROW(
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
select 'ydb_example_shu','3000b1','' ,YROW(
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
select 'ydb_example_shu','3000b2','' ,YROW(
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
select 'ydb_example_shu','3000b3','' ,YROW(
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
select 'ydb_example_shu','3000b4','' ,YROW(
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
select 'ydb_example_shu','3000b5','' ,YROW(
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
select 'ydb_example_shu','3000b6','' ,YROW(
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
select 'ydb_example_shu','3000b7','' ,YROW(
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
select 'ydb_example_shu','3000b8','' ,YROW(
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
select 'ydb_example_shu','3000b9','' ,YROW(
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
select 'ydb_example_shu','3000b10','' ,YROW(
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
select 'ydb_example_shu','3000b11','' ,YROW(
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
select 'ydb_example_shu','3000b12','' ,YROW(
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
select 'ydb_example_shu','3000b13','' ,YROW(
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
select 'ydb_example_shu','3000b14','' ,YROW(
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
select 'ydb_example_shu','3000b15','' ,YROW(
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
select 'ydb_example_shu','3000b16','' ,YROW(
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
select 'ydb_example_shu','3000b17','' ,YROW(
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
select 'ydb_example_shu','3000b18','' ,YROW(
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
select 'ydb_example_shu','3000b19','' ,YROW(
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
select 'ydb_example_shu','3000w0','' ,YROW(
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
select 'ydb_example_shu','3000w1','' ,YROW(
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
select 'ydb_example_shu','3000w2','' ,YROW(
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
select 'ydb_example_shu','3000w3','' ,YROW(
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
select 'ydb_example_shu','3000w4','' ,YROW(
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
select 'ydb_example_shu','3000w5','' ,YROW(
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
select 'ydb_example_shu','3000w6','' ,YROW(
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
select 'ydb_example_shu','3000w7','' ,YROW(
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
select 'ydb_example_shu','3000w8','' ,YROW(
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
select 'ydb_example_shu','3000w9','' ,YROW(
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
select 'ydb_example_shu','3000w10','' ,YROW(
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
select 'ydb_example_shu','3000w11','' ,YROW(
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
select 'ydb_example_shu','3000w12','' ,YROW(
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
select 'ydb_example_shu','3000w13','' ,YROW(
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
select 'ydb_example_shu','3000w14','' ,YROW(
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
select 'ydb_example_shu','3000w15','' ,YROW(
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
select 'ydb_example_shu','3000w16','' ,YROW(
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
select 'ydb_example_shu','3000w17','' ,YROW(
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
select 'ydb_example_shu','3000w18','' ,YROW(
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
select 'ydb_example_shu','3000w19','' ,YROW(
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


source ${PARENT_DIR_YA100}/bin/sql.sh -ff /tmp/ydb_init.sql
