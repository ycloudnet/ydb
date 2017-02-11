


set ya100.spark.filter.spark_ya100=
@session@
set ya100.spark.combine.spark_ya100=*
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select Ycount('*',ya100_pipe) from spark_ya100 limit 10;
select count(*) from spark_txt limit 10;




set ya100.spark.filter.spark_ya100= amtlong like '([1095 TO 1100] )'
@session@
set ya100.spark.combine.spark_ya100=*
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select Ycount('*',ya100_pipe) from spark_ya100 limit 10;

select count(*) from spark_txt where amtlong>=1095 and amtlong<=1100 limit 10;




set ya100.spark.filter.spark_ya100= content='黑牛核桃芝麻糊'
@session@
set ya100.spark.combine.spark_ya100=*
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select Ycount('*',ya100_pipe) from spark_ya100 limit 10;
select count(*) from spark_txt where content like '%黑牛核桃芝麻糊%'  limit 10;


set ya100.spark.filter.spark_ya100= ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and ydb_day='20160216'
@session@
set ya100.spark.combine.spark_ya100=*
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select Ycount('*',ya100_pipe) from spark_ya100 limit 10;
select count(*) from spark_txt where ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and ydb_day='20160216' limit 10;





set ya100.spark.filter.spark_ya100=
@session@
set ya100.spark.combine.spark_ya100=amtlong,amtdouble
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select Ycount('amtdouble',ya100_pipe),Ysum('amtdouble',ya100_pipe) ,Yavg('amtdouble',ya100_pipe),Ymax('amtdouble',ya100_pipe),Ymin('amtdouble',ya100_pipe),Ycount('amtlong',ya100_pipe) ,Ysum('amtlong',ya100_pipe) ,Yavg('amtlong',ya100_pipe), Ymax('amtlong',ya100_pipe), Ymin('amtlong',ya100_pipe)  from spark_ya100 limit 10;

select count(amtdouble),sum(amtdouble) ,avg(amtdouble),max(amtdouble),min(amtdouble),count(amtlong),sum(amtlong) ,avg(amtlong),max(amtlong),min(amtlong) from spark_txt  limit 10; 




set ya100.spark.filter.spark_ya100=
@session@
set ya100.spark.combine.spark_ya100=ydb_sex
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select Ycount('ydb_sex',ya100_pipe), Ymaxstring('ydb_sex',ya100_pipe), Yminstring('ydb_sex',ya100_pipe)  from spark_ya100  limit 10;
select count(ydb_sex),max(ydb_sex),min(ydb_sex) from spark_txt   limit 10; 




set ya100.spark.filter.spark_ya100=
@session@
set ya100.spark.combine.spark_ya100=ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtlong
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select Ycount('ydb_sex',ya100_pipe),Ycount('ydb_province',ya100_pipe),Ycount('ydb_grade',ya100_pipe),Ycount('ydb_age',ya100_pipe),Ycount('ydb_blood',ya100_pipe),Ycount('ydb_zhiye',ya100_pipe),Ycount('ydb_earn',ya100_pipe),Ycount('ydb_prefer',ya100_pipe),Ycount('ydb_consume',ya100_pipe),Ycount('ydb_day',ya100_pipe),Ycount('amtlong',ya100_pipe), Ymaxstring('ydb_sex',ya100_pipe),Ymaxstring('ydb_province',ya100_pipe),Ymaxstring('ydb_grade',ya100_pipe),Ymaxstring('ydb_age',ya100_pipe),Ymaxstring('ydb_blood',ya100_pipe),Ymaxstring('ydb_zhiye',ya100_pipe),Ymaxstring('ydb_earn',ya100_pipe),Ymaxstring('ydb_prefer',ya100_pipe),Ymaxstring('ydb_consume',ya100_pipe),Ymaxstring('ydb_day',ya100_pipe),Ymax('amtlong',ya100_pipe) from spark_ya100  limit 10;
select count(ydb_sex),count(ydb_province),count(ydb_grade),count(ydb_age),count(ydb_blood),count(ydb_zhiye),count(ydb_earn),count(ydb_prefer),count(ydb_consume),count(ydb_day),count(amtlong), max(ydb_sex),max(ydb_province),max(ydb_grade),max(ydb_age),max(ydb_blood),max(ydb_zhiye),max(ydb_earn),max(ydb_prefer),max(ydb_consume),max(ydb_day),max(amtlong) from spark_txt  limit 10; 



