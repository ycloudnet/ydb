

select count(*),
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
from ydb_all_type_txt limit 10;


/*ydb.pushdown('->')*/
select count(*),
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
from ydb_all_type where ydbpartion='3000w' limit 10
/*('<-')pushdown.ydb*/
;






select count(*),
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type_txt limit 10;




/*ydb.pushdown('->')*/

select count(*),
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type where ydbpartion='3000w' limit 10
/*('<-')pushdown.ydb*/
;





select d4_double,count(*),
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
    
from ydb_all_type_txt group by d4_double order by sum(c4_double) desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9 limit 10;



/*ydb.pushdown('->')*/
select d4_double,count(*),
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
    
from ydb_all_type where ydbpartion='3000w' group by d4_double order by sum(c4_double) desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9 limit 10
/*('<-')pushdown.ydb*/
;









select d4_string,count(*),
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
    
from ydb_all_type_txt group by d4_string order by sum(c4_double) desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9 limit 10;


/*ydb.pushdown('->')*/

select d4_string,count(*),
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
    
from ydb_all_type where ydbpartion='3000w' group by d4_string order by sum(c4_double) desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9 limit 10
/*('<-')pushdown.ydb*/
;




select d2_long,d1_float,count(*) as cnt,
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
    
from ydb_all_type_txt group by d2_long,d1_float order by sum(c4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,d2_long,d1_float limit 10;



/*ydb.pushdown('->')*/
select d2_long,d1_float,count(*) as cnt,
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
    
from ydb_all_type where ydbpartion='3000w' group by d2_long,d1_float order by sum(c4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,d2_long,d1_float limit 10
/*('<-')pushdown.ydb*/
;





select d4_string,d1_long,d2_float,d3_double,count(*) as cnt,
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
    
from ydb_all_type_txt group by d4_string,d1_long,d2_float,d3_double order by sum(c4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,d4_string,d1_long,d2_float,d3_double limit 10;



/*ydb.pushdown('->')*/
select d4_string,d1_long,d2_float,d3_double,count(*) as cnt,
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
    
from ydb_all_type where ydbpartion='3000w' group by d4_string,d1_long,d2_float,d3_double order by sum(c4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,d4_string,d1_long,d2_float,d3_double limit 10
/*('<-')pushdown.ydb*/
;




select c4_string,count(*) as cnt,
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type_txt group by c4_string order by sum(d4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,c4_string limit 10;



/*ydb.pushdown('->')*/

select c4_string,count(*) as cnt,
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type where ydbpartion='3000w' group by c4_string order by sum(d4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,c4_string limit 10
/*('<-')pushdown.ydb*/
;





select c2_long,c1_float,count(*) as cnt,
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type_txt group by c2_long,c1_float order by sum(d4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,c2_long,c1_float limit 10;


/*ydb.pushdown('->')*/
select c2_long,c1_float,count(*) as cnt,
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type where ydbpartion='3000w' group by c2_long,c1_float order by sum(d4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,c2_long,c1_float limit 10
/*('<-')pushdown.ydb*/
;





select c4_string,c1_long,c2_float,c3_double,count(*) as cnt,
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type_txt group by c4_string,c1_long,c2_float,c3_double order by sum(d4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,c4_string,c1_long,c2_float,c3_double limit 10;



/*ydb.pushdown('->')*/
select c4_string,c1_long,c2_float,c3_double,count(*) as cnt,
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type where ydbpartion='3000w' group by c4_string,c1_long,c2_float,c3_double order by sum(d4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,c4_string,c1_long,c2_float,c3_double limit 10
/*('<-')pushdown.ydb*/
;




select c4_double,count(*)  as cnt,
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type_txt group by c4_double order by sum(d4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,c4_double limit 10;



/*ydb.pushdown('->')*/
select c4_double,count(*)  as cnt,
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type where ydbpartion='3000w' group by c4_double order by sum(d4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,c4_double limit 10
/*('<-')pushdown.ydb*/
;































select count(*),
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
from ydb_all_type_txt limit 10;


select 
        sum(cast(r[0] as bigint)) as cnt,
        sum(cast(r[1] as double)),sum(cast(r[2] as double)),max(cast(r[3] as double)),min(cast(r[4] as double)),
        sum(cast(r[5] as double)),sum(cast(r[6] as double)),max(cast(r[7] as double)),min(cast(r[8] as double)),
        sum(cast(r[9] as double)),sum(cast(r[10] as double)),max(cast(r[11] as double)),min(cast(r[12] as double)),
        sum(cast(r[13] as double)),sum(cast(r[14] as double)),max(cast(r[15] as double)),min(cast(r[16] as double)),
        sum(cast(r[17] as double)),sum(cast(r[18] as double)),max(cast(r[19] as double)),min(cast(r[20] as double)),
        sum(cast(r[21] as double)),sum(cast(r[22] as double)),max(cast(r[23] as double)),min(cast(r[24] as double)),
        sum(cast(r[25] as double)),sum(cast(r[26] as double)),max(cast(r[27] as double)),min(cast(r[28] as double)),
        sum(cast(r[29] as double)),sum(cast(r[30] as double)),max(cast(r[31] as double)),min(cast(r[32] as double)),
        sum(cast(r[33] as double)),sum(cast(r[34] as double)),max(cast(r[35] as double)),min(cast(r[36] as double)),
        sum(cast(r[37] as double)),sum(cast(r[38] as double)),max(cast(r[39] as double)),min(cast(r[40] as double)),
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)),max(cast(r[79] as double)),min(cast(r[80] as double))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string) from ydb_all_type where ydbpartion=\'3000w\'   ','segment')
limit 10;





select count(*),
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type_txt limit 10;



select 
        sum(cast(r[0] as bigint)) as cnt,
        sum(cast(r[1] as double)),sum(cast(r[2] as double)),max(cast(r[3] as double)),min(cast(r[4] as double)),
        sum(cast(r[5] as double)),sum(cast(r[6] as double)),max(cast(r[7] as double)),min(cast(r[8] as double)),
        sum(cast(r[9] as double)),sum(cast(r[10] as double)),max(cast(r[11] as double)),min(cast(r[12] as double)),
        sum(cast(r[13] as double)),sum(cast(r[14] as double)),max(cast(r[15] as double)),min(cast(r[16] as double)),
        sum(cast(r[17] as double)),sum(cast(r[18] as double)),max(cast(r[19] as double)),min(cast(r[20] as double)),
        sum(cast(r[21] as double)),sum(cast(r[22] as double)),max(cast(r[23] as double)),min(cast(r[24] as double)),
        sum(cast(r[25] as double)),sum(cast(r[26] as double)),max(cast(r[27] as double)),min(cast(r[28] as double)),
        sum(cast(r[29] as double)),sum(cast(r[30] as double)),max(cast(r[31] as double)),min(cast(r[32] as double)),
        sum(cast(r[33] as double)),sum(cast(r[34] as double)),max(cast(r[35] as double)),min(cast(r[36] as double)),
        sum(cast(r[37] as double)),sum(cast(r[38] as double)),max(cast(r[39] as double)),min(cast(r[40] as double)),
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)),max(cast(r[79] as double)),min(cast(r[80] as double))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string) from ydb_all_type where ydbpartion=\'3000w\'   ','segment')
limit 10 ;






select d4_double,count(*),
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
    
from ydb_all_type_txt group by d4_double order by sum(c4_double) desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9 limit 10;

select 
        r[93],
        sum(cast(r[0] as bigint)) as cnt,
        sum(cast(r[1] as double)),sum(cast(r[2] as double)),max(cast(r[3] as double)),min(cast(r[4] as double)),
        sum(cast(r[5] as double)),sum(cast(r[6] as double)),max(cast(r[7] as double)),min(cast(r[8] as double)),
        sum(cast(r[9] as double)),sum(cast(r[10] as double)),max(cast(r[11] as double)),min(cast(r[12] as double)),
        sum(cast(r[13] as double)),sum(cast(r[14] as double)),max(cast(r[15] as double)),min(cast(r[16] as double)),
        sum(cast(r[17] as double)),sum(cast(r[18] as double)),max(cast(r[19] as double)),min(cast(r[20] as double)),
        sum(cast(r[21] as double)),sum(cast(r[22] as double)),max(cast(r[23] as double)),min(cast(r[24] as double)),
        sum(cast(r[25] as double)),sum(cast(r[26] as double)),max(cast(r[27] as double)),min(cast(r[28] as double)),
        sum(cast(r[29] as double)),sum(cast(r[30] as double)),max(cast(r[31] as double)),min(cast(r[32] as double)),
        sum(cast(r[33] as double)),sum(cast(r[34] as double)),max(cast(r[35] as double)),min(cast(r[36] as double)),
        sum(cast(r[37] as double)),sum(cast(r[38] as double)),max(cast(r[39] as double)),min(cast(r[40] as double)),
        sum(cast(r[41] as double)),sum(cast(r[42] as double)) as ra1,max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)) as ra2,max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)) as ra3,max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)) as ra4,max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)) as ra5,max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)) as ra6,max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)) as ra7,max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)) as ra8,max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)) as ra9,max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string),d4_double from ydb_all_type where ydbpartion=\'3000w\' group by d4_double  ','segment')
