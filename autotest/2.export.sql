
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
) tmp  order by rand() limit 1000
@session@
 select count(*) from ydb_import_importtest limit 10;
 select '1000' from ydb_import_importtest limit 1;



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
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = "3000w" ','segment')
@session@
select count(*) from ydb_import_importtest limit 10;
select count(*) from ydb_import_txt limit 10;









select count(*) from ydb_import_importtest limit 10;
select count(*) from ydb_import_txt limit 10;





select sum(amtdouble) from ydb_import_txt limit 10;
select sum(amtdouble) from ydb_import_importtest limit 10;



select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_import_txt limit 10;
select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_import_importtest limit 10;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_importtest limit 10;
select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt limit 10;




select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_importtest group by ydb_sex order by cnt desc limit 10;
select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;





select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_importtest group by ydb_sex,ydb_province order by cnt desc limit 10;
select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;





select ydb_sex,amtlong,amtdouble from ydb_import_importtest order by amtdouble desc, amtlong,ydb_sex limit 10;
select ydb_sex,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,ydb_sex limit 10;







insert overwrite table ydb_import_importtest
select * from (
/*ydb.pushdown('->')*/ 
select 
    phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content 
from ydb_example_shu where ydbpartion = '3000w' and ydbkv='export.max.return.docset.size:1000'  
/*('<-')pushdown.ydb*/
) tmp  order by rand() limit 1000
@session@
select count(*) from ydb_import_importtest limit 10;
select '1000' from ydb_import_importtest limit 1;



insert overwrite table ydb_import_importtest 
/*ydb.pushdown('->')*/ 
select 
     phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content 
from ydb_example_shu where ydbpartion = '3000w' 
/*('<-')pushdown.ydb*/
@session@
select count(*) from ydb_import_importtest limit 10;
select count(*) from ydb_import_txt limit 10;















select count(*) from ydb_import_importtest limit 10;
select count(*) from ydb_import_txt limit 10;





select sum(amtdouble) from ydb_import_txt limit 10;
select sum(amtdouble) from ydb_import_importtest limit 10;



select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_import_txt limit 10;
select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_import_importtest limit 10;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_importtest limit 10;
select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt limit 10;




select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_importtest group by ydb_sex order by cnt desc limit 10;
select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;





select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_importtest group by ydb_sex,ydb_province order by cnt desc limit 10;
select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;





select ydb_sex,amtlong,amtdouble from ydb_import_importtest order by amtdouble desc, amtlong,ydb_sex limit 10;
select ydb_sex,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,ydb_sex limit 10;



insert overwrite table ydbpartion 
select 'ydb_example_shu', 'export_auto', '',
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
 from (
    select r from ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = "3000w"   and ydbkv="export.max.return.docset.size:1000"  ','segment')
) tmp  order by rand() limit 1000
@session@
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "export_auto" ','segment') 
limit 10;
select '1000' from ydb_import_importtest limit 1;



insert overwrite table ydbpartion 
select 'ydb_example_shu', 'export_auto', '',
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
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = "3000w" ','segment')
@session@
select count(*) from ydb_import_txt limit 10;
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "export_auto" ','segment') 
limit 10;




select sum(cast(r[0] as bigint)) as sumamtdouble from 
    ydb where YSQL('from','select sum(amtdouble) from ydb_example_shu where ydbpartion = "export_auto" ','segment') 
limit 10;
select sum(amtdouble) from ydb_import_txt limit 10;



select 
    tmp.cntamt,
    tmp.sumamt,
    case when tmp.cntamt>0 then tmp.sumamt/tmp.cntamt else 0 end as avgamt
from (
    select 
        sum(cast(r[0] as bigint)) as cntamt,
        sum(cast(r[1] as double)) as sumamt
    from 
        ydb where YSQL('from','select count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "export_auto"  ','segment')

)tmp
limit 10;

select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_import_txt limit 10;





select 
    tmp.cnt,
    case when tmp.cntamt>0 then tmp.sumamt/tmp.cntamt else 0 end as avgamt,
    tmp.cntamt,
    tmp.sumamt,
    tmp.minamt,
    tmp.maxamt,
    tmp.minprov,
    tmp.maxprov