set ya100.spark.filter.spark_ya100=
@session@
set ya100.spark.combine.spark_ya100=*
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select ydb_sex,Ycount('*',ya100_pipe) as cnt from spark_ya100 group by ydb_sex order by cnt,ydb_sex limit 10;
select ydb_sex,count(*) as cnt from spark_txt  group by ydb_sex  order by cnt,ydb_sex  limit 10;


set ya100.spark.filter.spark_ya100=
@session@
set ya100.spark.combine.spark_ya100=*
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select ydb_sex, ydb_province,Ycount('*',ya100_pipe) as cnt from spark_ya100 group by ydb_sex, ydb_province  order by cnt desc,ydb_sex, ydb_province limit 10;
select ydb_sex, ydb_province,count(*) as cnt from spark_txt group by ydb_sex, ydb_province order by cnt desc,ydb_sex, ydb_province limit 10; 



set ya100.spark.filter.spark_ya100=
@session@
set ya100.spark.combine.spark_ya100=*,amtlong
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select ydb_sex, ydb_province,Ycount('*',ya100_pipe),Ycount('amtlong',ya100_pipe),Ysum('amtlong',ya100_pipe) as cnt from spark_ya100  group by ydb_sex, ydb_province  order by cnt desc,ydb_sex, ydb_province limit 10;
select ydb_sex, ydb_province,count(*),count(amtlong),sum(amtlong) as cnt from spark_txt  group by ydb_sex, ydb_province order by cnt desc,ydb_sex, ydb_province limit 10; 



set ya100.spark.filter.spark_ya100=
@session@
set ya100.spark.combine.spark_ya100=ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtlong
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select ydb_sex,ydb_province,ydb_grade, Ymaxstring('ydb_age',ya100_pipe),Ymaxstring('ydb_blood',ya100_pipe),Ymaxstring('ydb_zhiye',ya100_pipe),Ymaxstring('ydb_earn',ya100_pipe),Ymaxstring('ydb_prefer',ya100_pipe),Ymaxstring('ydb_consume',ya100_pipe),Ymaxstring('ydb_day',ya100_pipe),Ysum('amtlong',ya100_pipe) as cnt from spark_ya100 group by ydb_sex,ydb_province,ydb_grade order by cnt desc,ydb_sex,ydb_province,ydb_grade limit 10;
select ydb_sex,ydb_province,ydb_grade, max(ydb_age),max(ydb_blood),max(ydb_zhiye),max(ydb_earn),max(ydb_prefer),max(ydb_consume),max(ydb_day),sum(amtlong) as cnt from spark_txt group by ydb_sex,ydb_province,ydb_grade order by cnt desc,ydb_sex,ydb_province,ydb_grade limit 10; 



set ya100.spark.filter.spark_ya100=
@session@
set ya100.spark.combine.spark_ya100=
@session@
set ya100.spark.top10000.spark_ya100=usernick desc,amtdouble desc limit 10
@session@
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_ya100 order  by usernick desc,amtdouble desc,phonenum,usernick limit 10; 
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_txt order by usernick desc,amtdouble desc,phonenum,usernick limit 10;





set ya100.spark.filter.spark_ya100=
@session@
set ya100.spark.combine.spark_ya100=
@session@
set ya100.spark.top10000.spark_ya100=amtdouble asc,amtlong desc limit 10
@session@
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_ya100 order by amtdouble asc,amtlong desc,phonenum,usernick limit 10; 
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_txt order by amtdouble asc,amtlong desc,phonenum,usernick limit 10;



set ya100.spark.filter.spark_ya100=
@session@
set ya100.spark.combine.spark_ya100=
@session@
set ya100.spark.top10000.spark_ya100=phonenum asc,amtlong desc limit 10
@session@
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_ya100 order by phonenum asc,amtlong desc,phonenum,usernick limit 10; 
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_txt order by phonenum asc,amtlong desc,phonenum,usernick limit 10;



