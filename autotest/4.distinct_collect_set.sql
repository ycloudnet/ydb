
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
    size(collect_set(ydb_sex)) as dist_sex,
    size(collect_set(ydb_province)) as dist_province,
    count(*) as cnt,
    count(amtlong) as cnt_long,
    count(distinct amtlong) as dist_long
from 
    ydb_import_txt where   content like '%王老吉%'
limit 10;





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
group by tmp.ydb_sex order by cnt limit 10;


select 
    ydb_sex, 
    size(collect_set(ydb_province)) as dist_province,
    count(*) as cnt,
    count(amtlong) as cnt_long,
    count(distinct amtlong) as dist_long
from 
    ydb_import_txt where  content like '%王老吉%'
group by ydb_sex order by cnt
limit 10;






select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_sex,cnt,cntamt,sumamt)))) from (
    /*ydb.pushdown('->')*/
        select ydb_sex,ydb_province,count(*) as cnt,count(amtlong) as cntamt,sum(amtlong) as sumamt from ydb_example_shu where ydbpartion = '3000w' group by ydb_sex,ydb_province  
    /*('<-')pushdown.ydb*/
)tmp  group by ydb_province order by scnt desc,ydb_province limit 10;

select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_sex,cnt,cntamt,sumamt)))) from (
select 
ydb_sex, 
    ydb_province,
    count(*) as cnt,
    count(amtlong) as cntamt,
    sum(amtlong) as sumamt 
  from ydb_import_txt  group by ydb_sex,ydb_province

)tmp  group by ydb_province order by scnt desc,ydb_province limit 10;









select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (
    /*ydb.pushdown('->')*/
        select ydb_blood,ydb_sex,ydb_province,count(*) as cnt,count(amtlong) as cntamt,sum(amtlong) as sumamt from ydb_example_shu where ydbpartion = '3000w' group by ydb_blood,ydb_sex,ydb_province  
    /*('<-')pushdown.ydb*/
)tmp  group by ydb_province order by scnt desc,ydb_province limit 10;

select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (
select ydb_blood,
ydb_sex, 
    ydb_province,
    count(*) as cnt,
    count(amtlong) as cntamt,
    sum(amtlong) as sumamt 
  from ydb_import_txt  group by ydb_blood,ydb_sex,ydb_province

)tmp  group by ydb_province order by scnt desc,ydb_province limit 10;





select ydb_day,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (
    /*ydb.pushdown('->')*/
        select ydb_day,ydb_sex,ydb_blood,count(*) as cnt,count(amtlong) as cntamt,sum(amtlong) as sumamt from ydb_example_shu where ydbpartion = '3000w' group by ydb_day,ydb_sex,ydb_blood
    /*('<-')pushdown.ydb*/
)tmp  group by ydb_day order by scnt desc,ydb_day limit 10;

select ydb_day,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (


select ydb_day,
ydb_sex, 
    ydb_blood,
    count(*) as cnt,
    count(amtlong) as cntamt,
    sum(amtlong) as sumamt 
  from ydb_import_txt  group by ydb_day,ydb_sex,ydb_blood

)tmp  group by ydb_day order by scnt desc,ydb_day limit 10;
















select 
    size(collect_set(r[0])) as dist_sex,
    size(collect_set(r[1])) as dist_province,
    count(*) as cnt,
    count(r[2]) as cnt_long,
    count(distinct r[2]) as dist_long
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,amtlong from ydb_example_shu where ydbpartion = "3000w" and content="王老吉"  ','segment') 
limit 10;

select 
    size(collect_set(ydb_sex)) as dist_sex,
    size(collect_set(ydb_province)) as dist_province,
    count(*) as cnt,
    count(amtlong) as cnt_long,
    count(distinct amtlong) as dist_long
from 
    ydb_import_txt where   content like '%王老吉%'
limit 10;





select 
    r[0] as ydb_sex, 
    size(collect_set(r[1])) as dist_province,
    count(*) as cnt,
    count(r[2]) as cnt_long,
    count(distinct r[2]) as dist_long
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,amtlong from ydb_example_shu where ydbpartion = "3000w" and content="王老吉"  ','segment')
group by r[0] order by cnt
limit 10;


select 
    ydb_sex, 
    size(collect_set(ydb_province)) as dist_province,
    count(*) as cnt,
    count(amtlong) as cnt_long,
    count(distinct amtlong) as dist_long