group by r[93]  order by amtdouble desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9
limit 10;








select d4_string,count(*),
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
    
from ydb_all_type_txt group by d4_string order by sum(c4_double) desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9 limit 10;

select 
        r[93],
        sum(cast(r[0] as bigint)) as cnt,
        sum(cast(r[1] as double)),sum(cast(r[2] as double)),max(cast(r[3] as double)),min(cast(r[4] as double)),
        sum(cast(r[5] as double)),sum(cast(r[6] as double)),max(cast(r[7] as double)),min(cast(r[8] as double)),
        sum(cast(r[9] as double)),sum(cast(r[10] as double)),max(cast(r[11] as double)),min(cast(r[12] as double)),
        sum(cast(r[13] as double)),sum(cast(r[14] as double)),max(cast(r[15] as double)),min(cast(r[16] as double)),
        sum(cast(r[17] as double)),sum(cast(r[18] as double)),max(cast(r[19] as double)),min(cast(r[20] as double)),
        sum(cast(r[21] as double)),sum(cast(r[22] as double)),max(cast(r[23] as double)),min(cast(r[24] as double)),
        sum(cast(r[25] as double)),sum(cast(r[26] as double)),max(cast(r[27] as double)),min(cast(r[28] as double)),
        sum(cast(r[29] as double)),sum(cast(r[30] as double)),max(cast(r[31] as double)),min(cast(r[32] as double)),
        sum(cast(r[33] as double)),sum(cast(r[34] as double)),max(cast(r[35] as double)),min(cast(r[36] as double)),
        sum(cast(r[37] as double)),sum(cast(r[38] as double)),max(cast(r[39] as double)),min(cast(r[40] as double)),
        sum(cast(r[41] as double)),sum(cast(r[42] as double)) as ra1,max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)) as ra2,max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)) as ra3,max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)) as ra4,max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)) as ra5,max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)) as ra6,max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)) as ra7,max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)) as ra8,max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)) as ra9,max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string),d4_string from ydb_all_type where ydbpartion=\'3000w\' group by d4_string  ','segment')