set ya100.spark.filter.spark_ya100=content='黑牛核桃芝麻糊'
@session@
set ya100.spark.combine.spark_ya100=ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtlong
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select Ycount('ydb_sex',ya100_pipe),Ycount('ydb_province',ya100_pipe),Ycount('ydb_grade',ya100_pipe),Ycount('ydb_age',ya100_pipe),Ycount('ydb_blood',ya100_pipe),Ycount('ydb_zhiye',ya100_pipe),Ycount('ydb_earn',ya100_pipe),Ycount('ydb_prefer',ya100_pipe),Ycount('ydb_consume',ya100_pipe),Ycount('ydb_day',ya100_pipe),Ycount('amtlong',ya100_pipe), Ymaxstring('ydb_sex',ya100_pipe),Ymaxstring('ydb_province',ya100_pipe),Ymaxstring('ydb_grade',ya100_pipe),Ymaxstring('ydb_age',ya100_pipe),Ymaxstring('ydb_blood',ya100_pipe),Ymaxstring('ydb_zhiye',ya100_pipe),Ymaxstring('ydb_earn',ya100_pipe),Ymaxstring('ydb_prefer',ya100_pipe),Ymaxstring('ydb_consume',ya100_pipe),Ymaxstring('ydb_day',ya100_pipe),Ymax('amtlong',ya100_pipe) from spark_ya100  limit 10;
select count(ydb_sex),count(ydb_province),count(ydb_grade),count(ydb_age),count(ydb_blood),count(ydb_zhiye),count(ydb_earn),count(ydb_prefer),count(ydb_consume),count(ydb_day),count(amtlong), max(ydb_sex),max(ydb_province),max(ydb_grade),max(ydb_age),max(ydb_blood),max(ydb_zhiye),max(ydb_earn),max(ydb_prefer),max(ydb_consume),max(ydb_day),max(amtlong) from spark_txt where content like '%黑牛核桃芝麻糊%'  limit 10; 



set ya100.spark.filter.spark_ya100=content='黑牛核桃芝麻糊'
@session@
set ya100.spark.combine.spark_ya100=ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtlong
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select ydb_sex,ydb_province,ydb_grade, Ymaxstring('ydb_age',ya100_pipe),Ymaxstring('ydb_blood',ya100_pipe),Ymaxstring('ydb_zhiye',ya100_pipe),Ymaxstring('ydb_earn',ya100_pipe),Ymaxstring('ydb_prefer',ya100_pipe),Ymaxstring('ydb_consume',ya100_pipe),Ymaxstring('ydb_day',ya100_pipe),Ysum('amtlong',ya100_pipe) as cnt from spark_ya100 group by ydb_sex,ydb_province,ydb_grade order by cnt desc,ydb_sex,ydb_province,ydb_grade limit 10;
select ydb_sex,ydb_province,ydb_grade, max(ydb_age),max(ydb_blood),max(ydb_zhiye),max(ydb_earn),max(ydb_prefer),max(ydb_consume),max(ydb_day),sum(amtlong) as cnt from spark_txt where content like '%黑牛核桃芝麻糊%'  group by ydb_sex,ydb_province,ydb_grade order by cnt desc,ydb_sex,ydb_province,ydb_grade limit 10; 



set ya100.spark.filter.spark_ya100=content='黑牛核桃芝麻糊'
@session@
set ya100.spark.combine.spark_ya100=
@session@
set ya100.spark.top10000.spark_ya100=amtdouble asc,amtlong desc limit 10
@session@
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_ya100 order by amtdouble asc,amtlong desc,phonenum,usernick limit 10; 
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_txt where content like '%黑牛核桃芝麻糊%'  order by amtdouble asc,amtlong desc,phonenum,usernick limit 10;