from 
    ydb_import_txt where  content like '%王老吉%'
group by ydb_sex order by cnt
limit 10;


























select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_sex,cnt,cntamt,sumamt)))) from (
select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as bigint)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtlong),sum(amtlong) from ydb_example_shu where ydbpartion = "3000w" group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]

)tmp  group by ydb_province order by scnt desc,ydb_province limit 10;

select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_sex,cnt,cntamt,sumamt)))) from (
select 
ydb_sex, 
    ydb_province,
    count(*) as cnt,
    count(amtlong) as cntamt,
    sum(amtlong) as sumamt 
  from ydb_import_txt  group by ydb_sex,ydb_province

)tmp  group by ydb_province order by scnt desc,ydb_province limit 10;









select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (
select 
    r[0] as ydb_blood, 
    r[1] as ydb_sex, 
    r[2] as ydb_province,
    sum(cast(r[3] as bigint)) as cnt,
    sum(cast(r[4] as bigint)) as cntamt
from 
    ydb where YSQL('from','select ydb_blood,ydb_sex,ydb_province,count(*),count(amtlong) from ydb_example_shu where ydbpartion = "3000w" group by ydb_blood,ydb_sex,ydb_province  ','segment') 
group by r[0], r[1], r[2]

)tmp  group by ydb_province order by scnt desc,ydb_province limit 10;




select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (
select ydb_blood,
ydb_sex, 
    ydb_province,
    count(*) as cnt,
    count(amtlong) as cntamt,
    sum(amtlong) as sumamt 
  from ydb_import_txt  group by ydb_blood,ydb_sex,ydb_province

)tmp  group by ydb_province order by scnt desc,ydb_province limit 10;






select ydb_day,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (
select 
    r[0] as ydb_day, 
    r[1] as ydb_sex, 
    r[2] as ydb_blood,
    sum(cast(r[3] as bigint)) as cnt,
    sum(cast(r[4] as bigint)) as cntamt
from 
    ydb where YSQL('from','select ydb_day,ydb_sex,ydb_blood,count(*),count(amtlong) from ydb_example_shu where ydbpartion = "3000w" group by ydb_day,ydb_sex,ydb_blood  ','segment') 
group by r[0], r[1], r[2]

)tmp  group by ydb_day order by scnt desc,ydb_day limit 10;


select ydb_day,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (


select ydb_day,
ydb_sex, 
    ydb_blood,
    count(*) as cnt,
    count(amtlong) as cntamt,
    sum(amtlong) as sumamt 
  from ydb_import_txt  group by ydb_day,ydb_sex,ydb_blood

)tmp  group by ydb_day order by scnt desc,ydb_day limit 10;







select ydb_day,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt)))) from (
    select ydb_day,ydb_sex,ydb_blood,Ycount('*',ya100_pipe) as cnt from ydb_example_shu where Yfilter('ydb_example_shu','ydbpartion="3000w"',ya100_pipe) and   Ycombine('ydb_example_shu','*',ya100_pipe) group by ydb_day,ydb_sex,ydb_blood  
)tmp  group by ydb_day order by scnt desc,ydb_day limit 10;


select ydb_day,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt)))) from (

select ydb_day,
ydb_sex, 
    ydb_blood,
    count(*) as cnt,
    count(amtlong) as cntamt,
    sum(amtlong) as sumamt 
  from ydb_import_txt  group by ydb_day,ydb_sex,ydb_blood

)tmp  group by ydb_day order by scnt desc,ydb_day limit 10;





select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt)))) from (
    select ydb_blood,ydb_sex,ydb_province,Ycount('*',ya100_pipe) as cnt from ydb_example_shu where Yfilter('ydb_example_shu','ydbpartion="3000w"',ya100_pipe) and   Ycombine('ydb_example_shu','*',ya100_pipe) group by ydb_blood,ydb_sex,ydb_province  
)tmp  group by ydb_province order by scnt desc,ydb_province limit 10;

select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt)))) from (
select ydb_blood,
ydb_sex, 
    ydb_province,
    count(*) as cnt,
    count(amtlong) as cntamt,
    sum(amtlong) as sumamt 
  from ydb_import_txt  group by ydb_blood,ydb_sex,ydb_province

)tmp  group by ydb_province order by scnt desc,ydb_province limit 10;











