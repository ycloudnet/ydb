
/*ydb.pushdown('->')*/ select tollCode,vehiclePlate from vehiclepass where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/ ;
/*ydb.pushdown('->')*/ select * from vehiclepass where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select * from ydb_example_shu where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content,usernick from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content as ctx,usernick as nick from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/ 
select  phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and phonenum='Ylike@188*63*72*76'
 limit 100
/*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' group by ydb_sex limit 10 /*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' group by ydb_sex,ydb_province order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' group by ydb_sex,ydb_province order by count(*) desc limit 10 /*('<-')pushdown.ydb*/;




















/*ydb.pushdown('->')*/ select tollCode,vehiclePlate from vehiclepass where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' limit 10 /*('<-')pushdown.ydb*/ ;
/*ydb.pushdown('->')*/ select * from vehiclepass where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content,usernick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content as ctx,usernick as nick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/
select  phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and phonenum='Ylike@188*63*72*76'
 limit 100
/*('<-')pushdown.ydb*/;
 
/*ydb.pushdown('->')*/select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' group by ydb_sex limit 10 /*('<-')pushdown.ydb*/;
 
 
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' group by ydb_sex,ydb_province order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' group by ydb_sex,ydb_province order by count(*) desc limit 10 /*('<-')pushdown.ydb*/; 




/*ydb.pushdown('->')*/ select tollCode,vehiclePlate from vehiclepass where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' limit 10 /*('<-')pushdown.ydb*/ ;
/*ydb.pushdown('->')*/ select * from vehiclepass where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content,usernick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content as ctx,usernick as nick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/
select  phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and phonenum='Ylike@188*63*72*76'
 limit 100
/*('<-')pushdown.ydb*/;
 
/*ydb.pushdown('->')*/select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' group by ydb_sex limit 10 /*('<-')pushdown.ydb*/;
 
 
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' group by ydb_sex,ydb_province order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' group by ydb_sex,ydb_province order by count(*) desc limit 10 /*('<-')pushdown.ydb*/;








/*ydb.pushdown('->')*/ select tollCode,vehiclePlate from vehiclepass where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/ ;
/*ydb.pushdown('->')*/ select * from vehiclepass where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/;

select 
    size(collect_set(tmp.ydb_sex)) as dist_sex,
    size(collect_set(tmp.ydb_province)) as dist_province,
    count(*) as cnt,
    count(tmp.amtlong) as cnt_long,
    count(distinct tmp.amtlong) as dist_long
from (
    /*ydb.pushdown('->')*/
        select ydb_sex,ydb_province,amtlong from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' 
    /*('<-')pushdown.ydb*/
) tmp limit 10;


select 
    tmp.ydb_sex as ydb_sex, 
    size(collect_set(tmp.ydb_province)) as dist_province,
    count(*) as cnt,
    count(tmp.amtlong) as cnt_long,
    count(distinct tmp.amtlong) as dist_long
from 
(
    /*ydb.pushdown('->')*/
        select ydb_sex,ydb_province,amtlong from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' 
    /*('<-')pushdown.ydb*/
) tmp
group by tmp.ydb_sex limit 10;




/*ydb.pushdown('->')*/
select  content from ydb_example_shu where ydbpartion = '3000w'  and content='YTermlike@30@100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 ' limit 10 
/*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/
select ydb_sex,ydb_province,ydb_blood,amtdouble,content from ydb_example_shu where ydbpartion = '3000w'  and ydb_raw_query_s like 'YQuerylike@hits=4&fq=ydb_sex:女&fq=ydb_province:辽宁&fq=amtdouble:[14 TO 200]&fq=ydb_blood:O&fq=content:王老吉'
limit 10
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/
select ydb_sex,ydb_province,ydb_blood,amtdouble,content from ydb_example_shu where ydbpartion = '3000w'  and ydb_raw_query_s like 'YQuerylike@hits=4&score=8&fq=ydb_sex:女&wt=1&fq=ydb_province:辽宁&wt=1&fq=amtdouble:[14 TO 200]&wt=1&fq=ydb_blood:O&wt=1&fq=content:王老吉&wt=9' 
limit 10
/*('<-')pushdown.ydb*/;




