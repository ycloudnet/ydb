drop table lineitem;
drop table part;
drop table supplier;
drop table partsupp;
drop table nation;
drop table region;
drop table orders;
drop table customer;



create external table lineitem (
l_orderkey int,
l_partkey int,
l_suppkey int,
l_linenumber int,
l_quantity double,
l_extendedprice double,
l_discount double,
l_tax double,
l_returnflag string,
l_linestatus string,
l_shipdate string,
l_commitdate string,
l_receiptdate string,
l_shipinstruct string,
l_shipmode string,
l_comment string)

 row format delimited fields terminated by '|' 

 stored as 
    INPUTFORMAT 'cn.net.ycloud.ydb.handle.YdbCombineInputFormat'
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 
 location '/tpch/lineitem'
 TBLPROPERTIES (
    'ydb.combine.input.format.raw.format'='org.apache.hadoop.mapred.TextInputFormat'
)
;


create external table part (
p_partkey int,
p_name string,
p_mfgr string,
p_brand string,
p_type string,
p_size int,
p_container string,
p_retailprice double,
p_comment string) row format delimited fields terminated by '|'  stored as 
    INPUTFORMAT 'cn.net.ycloud.ydb.handle.YdbCombineInputFormat'
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 
    location '/tpch/part'
     TBLPROPERTIES (
    'ydb.combine.input.format.raw.format'='org.apache.hadoop.mapred.TextInputFormat'
)
    ;

create external table supplier (
s_suppkey int,
s_name string,
s_address string,
s_nationkey int,
s_phone string,
s_acctbal double,
s_comment string) row format delimited fields terminated by '|'  stored as 
    INPUTFORMAT 'cn.net.ycloud.ydb.handle.YdbCombineInputFormat'
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 
    location '/tpch/supplier'
     TBLPROPERTIES (
    'ydb.combine.input.format.raw.format'='org.apache.hadoop.mapred.TextInputFormat'
)
    ;

create external table partsupp (
ps_partkey int,
ps_suppkey int,
ps_availqty int,
ps_supplycost double,
ps_comment string) row format delimited fields terminated by '|'  stored as 
    INPUTFORMAT 'cn.net.ycloud.ydb.handle.YdbCombineInputFormat'
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
    location'/tpch/partsupp'
     TBLPROPERTIES (
    'ydb.combine.input.format.raw.format'='org.apache.hadoop.mapred.TextInputFormat'
)
    ;

create external table nation (
n_nationkey int,
n_name string,
n_regionkey int,
n_comment string) row format delimited fields terminated by '|'  stored as 
    INPUTFORMAT 'cn.net.ycloud.ydb.handle.YdbCombineInputFormat'
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  
    location '/tpch/nation'
     TBLPROPERTIES (
    'ydb.combine.input.format.raw.format'='org.apache.hadoop.mapred.TextInputFormat'
)
    ;

create external table region (
r_regionkey int,
r_name string,
r_comment string) row format delimited fields terminated by '|'  stored as 
    INPUTFORMAT 'cn.net.ycloud.ydb.handle.YdbCombineInputFormat'
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 
    location '/tpch/region'
     TBLPROPERTIES (
    'ydb.combine.input.format.raw.format'='org.apache.hadoop.mapred.TextInputFormat'
)
    ;
    
    
    create external table orders (
 o_orderkey int,
 o_custkey int,
 o_orderstatus string,
 o_totalprice double,
 o_orderdate string,
 o_orderpriority string,
 o_clerk string,
 o_shippriority int,
 o_comment string) row format delimited fields terminated by '|' stored as 
    INPUTFORMAT 'cn.net.ycloud.ydb.handle.YdbCombineInputFormat'
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  location '/tpch/orders'
     TBLPROPERTIES (
    'ydb.combine.input.format.raw.format'='org.apache.hadoop.mapred.TextInputFormat'
)
    ;
create external table customer (
 c_custkey int,
 c_name string,
 c_address string,
 c_nationkey int,
 c_phone string,
 c_acctbal double,
 c_mktsegment string,
 c_comment string) row format delimited fields terminated by '|' stored as 
    INPUTFORMAT 'cn.net.ycloud.ydb.handle.YdbCombineInputFormat'
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  location '/tpch/customer'
     TBLPROPERTIES (
    'ydb.combine.input.format.raw.format'='org.apache.hadoop.mapred.TextInputFormat'
);



/*ydb.pushdown('->')*/
create table lineitem_ydb(
l_orderkey tint,
l_partkey tint,
l_suppkey tint,
l_linenumber tint,
l_quantity tdouble,
l_extendedprice tdouble,
l_discount tdouble,
l_tax tdouble,
l_returnflag string,
l_linestatus string,
l_shipdate string,
l_commitdate string,
l_receiptdate string,
l_shipinstruct string,
l_shipmode string,
l_comment string
)
/*('<-')pushdown.ydb*/;






/*ydb.pushdown('->')*/

create table part_ydb (
p_partkey tint,
p_name string,
p_mfgr string,
p_brand string,
p_type string,
p_size tint,
p_container string,
p_retailprice tdouble,
p_comment string) 
/*('<-')pushdown.ydb*/;