group by r[93]  order by amtdouble desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9
limit 10;




select d2_long,d1_float,count(*) as cnt,
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
    
from ydb_all_type_txt group by d2_long,d1_float order by sum(c4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,d2_long,d1_float limit 10;

select 
        r[93],r[94],
        sum(cast(r[0] as bigint)) as cnt,
        sum(cast(r[1] as double)),sum(cast(r[2] as double)),max(cast(r[3] as double)),min(cast(r[4] as double)),
        sum(cast(r[5] as double)),sum(cast(r[6] as double)),max(cast(r[7] as double)),min(cast(r[8] as double)),
        sum(cast(r[9] as double)),sum(cast(r[10] as double)),max(cast(r[11] as double)),min(cast(r[12] as double)),
        sum(cast(r[13] as double)),sum(cast(r[14] as double)),max(cast(r[15] as double)),min(cast(r[16] as double)),
        sum(cast(r[17] as double)),sum(cast(r[18] as double)),max(cast(r[19] as double)),min(cast(r[20] as double)),
        sum(cast(r[21] as double)),sum(cast(r[22] as double)),max(cast(r[23] as double)),min(cast(r[24] as double)),
        sum(cast(r[25] as double)),sum(cast(r[26] as double)),max(cast(r[27] as double)),min(cast(r[28] as double)),
        sum(cast(r[29] as double)),sum(cast(r[30] as double)),max(cast(r[31] as double)),min(cast(r[32] as double)),
        sum(cast(r[33] as double)),sum(cast(r[34] as double)),max(cast(r[35] as double)),min(cast(r[36] as double)),
        sum(cast(r[37] as double)),sum(cast(r[38] as double)),max(cast(r[39] as double)),min(cast(r[40] as double)),
        sum(cast(r[41] as double)),sum(cast(r[42] as double)) as ra1,max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)) as ra2,max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)) as ra3,max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)) as ra4,max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)) as ra5,max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)) as ra6,max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)) as ra7,max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)) as ra8,max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)) as ra9,max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string),d2_long,d1_float from ydb_all_type where ydbpartion=\'3000w\' group by d2_long,d1_float  ','segment')