from (
    select 
        sum(cast(r[0] as bigint)) as cnt,
        sum(cast(r[1] as bigint)) as cntamt,
        sum(cast(r[2] as double)) as sumamt,
        min(cast(r[3] as double)) as minamt,
        max(cast(r[4] as double)) as maxamt,
        min(r[5]) as minprov,
        max(r[6]) as maxprov
    from 
        ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = "export_auto"  ','segment')
)tmp
 limit 10;

select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt limit 10;
  





select 
    r[0] as ydb_sex,
    sum(cast(r[1] as bigint)) as cnt,
    sum(cast(r[2] as bigint)) as cntamt,
    sum(cast(r[3] as double)) as sumamt
from 
    ydb where YSQL('from','select ydb_sex,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "export_auto" group by ydb_sex  ','segment') 
group by r[0]  order by cnt desc 
limit 10;

select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;






select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "export_auto" group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]  order by cnt desc 
limit 10;


select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;




select ydb_sex, phonenum,amtlong,amtdouble from 
(
    select 
        r[0] as ydb_sex,
        r[1] as phonenum,
        cast(r[2] as bigint) as amtlong,
        cast(r[3] as double) as amtdouble 
    from 
        ydb where YSQL('from','select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion="export_auto"  order by amtdouble desc ,amtlong limit 10 ','segment')
)tmp 
order by amtdouble desc ,amtlong ,ydb_sex,phonenum 
limit 10;

select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,ydb_sex,phonenum limit 10;





insert overwrite table ydbpartion 
select 'ydb_example_shu', 'export_auto_1', '',
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
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = "3000w" ','segment')
@session@
select count(*) from ydb_import_txt limit 10;
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "export_auto_1" ','segment') 
limit 10;


insert overwrite table ydbpartion 
select 'ydb_example_shu', 'export_auto_2', '',
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
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = "3000w" ','segment')
@session@
select count(*) from ydb_import_txt limit 10;
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "export_auto_2" ','segment') 
limit 10;


insert overwrite table ydbpartion 
select 'ydb_example_shu', 'export_auto_3', '',
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
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = "3000w" ','segment')
@session@
select count(*) from ydb_import_txt limit 10;
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "export_auto_3" ','segment') 
limit 10;


select count(*)*5 from ydb_import_txt limit 10;
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion in  ("export_auto_3","export_auto_2","export_auto_1","export_auto","3000w") ','segment') 
limit 10;

select 
    r[0] as ydb_sex,
    sum(cast(r[1] as bigint)) as cnt,
    sum(cast(r[2] as bigint)) as cntamt,
    sum(cast(r[3] as double)) as sumamt
from 
    ydb where YSQL('from','select ydb_sex,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion in  ("export_auto_3","export_auto_2","export_auto_1","export_auto","3000w")  group by ydb_sex  ','segment') 
group by r[0]  order by cnt desc 
limit 10;

select ydb_sex,count(*)*5 as cnt,count(amtdouble)*5,sum(amtdouble)*5  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;






select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion in  ("export_auto_3","export_auto_2","export_auto_1","export_auto","3000w")  group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]  order by cnt desc 
limit 10;


select ydb_sex,ydb_province,count(*)*5 as cnt,count(amtdouble)*5,sum(amtdouble)*5  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;






select sum(cast(r[0] as bigint)) as sumamtdouble from 
    ydb where YSQL('from','select sum(amtdouble) from ydb_example_shu where ydbpartion in  ("export_auto_3","export_auto_2","export_auto_1","export_auto","3000w")  ','segment') 
limit 10;
select sum(amtdouble)*5 from ydb_import_txt limit 10;



select 
    tmp.cntamt,
    tmp.sumamt
from (
    select 
        sum(cast(r[0] as bigint)) as cntamt,
        sum(cast(r[1] as double)) as sumamt
    from 
        ydb where YSQL('from','select count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion in  ("export_auto_3","export_auto_2","export_auto_1","export_auto","3000w")  ','segment')

)tmp
limit 10;

select count(amtdouble)*5,sum(amtdouble)*5 from ydb_import_txt limit 10;






