set ya100.spark.filter.spark_ya100=content='黑牛核桃芝麻糊'
@session@
set ya100.spark.combine.spark_ya100=*,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtlong
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select phonenum,Ycount('*',ya100_pipe), Ymaxstring('ydb_age',ya100_pipe),Ymaxstring('ydb_blood',ya100_pipe),Ymaxstring('ydb_zhiye',ya100_pipe),Ymaxstring('ydb_earn',ya100_pipe),Ymaxstring('ydb_prefer',ya100_pipe),Ymaxstring('ydb_consume',ya100_pipe),Ymaxstring('ydb_day',ya100_pipe),Ysum('amtlong',ya100_pipe) as cnt from spark_ya100 group by phonenum order by cnt desc,phonenum limit 10;
select phonenum,count(*),max(ydb_age),max(ydb_blood),max(ydb_zhiye),max(ydb_earn),max(ydb_prefer),max(ydb_consume),max(ydb_day),sum(amtlong) as cnt from spark_txt where content like '%黑牛核桃芝麻糊%' group by phonenum order by cnt desc,phonenum limit 10; 




set ya100.spark.filter.spark_ya100=content='黑牛核桃芝麻糊'
@session@
set ya100.spark.combine.spark_ya100=*,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtlong
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select usernick, Ycount('*',ya100_pipe),Ymaxstring('ydb_age',ya100_pipe),Ymaxstring('ydb_blood',ya100_pipe),Ymaxstring('ydb_zhiye',ya100_pipe),Ymaxstring('ydb_earn',ya100_pipe),Ymaxstring('ydb_prefer',ya100_pipe),Ymaxstring('ydb_consume',ya100_pipe),Ymaxstring('ydb_day',ya100_pipe),Ysum('amtlong',ya100_pipe) as cnt from spark_ya100 group by usernick order by cnt desc,usernick limit 10;
select usernick,count(*), max(ydb_age),max(ydb_blood),max(ydb_zhiye),max(ydb_earn),max(ydb_prefer),max(ydb_consume),max(ydb_day),sum(amtlong) as cnt from spark_txt where content like '%黑牛核桃芝麻糊%' group by usernick order by cnt desc,usernick limit 10; 


set ya100.spark.filter.spark_ya100=content='黑牛核桃芝麻糊'
@session@
set ya100.spark.combine.spark_ya100=*,phonenum,usernick
@session@
set ya100.spark.top10000.spark_ya100=
@session@
select Ycount('*',ya100_pipe),Ycount('phonenum',ya100_pipe),Ymax('phonenum',ya100_pipe),Ymin('phonenum',ya100_pipe),Ycount('usernick',ya100_pipe) , Ymaxstring('usernick',ya100_pipe), Yminstring('usernick',ya100_pipe)  from spark_ya100 limit 10;
select count(*),count(phonenum),max(phonenum),min(phonenum),count(usernick),max(usernick),min(usernick) from spark_txt where content like '%黑牛核桃芝麻糊%' limit 10; 




set ya100.spark.filter.ya100_all_type=
@session@
set ya100.spark.combine.ya100_all_type=*
@session@
set ya100.spark.top10000.ya100_all_type=
@session@
select Ycount('*',ya100_pipe) from ya100_all_type limit 10;
select count(*) from ya100_all_type_raw limit 10;





set ya100.spark.filter.ya100_all_type=
@session@
set ya100.spark.combine.ya100_all_type=*,c1_double,c1_float,c1_long,c1_int,c1_short,c1_byte
@session@
set ya100.spark.top10000.ya100_all_type=
@session@
select 
Ycount('*',ya100_pipe),
Ycount('c1_double',ya100_pipe),Ysum('c1_double',ya100_pipe) ,Yavg('c1_double',ya100_pipe),Ymax('c1_double',ya100_pipe),Ymin('c1_double',ya100_pipe),
Ycount('c1_float',ya100_pipe),Ysum('c1_float',ya100_pipe) ,Yavg('c1_float',ya100_pipe),Ymax('c1_float',ya100_pipe),Ymin('c1_float',ya100_pipe),
Ycount('c1_long',ya100_pipe),Ysum('c1_long',ya100_pipe) ,Yavg('c1_long',ya100_pipe),Ymax('c1_long',ya100_pipe),Ymin('c1_long',ya100_pipe),
Ycount('c1_int',ya100_pipe),Ysum('c1_int',ya100_pipe) ,Yavg('c1_int',ya100_pipe),Ymax('c1_int',ya100_pipe),Ymin('c1_int',ya100_pipe),
Ycount('c1_short',ya100_pipe),Ysum('c1_short',ya100_pipe) ,Yavg('c1_short',ya100_pipe),Ymax('c1_short',ya100_pipe),Ymin('c1_short',ya100_pipe),
Ycount('c1_byte',ya100_pipe),Ysum('c1_byte',ya100_pipe) ,Yavg('c1_byte',ya100_pipe),Ymax('c1_byte',ya100_pipe),Ymin('c1_byte',ya100_pipe)
 from ya100_all_type limit 10;
 
 select count(*),count(c1_double),sum(c1_double),avg(c1_double),max(c1_double),min(c1_double)