group by r[93],r[94]  order by amtdouble desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,cast(r[93] as bigint),cast(r[94] as float)
limit 10

;





select d4_string,d1_long,d2_float,d3_double,count(*) as cnt,
    count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),
    count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),
    count(c1_short),sum(c1_short),max(c1_short),min(c1_short),
    count(c2_short),sum(c2_short),max(c2_short),min(c2_short),
    count(c1_int),sum(c1_int),max(c1_int),min(c1_int),
    count(c2_int),sum(c2_int),max(c2_int),min(c2_int),
    count(c3_int),sum(c3_int),max(c3_int),min(c3_int),
    count(c4_int),sum(c4_int),max(c4_int),min(c4_int),
    count(c1_long),sum(c1_long),max(c1_long),min(c1_long),
    count(c2_long),sum(c2_long),max(c2_long),min(c2_long),
    count(c3_long),sum(c3_long)  as ra1,max(c3_long),min(c3_long),
    count(c4_long),sum(c4_long) as ra2,max(c4_long),min(c4_long),
    count(c1_float),sum(c1_float) as ra3,max(c1_float),min(c1_float),
    count(c2_float),sum(c2_float) as ra4,max(c2_float),min(c2_float),
    count(c3_float),sum(c3_float) as ra5,max(c3_float),min(c3_float),
    count(c4_float),sum(c4_float) as ra6,max(c4_float),min(c4_float),
    count(c1_double),sum(c1_double) as ra7,max(c1_double),min(c1_double),
    count(c2_double),sum(c2_double) as ra8,max(c2_double),min(c2_double),
    count(c3_double),sum(c3_double) as ra9,max(c3_double),min(c3_double),
    count(c4_double),sum(c4_double),max(c4_double),min(c4_double)
    