/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex='empty'
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and  ydb_sex<>'empty' 
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex='null'
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex<>'null'
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/ 
select  phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and phonenum='Ylike@824963'
 limit 10
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/ 
select  phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and phonenum='Ylike@824*963'
 limit 100
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/ 
select  phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and phonenum='Ylike@188*63*72*76'
 limit 100
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/ 
select  content from ydb_example_shu_positon where ydbpartion = '3000w'  and content_pyy='Ylike@  1 5 14 15 24 28 37 41 49 '
 limit 100
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/ 
select  content from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@1 5 14 15 24 28 37 41 49'
 limit 100
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/ 
select  content from ydb_example_shu_positon where ydbpartion = '3000w'  and content_pyy='Ylike@1 5 14 * 24 28 37 '
 limit 100
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/ 
select  content from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@1 5 14 * 24 28 37'
 limit 100
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/ 
select  content from ydb_example_shu_positon where ydbpartion = '3000w'  and content_pyy='Ylike@14 15 * 24 28 * 37 41  ' limit 100
/*('<-')pushdown.ydb*/
;



select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w'  and ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=10000'
/*('<-')pushdown.ydb*/
)tmp  order by distance limit 10 ;


select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w'  and ydb_raw_query_s like 'YGeo@fl=mortonhash&isbox=true&lon=8.1&lat=9.2&radius=10000'
/*('<-')pushdown.ydb*/
)tmp  order by distance limit 10 ;