,count(c1_float),sum(c1_float),avg(c1_float),max(c1_float),min(c1_float)
,count(c1_long),sum(c1_long),avg(c1_long),max(c1_long),min(c1_long)
,count(c1_int),sum(c1_int),avg(c1_int),max(c1_int),min(c1_int)
,count(c1_short),sum(c1_short),avg(c1_short),max(c1_short),min(c1_short)
,count(c1_byte),sum(c1_byte),avg(c1_byte),max(c1_byte),min(c1_byte)
 from ya100_all_type_raw limit 10;

 
 
 
 
 
 
 
 set ya100.spark.filter.ya100_all_type=
 @session@
set ya100.spark.combine.ya100_all_type=*
@session@
set ya100.spark.top10000.ya100_all_type=
@session@
select c1_string,c1_double,Ycount('*',ya100_pipe) as cnt from ya100_all_type group by c1_string,c1_double order by cnt desc,c1_string,c1_double limit 10;

select c1_string,c1_double,count(*) as cnt from ya100_all_type_raw group by c1_string,c1_double order by cnt desc,c1_string,c1_double limit 10;


set ya100.spark.filter.ya100_all_type=
 @session@
set ya100.spark.combine.ya100_all_type=*,c2_short,c1_short
 @session@
set ya100.spark.top10000.ya100_all_type=
 @session@
select c1_byte,c2_byte,Ycount('*',ya100_pipe) as cnt,
Ycount('c1_short',ya100_pipe),Ysum('c1_short',ya100_pipe) ,Yavg('c1_short',ya100_pipe),Ymax('c1_short',ya100_pipe),Ymin('c1_short',ya100_pipe),
Ycount('c2_short',ya100_pipe),Ysum('c2_short',ya100_pipe) ,Yavg('c2_short',ya100_pipe),Ymax('c2_short',ya100_pipe),Ymin('c2_short',ya100_pipe)
from ya100_all_type group by c1_byte,c2_byte order by cnt desc,c1_byte,c2_byte limit 10;

select c1_byte,c2_byte,count(*) as cnt,
count(c1_short),sum(c1_short),avg(c1_short),max(c1_short),min(c1_short)
,count(c2_short),sum(c2_short),avg(c2_short),max(c2_short),min(c2_short)

from ya100_all_type_raw group by c1_byte,c2_byte order by cnt desc,c1_byte,c2_byte limit 10;


set ya100.spark.filter.ya100_all_type=
@session@
set ya100.spark.combine.ya100_all_type=
@session@
set ya100.spark.top10000.ya100_all_type=c1_short asc,c4_double desc,c4_string desc,c4_long desc limit 10
@session@
select c1_byte,c2_byte,c1_short,c2_short,c1_int,c2_int,c3_int,c4_int,c1_long,c2_long,c3_long,c4_long,c1_float,c2_float,c3_float,c4_float,c1_double,c2_double,c3_double,c4_double,c1_string,c2_string,c3_string,c4_string,c1_text from ya100_all_type order  by c1_short asc,c4_double desc,c4_string desc,c4_long desc limit 10; 

select c1_byte,c2_byte,c1_short,c2_short,c1_int,c2_int,c3_int,c4_int,c1_long,c2_long,c3_long,c4_long,c1_float,c2_float,c3_float,c4_float,c1_double,c2_double,c3_double,c4_double,c1_string,c2_string,c3_string,c4_string,c1_text from ya100_all_type_raw order  by c1_short asc,c4_double desc,c4_string desc,c4_long desc limit 10; 