/*ydb.pushdown('->')*/

create table supplier_ydb (
s_suppkey tint,
s_name string,
s_address string,
s_nationkey tint,
s_phone string,
s_acctbal tdouble,
s_comment string)
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/

create table partsupp_ydb (
ps_partkey tint,
ps_suppkey tint,
ps_availqty tint,
ps_supplycost tdouble,
ps_comment string) /*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/

create table nation_ydb (
n_nationkey tint,
n_name string,
n_regionkey tint,
n_comment string) 

/*('<-')pushdown.ydb*/;




/*ydb.pushdown('->')*/

create table region_ydb (
r_regionkey tint,
r_name string,
r_comment string) 
/*('<-')pushdown.ydb*/;
;






/*ydb.pushdown('->')*/

    create  table orders_ydb (
 o_orderkey tint,
 o_custkey tint,
 o_orderstatus string,
 o_totalprice tdouble,
 o_orderdate string,
 o_orderpriority string,
 o_clerk string,
 o_shippriority tint,
 o_comment string) 
/*('<-')pushdown.ydb*/;


    
/*ydb.pushdown('->')*/

create  table customer_ydb (
 c_custkey tint,
 c_name string,
 c_address string,
 c_nationkey tint,
 c_phone string,
 c_acctbal tdouble,
 c_mktsegment string,
 c_comment string)
/*('<-')pushdown.ydb*/;


insert overwrite table  ydbpartion 
 select 'lineitem_ydb', 'ydb_default_partion', '',
    YROW(
    'l_orderkey',l_orderkey,
    'l_partkey',l_partkey,
    'l_suppkey',l_suppkey,
    'l_linenumber',l_linenumber,    
    'l_quantity',l_quantity,    
    'l_extendedprice',l_extendedprice,   
    'l_discount',l_discount, 
    'l_tax',l_tax, 
    'l_returnflag',l_returnflag   ,
'l_linestatus',l_linestatus, 
'l_linestatus',l_linestatus, 
'l_shipdate',l_shipdate, 
'l_commitdate',l_commitdate, 
'l_receiptdate',l_receiptdate, 
'l_shipinstruct',l_shipinstruct, 
'l_shipmode',l_shipmode,  

    'l_comment',l_comment   
    
    )
from lineitem;


insert overwrite table  ydbpartion 
 select 'part_ydb', 'ydb_default_partion', '',
    YROW(
    'p_partkey',p_partkey,
    'p_name',p_name,
    'p_mfgr',p_mfgr,
    'p_brand',p_brand,    
    'p_type',p_type,    
    'p_size',p_size,   
    'p_container',p_container, 
    'p_retailprice',p_retailprice, 
    'p_comment',p_comment   
    )
from part;

insert overwrite table  ydbpartion 
 select 'supplier_ydb', 'ydb_default_partion', '',
    YROW(
    's_suppkey',s_suppkey,
    's_name',s_name,
    's_address',s_address,
    's_nationkey',s_nationkey,    
    's_phone',s_phone,    
    's_acctbal',s_acctbal,   
    's_comment',s_comment   
    )
from supplier;





insert overwrite table  ydbpartion 
 select 'partsupp_ydb', 'ydb_default_partion', '',
    YROW(
    'ps_partkey',ps_partkey,
    'ps_suppkey',ps_suppkey,
    'ps_availqty',ps_availqty,
    'ps_supplycost',ps_supplycost,    
    'ps_comment',ps_comment   
    )
from partsupp;


insert overwrite table  ydbpartion 
 select 'nation_ydb', 'ydb_default_partion', '',
    YROW(
    'n_nationkey',n_nationkey,
    'n_name',n_name,
    'n_regionkey',n_regionkey,
    'n_comment',n_comment   
    )
from nation;


insert overwrite table  ydbpartion 
 select 'region_ydb', 'ydb_default_partion', '',
    YROW(
    'r_regionkey',r_regionkey,
    'r_name',r_name,
    'r_comment',r_comment   
    )
from region;



insert overwrite table  ydbpartion 
 select 'orders_ydb', 'ydb_default_partion', '',
    YROW(
    'o_orderkey',o_orderkey,
    'o_custkey',o_custkey,
    'o_orderstatus',o_orderstatus,
    'o_totalprice',o_totalprice,
    'o_orderdate',o_orderdate,
    'o_orderpriority',o_orderpriority,
    'o_clerk',o_clerk,
    'o_shippriority',o_shippriority   ,
    'o_comment',o_comment 
    )
from orders;


insert overwrite table  ydbpartion 
 select 'customer_ydb', 'ydb_default_partion', '',
    YROW(
    'c_custkey',c_custkey,
    'c_name',c_name,
    'c_address',c_address,
    'c_nationkey',c_nationkey,    
    'c_phone',c_phone,
    'c_acctbal',c_acctbal,
    'c_mktsegment',c_mktsegment,
    'c_comment',c_comment
    
    )
from customer;