insert overwrite table ydbpartion 
select 'ydb_example_shu', 'export_auto', '',
   YROW(
        'phonenum',tmp.phonenum,
        'usernick',tmp.usernick,
        'ydb_sex',tmp.ydb_sex,
        'ydb_province',tmp.ydb_province,
        'ydb_grade',tmp.ydb_grade,
        'ydb_age',tmp.ydb_age,
        'ydb_blood',tmp.ydb_blood,
        'ydb_zhiye',tmp.ydb_zhiye,
        'ydb_earn',tmp.ydb_earn,
        'ydb_prefer',tmp.ydb_prefer,
        'ydb_consume',tmp.ydb_consume,
        'ydb_day',tmp.ydb_day,
        'amtdouble',tmp.amtdouble,
        'amtlong',tmp.amtlong,
        'content',tmp.content
    )
 from (
/*ydb.pushdown('->')*/ 
select 
    phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content 
from ydb_example_shu where ydbpartion = '3000w' and ydbkv='export.max.return.docset.size:1000'  
/*('<-')pushdown.ydb*/
) tmp  order by rand() limit 1000
@session@
/*ydb.pushdown('->')*/ 
select count(*) from ydb_example_shu where ydbpartion = 'export_auto'
/*('<-')pushdown.ydb*/
;
select '1000' from ydb_import_importtest limit 1;



insert overwrite table ydbpartion 
select 'ydb_example_shu', 'export_auto', '',
      YROW(
        'phonenum',tmp.phonenum,
        'usernick',tmp.usernick,
        'ydb_sex',tmp.ydb_sex,
        'ydb_province',tmp.ydb_province,
        'ydb_grade',tmp.ydb_grade,
        'ydb_age',tmp.ydb_age,
        'ydb_blood',tmp.ydb_blood,
        'ydb_zhiye',tmp.ydb_zhiye,
        'ydb_earn',tmp.ydb_earn,
        'ydb_prefer',tmp.ydb_prefer,
        'ydb_consume',tmp.ydb_consume,
        'ydb_day',tmp.ydb_day,
        'amtdouble',tmp.amtdouble,
        'amtlong',tmp.amtlong,
        'content',tmp.content
    )
from (
/*ydb.pushdown('->')*/ 
select 
     phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content 
from ydb_example_shu where ydbpartion = '3000w' 
/*('<-')pushdown.ydb*/ 
) tmp
@session@
select count(*) from ydb_import_txt limit 10;
/*ydb.pushdown('->')*/ 
select count(*) from ydb_example_shu where ydbpartion = 'export_auto'
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/ 
select sum(amtdouble) from ydb_example_shu where ydbpartion = 'export_auto'
/*('<-')pushdown.ydb*/
;
select sum(amtdouble) from ydb_import_txt limit 10;





/*ydb.pushdown('->')*/ 
select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_example_shu where ydbpartion = 'export_auto'
/*('<-')pushdown.ydb*/
;
select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_import_txt limit 10;




 /*ydb.pushdown('->')*/ 
select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = 'export_auto'
/*('<-')pushdown.ydb*/
;
select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt limit 10;
  






/*ydb.pushdown('->')*/ 
select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = 'export_auto' group by ydb_sex order by cnt desc limit 10
/*('<-')pushdown.ydb*/
;
select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;







/*ydb.pushdown('->')*/ 
select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = 'export_auto' group by ydb_sex,ydb_province order by cnt desc limit 10
/*('<-')pushdown.ydb*/
;
select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;





/*ydb.pushdown('->')*/ 
select ydb_sex,amtlong,amtdouble from ydb_example_shu where ydbpartion = 'export_auto' order by amtdouble desc, amtlong,ydb_sex limit 10
/*('<-')pushdown.ydb*/
;
select ydb_sex,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,ydb_sex limit 10;





insert overwrite table ydbpartion 
select 'ydb_example_shu', 'export_auto_1', '',
      YROW(
        'phonenum',tmp.phonenum,
        'usernick',tmp.usernick,
        'ydb_sex',tmp.ydb_sex,
        'ydb_province',tmp.ydb_province,
        'ydb_grade',tmp.ydb_grade,
        'ydb_age',tmp.ydb_age,
        'ydb_blood',tmp.ydb_blood,
        'ydb_zhiye',tmp.ydb_zhiye,
        'ydb_earn',tmp.ydb_earn,
        'ydb_prefer',tmp.ydb_prefer,
        'ydb_consume',tmp.ydb_consume,
        'ydb_day',tmp.ydb_day,
        'amtdouble',tmp.amtdouble,
        'amtlong',tmp.amtlong,
        'content',tmp.content
    )
