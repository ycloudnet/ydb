

select Ycount('*',ya100_pipe) from spark_index_ya100 where Ycombine('spark_index_ya100','*',ya100_pipe) limit 10;
select count(*) from spark_import_txt limit 10;


select ydb_province,Ycount('*',ya100_pipe) as cnt from spark_index_ya100 
where Yfilter('spark_index_ya100','ydb_province="辽宁" or ydb_province="山东" or ydb_province="浙江"',ya100_pipe) 
and Ycombine('spark_index_ya100','*',ya100_pipe) 
group by ydb_province order by cnt,ydb_province limit 10;
select ydb_province,count(*) as cnt from spark_import_txt where ydb_province='辽宁' or ydb_province='山东' or ydb_province='浙江' group by ydb_province order by cnt,ydb_province limit 10;


select Ycount('*',ya100_pipe) from spark_index_ya100 
where Yfilter('spark_index_ya100','ydb_sex="女" and ydb_grade="本科" and (ydb_age="20到30岁" or ydb_blood="O") and  (amtlong like "([3000 TO 4000] )")',ya100_pipe)
and Ycombine('spark_index_ya100','*',ya100_pipe)
 limit 100;
 select count(*) from spark_import_txt where ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and  amtlong>=3000 and amtlong<=4000 limit 100;
 
 
 select Ycount('*',ya100_pipe) ,Ysum('amtdouble', ya100_pipe),Yavg('amtdouble', ya100_pipe) ,Ymin('amtdouble', ya100_pipe) ,Ymax('amtdouble', ya100_pipe) ,Ymaxstring('ydb_province', ya100_pipe),Yminstring('ydb_province', ya100_pipe) from spark_index_ya100
