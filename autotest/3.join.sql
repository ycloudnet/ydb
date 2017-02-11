
select sum(cnt) as cnt from 
(

/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/
 

union all
/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion = '3000w' and amtlong>='100' and amtlong<='1000'  /*('<-')pushdown.ydb*/

union all
/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion = '20151011' and (ydb_blood in ('O','AB')) /*('<-')pushdown.ydb*/

union all
/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion = '20151011' and ydb_sex='女' and ydb_province='广东' /*('<-')pushdown.ydb*/

union all
/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion = '20151011' and ydb_province in ('广东','辽宁','香港','黑龙江')  /*('<-')pushdown.ydb*/


) tmp limit 10;


select sum(cnt) as cnt from 
(

 select count(*) as cnt from ydb_import_txt 
 

union all
 select count(*) as cnt from ydb_import_txt where  amtlong>='100' and amtlong<='1000'  

union all
select count(*) as cnt from ydb_import_txt where  (ydb_blood in ('O','AB')) 

union all
 select count(*) as cnt from ydb_import_txt where   ydb_sex='女' and ydb_province='广东'
union all
 select count(*) as cnt from ydb_import_txt where  ydb_province in ('广东','辽宁','香港','黑龙江') 


) tmp limit 10;









select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from 
(

/*ydb.pushdown('->')*/ select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = '3000w' and amtlong>='100' and amtlong<='1000' order by amtdouble desc, amtlong limit 10 /*('<-')pushdown.ydb*/

union all
/*ydb.pushdown('->')*/ select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = '20151011' and (ydb_blood in ('O','AB')) order by amtdouble desc, amtlong limit 10 /*('<-')pushdown.ydb*/

union all
/*ydb.pushdown('->')*/ select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = '20151011' and ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong limit 10 /*('<-')pushdown.ydb*/

union all
/*ydb.pushdown('->')*/ select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = '20151011' and ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong limit 10  /*('<-')pushdown.ydb*/


) tmp order by tmp.amtdouble desc, tmp.amtlong,tmp.phonenum limit 100;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from 
(

select * from (
 select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where  amtlong>='100' and amtlong<='1000'  order by amtdouble desc, amtlong limit 10 
) t1

union all
select * from (

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where  (ydb_blood in ('O','AB'))  order by amtdouble desc, amtlong limit 10

)t2
union all
select * from (
 select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where   ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong limit 10

)t3

union all
select * from (
 select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where  ydb_province in ('广东','辽宁','香港','黑龙江')  order by amtdouble desc, amtlong limit 10

)t4

) tmp2  

order by tmp2.amtdouble desc, tmp2.amtlong ,tmp2.phonenum limit 100;