from (
/*ydb.pushdown('->')*/ 
select 
     phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content 
from ydb_example_shu where ydbpartion = '3000w' 
/*('<-')pushdown.ydb*/ 
) tmp
@session@
select count(*) from ydb_import_txt limit 10;
/*ydb.pushdown('->')*/ 
select count(*) from ydb_example_shu where ydbpartion = 'export_auto_1'
/*('<-')pushdown.ydb*/
;


insert overwrite table ydbpartion 
select 'ydb_example_shu', 'export_auto_2', '',
       YROW(
        'phonenum',tmp.phonenum,
        'usernick',tmp.usernick,
        'ydb_sex',tmp.ydb_sex,
        'ydb_province',tmp.ydb_province,
        'ydb_grade',tmp.ydb_grade,
        'ydb_age',tmp.ydb_age,
        'ydb_blood',tmp.ydb_blood,
        'ydb_zhiye',tmp.ydb_zhiye,
        'ydb_earn',tmp.ydb_earn,
        'ydb_prefer',tmp.ydb_prefer,
        'ydb_consume',tmp.ydb_consume,
        'ydb_day',tmp.ydb_day,
        'amtdouble',tmp.amtdouble,
        'amtlong',tmp.amtlong,
        'content',tmp.content
    )
from (
/*ydb.pushdown('->')*/ 
select 
     phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content 
from ydb_example_shu where ydbpartion = '3000w' 
/*('<-')pushdown.ydb*/ 
) tmp
@session@
select count(*) from ydb_import_txt limit 10;
/*ydb.pushdown('->')*/ 
select count(*) from ydb_example_shu where ydbpartion = 'export_auto_2'
/*('<-')pushdown.ydb*/
;


insert overwrite table ydbpartion 
select 'ydb_example_shu', 'export_auto_3', '',
      YROW(
        'phonenum',tmp.phonenum,
        'usernick',tmp.usernick,
        'ydb_sex',tmp.ydb_sex,
        'ydb_province',tmp.ydb_province,
        'ydb_grade',tmp.ydb_grade,
        'ydb_age',tmp.ydb_age,
        'ydb_blood',tmp.ydb_blood,
        'ydb_zhiye',tmp.ydb_zhiye,
        'ydb_earn',tmp.ydb_earn,
        'ydb_prefer',tmp.ydb_prefer,
        'ydb_consume',tmp.ydb_consume,
        'ydb_day',tmp.ydb_day,
        'amtdouble',tmp.amtdouble,
        'amtlong',tmp.amtlong,
        'content',tmp.content
    )
from (
/*ydb.pushdown('->')*/ 
select 
     phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content 
from ydb_example_shu where ydbpartion = '3000w' 
/*('<-')pushdown.ydb*/ 
) tmp
@session@
select count(*) from ydb_import_txt limit 10;
/*ydb.pushdown('->')*/ 
select count(*) from ydb_example_shu where ydbpartion = 'export_auto_3'
/*('<-')pushdown.ydb*/
;


select count(*)*5 from ydb_import_txt limit 10;

/*ydb.pushdown('->')*/ 
select count(*) from ydb_example_shu where ydbpartion in  ('export_auto_3','export_auto_2','export_auto_1','export_auto','3000w')
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/ 
select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion in  ('export_auto_3','export_auto_2','export_auto_1','export_auto','3000w') group by ydb_sex order by cnt desc limit 10
/*('<-')pushdown.ydb*/
;
select ydb_sex,count(*)*5 as cnt,count(amtdouble)*5,sum(amtdouble)*5  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;





/*ydb.pushdown('->')*/ 
select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion in  ('export_auto_3','export_auto_2','export_auto_1','export_auto','3000w')  group by ydb_sex,ydb_province order by cnt desc limit 10
/*('<-')pushdown.ydb*/
;
select ydb_sex,ydb_province,count(*)*5 as cnt,count(amtdouble)*5,sum(amtdouble)*5  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;




/*ydb.pushdown('->')*/ 
select sum(amtdouble) from ydb_example_shu where ydbpartion in  ('export_auto_3','export_auto_2','export_auto_1','export_auto','3000w')  limit 10
/*('<-')pushdown.ydb*/
;
select sum(amtdouble)*5 from ydb_import_txt limit 10;



/*ydb.pushdown('->')*/ 
select count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion in  ('export_auto_3','export_auto_2','export_auto_1','export_auto','3000w')  limit 10
/*('<-')pushdown.ydb*/
;
select count(amtdouble)*5,sum(amtdouble)*5 from ydb_import_txt limit 10;