/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select count(*) as cnt from ydb_example_shu where ydbpartion in ('3000w','300winsert','300winsert2','test1','test3') /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select * from ydb_example_shu where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content,usernick from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content as ctx,usernick as nick from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and  (amtlong like '([3000 TO 4000] )') limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select sum(amtdouble) as sumamt from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select sum(amtdouble) as sumamt,count(amtdouble)as cnt,avg(amtdouble) as avgamt,count(*) as cntall from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select avg(amtdouble) as avgamt from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/ select count(*),count(amtdouble),avg(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' group by ydb_sex limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' group by ydb_sex,ydb_province order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' group by ydb_sex,ydb_province order by count(*) desc limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion='3000w' and content='王老吉'  order by amtdouble desc ,amtlong limit 10 /*('<-')pushdown.ydb*/;


select r[0],r[1],r[2],YMortonUnHash(r[2]),YMortonHashDistance(r[2],8.1,9.2) as distance from  ydb where YSQL('from','select lon,lat,mortonhash from lonlattable_test where ydbpartion="3000w"  and ydb_raw_query_s like "YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=6000" ','segment') order by distance limit 3 ;

select r[0],r[1],r[2],YMortonUnHash(r[2]),YMortonHashDistance(r[2],8.1,9.2) as distance from  ydb where YSQL('from','select lon,lat,mortonhash from lonlattable_test where ydbpartion="3000w"  and ydb_raw_query_s like "YGeo@fl=mortonhash&isbox=true&lon=8.1&lat=9.2&radius=6000" ','segment') order by distance limit 3 ;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu where ydbpartion = "3000w"  and content="YTermlike@30@100 101 102 103 104 105 106 107 108 109 110 111 112 113 " limit 3 ','segment') 
limit 3;

select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu where ydbpartion = "3000w"  and content="YTermlike@5@100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 " limit 3 ','segment') 
limit 3;


select 
    r[0],r[1], r[2], r[3], r[4]
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,ydb_blood,amtdouble,content from ydb_example_shu where ydbpartion = "3000w"  and ydb_raw_query_s like "YQuerylike@hits=4&fq=ydb_sex:女&fq=ydb_province:辽宁&fq=amtdouble:[14 TO 200]&fq=ydb_blood:O&fq=content:王老吉" ','segment') 
limit 3;


select 
    r[0],r[1], r[2], r[3], r[4]
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,ydb_blood,amtdouble,content from ydb_example_shu where ydbpartion = "3000w"  and ydb_raw_query_s like "YQuerylike@hits=4&score=8&fq=ydb_sex:女&wt=1&fq=ydb_province:辽宁&wt=1&fq=amtdouble:[14 TO 200]&wt=1&fq=ydb_blood:O&wt=1&fq=content:王老吉&wt=9" ','segment') 
limit 3;




select 
    r[0] as phonenum_chepai 
from 
    ydb where YSQL('from','select  phonenum_chepai from ydb_example_shu_positon where ydbpartion = "3000w"  and phonenum_chepai="Ylike@824963" ','segment') 
limit 3;

select 
    r[0] as phonenum_chepai 
from 
    ydb where YSQL('from','select  phonenum_chepai from ydb_example_shu_positon where ydbpartion = "3000w"  and phonenum_chepai="Ylike@824*963" ','segment') 
limit 3;

select 
    r[0] as phonenum_chepai 
from 
    ydb where YSQL('from','select  phonenum_chepai from ydb_example_shu_positon where ydbpartion = "3000w"  and phonenum_chepai="Ylike@188*63*72*76" ','segment') 
limit 3;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content_pyy="Ylike@  1 5 14 15 24  " ','segment') 
limit 3;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content="Ylike@  1 5 14 15 24  " ','segment') 
limit 3;



select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content_pyy="Ylike@  1 5 * 15 24  " ','segment') 
limit 3;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content="Ylike@  1 5 * 15 24  " ','segment') 
limit 3;

select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 3;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content_pyy="Ylike@14 15 * 24 28 * 37 41  " ','segment') 
limit 3;

select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content="Ylike@14 15 * 24 28 * 37 41  " ','segment') 
limit 3;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content_pyy="Ylike@14 * 15 * 24 * 28 * 37*  41  " ','segment') 
limit 3;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content="Ylike@14 * 15 * 24 * 28 * 37*  41  " ','segment') 
limit 3;



----数据预览
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
limit 3;



----全文检索
select 
    r[0] as content,
    r[1] as usernick 
from 
    ydb where YSQL('from','select content,usernick from ydb_example_shu where ydbpartion="3000w" and content="王老吉" ','segment') 
limit 3;

----如果SQL比较复杂，可以通过Ycode@进行urlencode编码
select 
    r[0] as content,
    r[1] as usernick 
from
    ydb where YSQL('from','Ycode@select+content%2Cusernick+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+and+content%3D%27%E7%8E%8B%E8%80%81%E5%90%89%27','segment') 
limit 3;

----多个条件组合过滤
select 
    r[0] as ydb_sex,
    r[1] as ydb_grade,
    r[2] as ydb_age,
    r[3] as ydb_blood,
    r[4] as amtlong
from 
    ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where ydbpartion="3000w"  and ydb_sex="女" and ydb_grade="本科" and (ydb_age="20到30岁" or ydb_blood="O") and  (amtlong like "([3000 TO 4000] )") ','segment') 
limit 3;


 
select 
    r[0] as content,
    r[1] as usernick 
from 
    ydb where YSQL('from','select content,usernick from ydb_example_shu where ydbpartion=\'3000w\' and ydb_raw_query_s like \'content:王老吉\' ','segment') 
limit 3;
 
 
select 
    r[0] as content,
    r[1] as usernick 
from 
    ydb where YSQL('from','select content,usernick from ydb_example_shu where ydbpartion=\'3000w\' and ydb_code_query_s like \'content%3A%E7%8E%8B%E8%80%81%E5%90%89\' ','segment') 
limit 3;
 
 
 

 
 
 select sum(cast(r[0] as bigint)) as cnt from 
     ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and  content = \'王老吉\'and ( ( amtdouble like \'({5 TO 10} )\') or ( amtlong like \'({5 TO 10} )\')  ) and ((phonenum =\'273\') or ydb_province=\'北京\' or ydb_blood=\'O\' or ydb_zhiye=\'IT\' or ydb_prefer=\'电影\' or usernick=\'刘博涛\') and ydb_sex=\'男\' and ydb_day=\'20160311\'  ','segment') 
 limit 3;
 
 
 
 
 
 
 
----单列group by
select 
    r[0] as ydb_sex,
    sum(cast(r[1] as bigint)) as cnt,
    sum(cast(r[2] as bigint)) as cntamt,
    sum(cast(r[3] as double)) as sumamt
from 
    ydb where YSQL('from','select ydb_sex,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" and content="王老吉" group by ydb_sex  ','segment') 
group by r[0]  order by cnt desc 
limit 3;

----多列group by
select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" and content="王老吉" group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]  order by cnt desc 
limit 3;

----top N 排序
select ydb_sex, phonenum,amtlong,amtdouble from 
(
    select 
        r[0] as ydb_sex,
        r[1] as phonenum,
        cast(r[2] as bigint) as amtlong,
        cast(r[3] as double) as amtdouble 
    from 
        ydb where YSQL('from','select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion="3000w"  and content="王老吉" order by amtdouble desc ,amtlong limit 3 ','segment')
)tmp 
order by amtdouble desc ,amtlong  
limit 3;
 