select k21.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
    /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1'
    /*('<-')pushdown.ydb*/
    
    ) k1
    LEFT SEMI JOIN 
   (
           /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='2'
    /*('<-')pushdown.ydb*/
    
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT SEMI JOIN 
(
       /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='3'
    /*('<-')pushdown.ydb*/
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 select k21.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'
    ) k1
    LEFT SEMI JOIN 
   (
        select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT SEMI JOIN 
(
   select vehiclePlate,tollCode from vehiclepass_txt where tollCode='3'
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 
 
 
 
 
  select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
               /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1'
    /*('<-')pushdown.ydb*/
    ) k1
    LEFT JOIN 
   (
            /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='2'
    /*('<-')pushdown.ydb*/
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
        /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='3'
    /*('<-')pushdown.ydb*/
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
           select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'
    ) k1
    LEFT JOIN 
   (
        select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
     select vehiclePlate,tollCode from vehiclepass_txt where tollCode='3'
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 
 
 
 
 
 
 
 select k21.vehiclePlate,k22.vehiclePlate from(
     select  k1.vehiclePlate as vehiclePlate from (

        /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1'
    /*('<-')pushdown.ydb*/
    ) k1
    LEFT SEMI JOIN 
   (
            /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='2'
    /*('<-')pushdown.ydb*/
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
        /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='3'
    /*('<-')pushdown.ydb*/
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 
 
 select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'
    ) k1
    LEFT SEMI JOIN 
   (
        select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
   select vehiclePlate,tollCode from vehiclepass_txt where tollCode='3'
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 select  k1.vehiclePlate as vehiclePlate from (
                /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1'
    /*('<-')pushdown.ydb*/
    ) k1
    LEFT SEMI JOIN 
   (
           /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='2'
    /*('<-')pushdown.ydb*/
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
    
    
     select  k1.vehiclePlate as vehiclePlate from (
                select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'

    ) k1
    LEFT SEMI JOIN 
   (
            select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'

    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
      select  k1.vehiclePlate as vehiclePlate,k2.vehiclePlate from (
               /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1'
    /*('<-')pushdown.ydb*/
    ) k1
    LEFT JOIN 
   (
            /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='2'
    /*('<-')pushdown.ydb*/
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
 
 
 
    
      select  k1.vehiclePlate as vehiclePlate,k2.vehiclePlate from (
                        select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'

    ) k1
    LEFT JOIN 
   (
                        select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'

    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
 
 
 
 
 
 
 
 
 
 
   select  k1.vehiclePlate as vehiclePlate from (
               /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1'
    /*('<-')pushdown.ydb*/
    ) k1
    LEFT SEMI JOIN 
   (
            /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='2'
    /*('<-')pushdown.ydb*/
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
    
    
    
     
   select  k1.vehiclePlate as vehiclePlate from (
                                    select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'

    ) k1
    LEFT SEMI JOIN 
   (
                               select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'

    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
    
    
    
    
    
    
    
    
    
    
    
      select  k1.vehiclePlate as vehiclePlate,k2.vehiclePlate from (
                                              select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'

    ) k1
    LEFT JOIN 
   (
                                           select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'

    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
 
 
     
    
      select  k1.vehiclePlate as vehiclePlate,k2.vehiclePlate from (
                /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1'
    /*('<-')pushdown.ydb*/
    ) k1
    LEFT JOIN 
   (
           /*ydb.pushdown('->')*/ 
select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='2'
    /*('<-')pushdown.ydb*/
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
 
 

 
















































select k21.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="1"  ','segment')
    ) k1
    LEFT SEMI JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="2"  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT SEMI JOIN 
(
    select r[0] as vehiclePlate from 
    ydb2 where YSQL('from ydb2','select vehiclePlate,tollCode from vehiclepass  where ydbpartion = "3000w" and tollCode="3" ','segment')
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 select k21.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'
    ) k1
    LEFT SEMI JOIN 
   (
        select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT SEMI JOIN 
(
   select vehiclePlate,tollCode from vehiclepass_txt where tollCode='3'
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 
 
 
 
 
  select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="1"  ','segment')
    ) k1
    LEFT JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="2"  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
    select r[0] as vehiclePlate from 
    ydb2 where YSQL('from ydb2','select vehiclePlate,tollCode from vehiclepass  where ydbpartion = "3000w" and tollCode="3" ','segment')
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
           select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'
    ) k1
    LEFT JOIN 
   (
        select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
     select vehiclePlate,tollCode from vehiclepass_txt where tollCode='3'
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 
 
 
 
 
 
 
 select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="1"  ','segment')
    ) k1
    LEFT SEMI JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="2"  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
    select r[0] as vehiclePlate from 
    ydb2 where YSQL('from ydb2','select vehiclePlate,tollCode from vehiclepass  where ydbpartion = "3000w" and tollCode="3" ','segment')
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 
 
 select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'
    ) k1
    LEFT SEMI JOIN 
   (
        select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
   select vehiclePlate,tollCode from vehiclepass_txt where tollCode='3'
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="1"  ','segment')
    ) k1
    LEFT SEMI JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="2"  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
    
    
     select  k1.vehiclePlate as vehiclePlate from (
                select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'

    ) k1
    LEFT SEMI JOIN 
   (
            select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'

    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
      select  k1.vehiclePlate as vehiclePlate,k2.vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="1"  ','segment')
    ) k1
    LEFT JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="2"  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
 
 
 
    
      select  k1.vehiclePlate as vehiclePlate,k2.vehiclePlate from (
                        select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'

    ) k1
    LEFT JOIN 
   (
                        select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'

    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
 
 
 
 
 
 
 
 
 
 
   select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="1"  ','segment')
    ) k1
    LEFT SEMI JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="2"  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
    
    
    
     
   select  k1.vehiclePlate as vehiclePlate from (
                                    select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'

    ) k1
    LEFT SEMI JOIN 
   (
                               select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'

    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
    
    
    
    
    
    
    
    
    
    
    
      select  k1.vehiclePlate as vehiclePlate,k2.vehiclePlate from (
                                              select vehiclePlate,tollCode from vehiclepass_txt where tollCode='1'

    ) k1
    LEFT JOIN 
   (
                                           select vehiclePlate,tollCode from vehiclepass_txt where tollCode='2'

    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
 
 
     
    
      select  k1.vehiclePlate as vehiclePlate,k2.vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="1"  ','segment')
    ) k1
    LEFT JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = "3000w" and tollCode="2"  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate) order by k1.vehiclePlate;
 
 

 