from ydb_all_type_txt group by d4_string,d1_long,d2_float,d3_double order by sum(c4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,d4_string,d1_long,d2_float,d3_double limit 10;

select 
        r[93],r[94],r[95],r[96],
        sum(cast(r[0] as bigint)) as cnt,
        sum(cast(r[1] as double)),sum(cast(r[2] as double)),max(cast(r[3] as double)),min(cast(r[4] as double)),
        sum(cast(r[5] as double)),sum(cast(r[6] as double)),max(cast(r[7] as double)),min(cast(r[8] as double)),
        sum(cast(r[9] as double)),sum(cast(r[10] as double)),max(cast(r[11] as double)),min(cast(r[12] as double)),
        sum(cast(r[13] as double)),sum(cast(r[14] as double)),max(cast(r[15] as double)),min(cast(r[16] as double)),
        sum(cast(r[17] as double)),sum(cast(r[18] as double)),max(cast(r[19] as double)),min(cast(r[20] as double)),
        sum(cast(r[21] as double)),sum(cast(r[22] as double)),max(cast(r[23] as double)),min(cast(r[24] as double)),
        sum(cast(r[25] as double)),sum(cast(r[26] as double)),max(cast(r[27] as double)),min(cast(r[28] as double)),
        sum(cast(r[29] as double)),sum(cast(r[30] as double)),max(cast(r[31] as double)),min(cast(r[32] as double)),
        sum(cast(r[33] as double)),sum(cast(r[34] as double)),max(cast(r[35] as double)),min(cast(r[36] as double)),
        sum(cast(r[37] as double)),sum(cast(r[38] as double)),max(cast(r[39] as double)),min(cast(r[40] as double)),
        sum(cast(r[41] as double)),sum(cast(r[42] as double)) as ra1,max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)) as ra2,max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)) as ra3,max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)) as ra4,max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)) as ra5,max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)) as ra6,max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)) as ra7,max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)) as ra8,max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)) as ra9,max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string),d4_string,d1_long,d2_float,d3_double from ydb_all_type where ydbpartion=\'3000w\' group by d4_string,d1_long,d2_float,d3_double  ','segment')
group by r[93],r[94],r[95],r[96]  order by amtdouble desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,r[93],cast(r[94] as bigint),cast(r[95] as float),cast(r[96] as double)
limit 10;







select c4_string,count(*) as cnt,
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type_txt group by c4_string order by sum(d4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,c4_string limit 10;


select 
        r[93],
        sum(cast(r[0] as bigint)) as cnt,
        sum(cast(r[1] as double)),sum(cast(r[2] as double)),max(cast(r[3] as double)),min(cast(r[4] as double)),
        sum(cast(r[5] as double)),sum(cast(r[6] as double)),max(cast(r[7] as double)),min(cast(r[8] as double)),
        sum(cast(r[9] as double)),sum(cast(r[10] as double)),max(cast(r[11] as double)),min(cast(r[12] as double)),
        sum(cast(r[13] as double)),sum(cast(r[14] as double)),max(cast(r[15] as double)),min(cast(r[16] as double)),
        sum(cast(r[17] as double)),sum(cast(r[18] as double)),max(cast(r[19] as double)),min(cast(r[20] as double)),
        sum(cast(r[21] as double)),sum(cast(r[22] as double)),max(cast(r[23] as double)),min(cast(r[24] as double)),
        sum(cast(r[25] as double)),sum(cast(r[26] as double)),max(cast(r[27] as double)),min(cast(r[28] as double)),
        sum(cast(r[29] as double)),sum(cast(r[30] as double)),max(cast(r[31] as double)),min(cast(r[32] as double)),
        sum(cast(r[33] as double)),sum(cast(r[34] as double)),max(cast(r[35] as double)),min(cast(r[36] as double)),
        sum(cast(r[37] as double)),sum(cast(r[38] as double)),max(cast(r[39] as double)),min(cast(r[40] as double)),
        sum(cast(r[41] as double)),sum(cast(r[42] as double)) as ra1,max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)) as ra2,max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)) as ra3,max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)) as ra4,max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)) as ra5,max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)) as ra6,max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)) as ra7,max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)) as ra8,max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)) as ra9,max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string),c4_string from ydb_all_type where ydbpartion=\'3000w\' group by c4_string  ','segment')
group by r[93]  order by amtdouble desc, cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,r[93]
limit 10;