where  Ycombine('spark_index_ya100','*,amtdouble,ydb_province',ya100_pipe)
  limit 10;
  select count(*),sum(amtdouble),avg(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from spark_import_txt;
  
  
  select ydb_sex, ydb_province,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from spark_index_ya100 
where Ycombine('spark_index_ya100','*,amtdouble',ya100_pipe) 
group by ydb_sex, ydb_province  order by cnt desc,ydb_sex, ydb_province limit 10;
select ydb_sex,ydb_province,count(*),count(amtdouble) as cnt,sum(amtdouble) from spark_import_txt group by ydb_sex, ydb_province  order by cnt desc,ydb_sex, ydb_province limit 10;


select ydb_sex,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from spark_index_ya100 
where Ycombine('spark_index_ya100','*,amtdouble',ya100_pipe) 
group by ydb_sex  order by cnt desc,ydb_sex limit 10;

select ydb_sex,count(*),count(amtdouble) as cnt,sum(amtdouble) from spark_import_txt group by ydb_sex  order by cnt desc,ydb_sex limit 10;


select ydb_sex, phonenum,amtlong,amtdouble from spark_index_ya100 where Ytop10000('spark_index_ya100','amtdouble desc ,amtlong limit 10',ya100_pipe) order by amtdouble desc ,amtlong,phonenum  limit 10;
select ydb_sex, phonenum,amtlong,amtdouble from spark_import_txt   order by amtdouble desc ,amtlong,phonenum  limit 10;




















select Ycount('*',ya100_pipe) from spark_index_ya100 where Ycombine('spark_index_ya100','*',ya100_pipe) limit 10;
select count(*) from spark_import_txt limit 10;


select ydb_province,Ycount('*',ya100_pipe) as cnt from spark_index_ya100 
where Yfilter('spark_index_ya100','ydb_province=\'辽宁\' or ydb_province=\'山东\' or ydb_province=\'浙江\'',ya100_pipe) 
and Ycombine('spark_index_ya100','*',ya100_pipe) 
group by ydb_province order by cnt limit 10;
select ydb_province,count(*) as cnt from spark_import_txt where ydb_province='辽宁' or ydb_province='山东' or ydb_province='浙江' group by ydb_province order by cnt limit 10;


select Ycount('*',ya100_pipe) from spark_index_ya100 
where Yfilter('spark_index_ya100','ydb_sex=\'女\' and ydb_grade=\'本科\' and (ydb_age=\'20到30岁\' or ydb_blood=\'O\') and  (amtlong like \'([3000 TO 4000] )\')',ya100_pipe)
and Ycombine('spark_index_ya100','*',ya100_pipe)
 limit 100;
 select count(*) from spark_import_txt where ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and  amtlong>=3000 and amtlong<=4000 limit 100;
 
 
 select Ycount('*',ya100_pipe) ,Ysum('amtdouble', ya100_pipe),Yavg('amtdouble', ya100_pipe) ,Ymin('amtdouble', ya100_pipe) ,Ymax('amtdouble', ya100_pipe) ,Ymaxstring('ydb_province', ya100_pipe),Yminstring('ydb_province', ya100_pipe) from spark_index_ya100
where  Ycombine('spark_index_ya100','*,amtdouble,ydb_province',ya100_pipe)
  limit 10;
  select count(*),sum(amtdouble),avg(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from spark_import_txt;
  

  
select ydb_sex, ydb_province,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from spark_index_ya100 
where Ycombine('spark_index_ya100','*,amtdouble',ya100_pipe) 
group by ydb_sex, ydb_province  order by cnt desc limit 10;
select ydb_sex,ydb_province,count(*),count(amtdouble) as cnt,sum(amtdouble) from spark_import_txt group by ydb_sex, ydb_province  order by cnt desc limit 10;


select ydb_sex,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from spark_index_ya100 
where Ycombine('spark_index_ya100','*,amtdouble',ya100_pipe) 
group by ydb_sex  order by cnt desc limit 10;

select ydb_sex,count(*),count(amtdouble) as cnt,sum(amtdouble) from spark_import_txt group by ydb_sex  order by cnt desc limit 10;


select ydb_sex, phonenum,amtlong,amtdouble from spark_index_ya100 where Ytop10000('spark_index_ya100','amtdouble desc ,amtlong limit 10',ya100_pipe) order by amtdouble desc ,amtlong  limit 10;
select ydb_sex, phonenum,amtlong,amtdouble from spark_import_txt   order by amtdouble desc ,amtlong  limit 10;








set ya100.spark.filter.spark_index_ya100=
@session@
set ya100.spark.combine.spark_index_ya100=*
@session@
set ya100.spark.top10000.spark_index_ya100=
@session@
select Ycount('*',ya100_pipe) from spark_index_ya100  limit 10;
select count(*) from spark_import_txt limit 10;


set ya100.spark.filter.spark_index_ya100= ydb_province='辽宁' or ydb_province='山东' or ydb_province='浙江'
@session@
set ya100.spark.combine.spark_index_ya100=*
@session@
set ya100.spark.top10000.spark_index_ya100=
@session@
select ydb_province,Ycount('*',ya100_pipe)  as cnt from spark_index_ya100  group by ydb_province order by cnt limit 100;

select ydb_province,count(*) as cnt from spark_import_txt where ydb_province='辽宁' or ydb_province='山东' or ydb_province='浙江' group by ydb_province order by cnt limit 10;


set ya100.spark.filter.spark_index_ya100= ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and  (amtlong like '([3000 TO 4000] )') 
@session@
set ya100.spark.combine.spark_index_ya100=*
@session@
set ya100.spark.top10000.spark_index_ya100=
@session@
select Ycount('*',ya100_pipe) from spark_index_ya100  limit 100;

 select count(*) from spark_import_txt where ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and  amtlong>=3000 and amtlong<=4000 limit 100;
 
 
 set ya100.spark.filter.spark_index_ya100=
 @session@
set ya100.spark.combine.spark_index_ya100=*,amtdouble,ydb_province
@session@
set ya100.spark.top10000.spark_index_ya100=
@session@
select Ycount('*',ya100_pipe) ,Ysum('amtdouble', ya100_pipe),Yavg('amtdouble', ya100_pipe) ,Ymin('amtdouble', ya100_pipe) ,Ymax('amtdouble', ya100_pipe) ,Ymaxstring('ydb_province', ya100_pipe),Yminstring('ydb_province', ya100_pipe) from spark_index_ya100  limit 10;

  select count(*),sum(amtdouble),avg(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from spark_import_txt;
  

  
set ya100.spark.filter.spark_index_ya100=
@session@
set ya100.spark.combine.spark_index_ya100=*,amtdouble
@session@
set ya100.spark.top10000.spark_index_ya100=
@session@
select ydb_sex, ydb_province,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from spark_index_ya100   group by ydb_sex, ydb_province  order by cnt desc limit 10;

select ydb_sex,ydb_province,count(*),count(amtdouble) as cnt,sum(amtdouble) from spark_import_txt group by ydb_sex, ydb_province  order by cnt desc limit 10;


set ya100.spark.filter.spark_index_ya100=
@session@
set ya100.spark.combine.spark_index_ya100=*,amtdouble
@session@
set ya100.spark.top10000.spark_index_ya100=
@session@
select ydb_sex,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from spark_index_ya100   group by ydb_sex  order by cnt desc limit 10;

select ydb_sex,count(*),count(amtdouble) as cnt,sum(amtdouble) from spark_import_txt group by ydb_sex  order by cnt desc limit 10;


set ya100.spark.filter.spark_index_ya100=
@session@
set ya100.spark.combine.spark_index_ya100=
@session@
set ya100.spark.top10000.spark_index_ya100=amtdouble desc ,amtlong limit 10
@session@
select ydb_sex, phonenum,amtlong,amtdouble from spark_index_ya100  order by amtdouble desc ,amtlong  limit 10;

select ydb_sex, phonenum,amtlong,amtdouble from spark_import_txt   order by amtdouble desc ,amtlong  limit 10;