select c2_long,c1_float,count(*) as cnt,
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type_txt group by c2_long,c1_float order by sum(d4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,c2_long,c1_float limit 10;

select 
        r[93],r[94],
        sum(cast(r[0] as bigint)) as cnt,
        sum(cast(r[1] as double)),sum(cast(r[2] as double)),max(cast(r[3] as double)),min(cast(r[4] as double)),
        sum(cast(r[5] as double)),sum(cast(r[6] as double)),max(cast(r[7] as double)),min(cast(r[8] as double)),
        sum(cast(r[9] as double)),sum(cast(r[10] as double)),max(cast(r[11] as double)),min(cast(r[12] as double)),
        sum(cast(r[13] as double)),sum(cast(r[14] as double)),max(cast(r[15] as double)),min(cast(r[16] as double)),
        sum(cast(r[17] as double)),sum(cast(r[18] as double)),max(cast(r[19] as double)),min(cast(r[20] as double)),
        sum(cast(r[21] as double)),sum(cast(r[22] as double)),max(cast(r[23] as double)),min(cast(r[24] as double)),
        sum(cast(r[25] as double)),sum(cast(r[26] as double)),max(cast(r[27] as double)),min(cast(r[28] as double)),
        sum(cast(r[29] as double)),sum(cast(r[30] as double)),max(cast(r[31] as double)),min(cast(r[32] as double)),
        sum(cast(r[33] as double)),sum(cast(r[34] as double)),max(cast(r[35] as double)),min(cast(r[36] as double)),
        sum(cast(r[37] as double)),sum(cast(r[38] as double)),max(cast(r[39] as double)),min(cast(r[40] as double)),
        sum(cast(r[41] as double)),sum(cast(r[42] as double)) as ra1,max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)) as ra2,max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)) as ra3,max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)) as ra4,max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)) as ra5,max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)) as ra6,max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)) as ra7,max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)) as ra8,max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)) as ra9,max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string),c2_long,c1_float from ydb_all_type where ydbpartion=\'3000w\' group by c2_long,c1_float  ','segment')
group by r[93],r[94]  order by amtdouble desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,cast(r[93] as bigint),cast(r[94] as float)
limit 10;

















select c4_string,c1_long,c2_float,c3_double,count(*) as cnt,
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type_txt group by c4_string,c1_long,c2_float,c3_double order by sum(d4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,c4_string,c1_long,c2_float,c3_double limit 10;

select 
        r[93],r[94],r[95],r[96],
        sum(cast(r[0] as bigint)) as cnt,
        sum(cast(r[1] as double)),sum(cast(r[2] as double)),max(cast(r[3] as double)),min(cast(r[4] as double)),
        sum(cast(r[5] as double)),sum(cast(r[6] as double)),max(cast(r[7] as double)),min(cast(r[8] as double)),
        sum(cast(r[9] as double)),sum(cast(r[10] as double)),max(cast(r[11] as double)),min(cast(r[12] as double)),
        sum(cast(r[13] as double)),sum(cast(r[14] as double)),max(cast(r[15] as double)),min(cast(r[16] as double)),
        sum(cast(r[17] as double)),sum(cast(r[18] as double)),max(cast(r[19] as double)),min(cast(r[20] as double)),
        sum(cast(r[21] as double)),sum(cast(r[22] as double)),max(cast(r[23] as double)),min(cast(r[24] as double)),
        sum(cast(r[25] as double)),sum(cast(r[26] as double)),max(cast(r[27] as double)),min(cast(r[28] as double)),
        sum(cast(r[29] as double)),sum(cast(r[30] as double)),max(cast(r[31] as double)),min(cast(r[32] as double)),
        sum(cast(r[33] as double)),sum(cast(r[34] as double)),max(cast(r[35] as double)),min(cast(r[36] as double)),
        sum(cast(r[37] as double)),sum(cast(r[38] as double)),max(cast(r[39] as double)),min(cast(r[40] as double)),
        sum(cast(r[41] as double)),sum(cast(r[42] as double)) as ra1,max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)) as ra2,max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)) as ra3,max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)) as ra4,max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)) as ra5,max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)) as ra6,max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)) as ra7,max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)) as ra8,max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)) as ra9,max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string),c4_string,c1_long,c2_float,c3_double from ydb_all_type where ydbpartion=\'3000w\' group by c4_string,c1_long,c2_float,c3_double  ','segment')
group by r[93],r[94],r[95],r[96]  order by amtdouble desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,r[93],cast(r[94] as bigint),cast(r[95] as float),cast(r[96] as double)
limit 10;







select c4_double,count(*)  as cnt,
    count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),
    count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),
    count(d1_short),sum(d1_short),max(d1_short),min(d1_short),
    count(d2_short),sum(d2_short),max(d2_short),min(d2_short),
    count(d1_int),sum(d1_int),max(d1_int),min(d1_int),
    count(d2_int),sum(d2_int),max(d2_int),min(d2_int),
    count(d3_int),sum(d3_int),max(d3_int),min(d3_int),
    count(d4_int),sum(d4_int),max(d4_int),min(d4_int),
    count(d1_long),sum(d1_long),max(d1_long),min(d1_long),
    count(d2_long),sum(d2_long),max(d2_long),min(d2_long),
    count(d3_long),sum(d3_long) as ra1,max(d3_long),min(d3_long),
    count(d4_long),sum(d4_long) as ra2,max(d4_long),min(d4_long),
    count(d1_float),sum(d1_float) as ra3,max(d1_float),min(d1_float),
    count(d2_float),sum(d2_float) as ra4,max(d2_float),min(d2_float),
    count(d3_float),sum(d3_float) as ra5,max(d3_float),min(d3_float),
    count(d4_float),sum(d4_float) as ra6,max(d4_float),min(d4_float),
    count(d1_double),sum(d1_double) as ra7,max(d1_double),min(d1_double),
    count(d2_double),sum(d2_double) as ra8,max(d2_double),min(d2_double),
    count(d3_double),sum(d3_double) as ra9,max(d3_double),min(d3_double),
    count(d4_double),sum(d4_double),max(d4_double),min(d4_double)
    
from ydb_all_type_txt group by c4_double order by sum(d4_double) desc,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,c4_double limit 10;

select 
        r[93],
        sum(cast(r[0] as bigint)) as cnt,
        sum(cast(r[1] as double)),sum(cast(r[2] as double)),max(cast(r[3] as double)),min(cast(r[4] as double)),
        sum(cast(r[5] as double)),sum(cast(r[6] as double)),max(cast(r[7] as double)),min(cast(r[8] as double)),
        sum(cast(r[9] as double)),sum(cast(r[10] as double)),max(cast(r[11] as double)),min(cast(r[12] as double)),
        sum(cast(r[13] as double)),sum(cast(r[14] as double)),max(cast(r[15] as double)),min(cast(r[16] as double)),
        sum(cast(r[17] as double)),sum(cast(r[18] as double)),max(cast(r[19] as double)),min(cast(r[20] as double)),
        sum(cast(r[21] as double)),sum(cast(r[22] as double)),max(cast(r[23] as double)),min(cast(r[24] as double)),
        sum(cast(r[25] as double)),sum(cast(r[26] as double)),max(cast(r[27] as double)),min(cast(r[28] as double)),
        sum(cast(r[29] as double)),sum(cast(r[30] as double)),max(cast(r[31] as double)),min(cast(r[32] as double)),
        sum(cast(r[33] as double)),sum(cast(r[34] as double)),max(cast(r[35] as double)),min(cast(r[36] as double)),
        sum(cast(r[37] as double)),sum(cast(r[38] as double)),max(cast(r[39] as double)),min(cast(r[40] as double)),
        sum(cast(r[41] as double)),sum(cast(r[42] as double)) as ra1,max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)) as ra2,max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)) as ra3,max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)) as ra4,max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)) as ra5,max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)) as ra6,max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)) as ra7,max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)) as ra8,max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)) as ra9,max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string),c4_double from ydb_all_type where ydbpartion=\'3000w\' group by c4_double  ','segment')
group by r[93]  order by amtdouble desc ,cnt desc,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,cast(r[93] as double)
limit 10;








