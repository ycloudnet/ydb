--q1 test----
select 
  l_returnflag,l_linestatus,sum(l_quantity) as s1,sum(l_extendedprice)  as s2,avg(l_quantity) as s3,avg(l_extendedprice) as s4,avg(l_discount),count(*) as s5 
from 
  lineitem 
where 
  l_shipdate<='1998-09-02' 
group by l_returnflag,l_linestatus 
order by l_returnflag,l_linestatus  limit 100;

/*ydb.pushdown('->')*/
select 
  l_returnflag,l_linestatus,sum(l_quantity) as s1,sum(l_extendedprice)  as s2,avg(l_quantity) as s3,avg(l_extendedprice) as s4,avg(l_discount),count(*) as s5 
from 
  lineitem_ydb 
where 
  l_shipdate<='1998-09-02' 
group by l_returnflag,l_linestatus 
order by l_returnflag,l_linestatus  limit 100

/*('<-')pushdown.ydb*/;


--q2 test----


with q2_minimum_cost_supplier_tmp1 as (select 
  s.s_acctbal, s.s_name, n.n_name, p.p_partkey, ps.ps_supplycost, p.p_mfgr, s.s_address, s.s_phone, s.s_comment 
from 
  nation n join region r 
  on 
    n.n_regionkey = r.r_regionkey and r.r_name = 'EUROPE' 
  join supplier s 
  on 
s.s_nationkey = n.n_nationkey 
  join partsupp ps 
  on  
s.s_suppkey = ps.ps_suppkey 
  join part p 
  on 
    p.p_partkey = ps.ps_partkey and p.p_size = 15 and p.p_type like '%BRASS'),
 q2_minimum_cost_supplier_tmp2 as (
select 
  p_partkey, min(ps_supplycost)  as ps_min_supplycost
from  
  q2_minimum_cost_supplier_tmp1 
group by p_partkey
)
select 
  t1.s_acctbal, t1.s_name, t1.n_name, t1.p_partkey, t1.p_mfgr, t1.s_address, t1.s_phone, t1.s_comment 
from 
  q2_minimum_cost_supplier_tmp1 t1 join q2_minimum_cost_supplier_tmp2 t2 
on 
  t1.p_partkey = t2.p_partkey and t1.ps_supplycost=t2.ps_min_supplycost 
order by s_acctbal desc, n_name, s_name, p_partkey,p_mfgr,s_address,s_phone,s_comment
limit 100;





with 
y_nation as (
/*ydb.pushdown('->')*/
select n_name,n_regionkey,n_nationkey from nation_ydb
/*('<-')pushdown.ydb*/
),

y_region as (
/*ydb.pushdown('->')*/
select r_regionkey,r_name from region_ydb where r_name = 'EUROPE' 
/*('<-')pushdown.ydb*/
),

y_supplier as (
/*ydb.pushdown('->')*/
select   s_acctbal, s_name,s_address,s_phone, s_comment ,s_nationkey,s_suppkey
 from supplier_ydb  
/*('<-')pushdown.ydb*/
),

y_partsupp as (
/*ydb.pushdown('->')*/
select   ps_supplycost,ps_suppkey,ps_partkey
 from partsupp_ydb  
/*('<-')pushdown.ydb*/
),

y_part as (
/*ydb.pushdown('->')*/
select   p_partkey,p_mfgr,p_size,p_type
 from part_ydb   where p_size = 15 and p_type like '%BRASS'
/*('<-')pushdown.ydb*/
),

q2_minimum_cost_supplier_tmp1 as (select 
  s.s_acctbal, s.s_name, n.n_name, p.p_partkey, ps.ps_supplycost, p.p_mfgr, s.s_address, s.s_phone, s.s_comment 
from 
  y_nation n join y_region r 
  on 
    n.n_regionkey = r.r_regionkey 
  join y_supplier s 
  on 
s.s_nationkey = n.n_nationkey 
  join y_partsupp ps 
  on  
s.s_suppkey = ps.ps_suppkey 
  join y_part p 
  on 
    p.p_partkey = ps.ps_partkey ),
 q2_minimum_cost_supplier_tmp2 as (
select 
  p_partkey, min(ps_supplycost)  as ps_min_supplycost
from  
  q2_minimum_cost_supplier_tmp1 
group by p_partkey
)
select 
  t1.s_acctbal, t1.s_name, t1.n_name, t1.p_partkey, t1.p_mfgr, t1.s_address, t1.s_phone, t1.s_comment 
from 
  q2_minimum_cost_supplier_tmp1 t1 join q2_minimum_cost_supplier_tmp2 t2 
on 
  t1.p_partkey = t2.p_partkey and t1.ps_supplycost=t2.ps_min_supplycost 
order by s_acctbal desc, n_name, s_name, p_partkey,p_mfgr,s_address,s_phone,s_comment
limit 100;


--q3test-- 
select 
  l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, o_orderdate, o_shippriority 
from 
  customer c join orders o 
    on c.c_mktsegment = 'BUILDING' and c.c_custkey = o.o_custkey 
  join lineitem l 
    on l.l_orderkey = o.o_orderkey
where 
  o_orderdate < '1995-03-15' and l_shipdate > '1995-03-15' 
group by l_orderkey, o_orderdate, o_shippriority 
order by revenue desc, o_orderdate ,l_orderkey, o_shippriority 
limit 100;


with 
y_customer as (
/*ydb.pushdown('->')*/
select c_custkey from customer_ydb where c_mktsegment = 'BUILDING'
/*('<-')pushdown.ydb*/
),
y_lineitem as (
/*ydb.pushdown('->')*/
select l_orderkey,l_extendedprice,l_discount from lineitem_ydb where l_shipdate > '1995-03-15'
/*('<-')pushdown.ydb*/
)
,
y_orders as (
/*ydb.pushdown('->')*/
select o_orderdate, o_shippriority,o_orderkey,o_custkey  from orders_ydb where o_orderdate < '1995-03-15' 
/*('<-')pushdown.ydb*/
)
select 
  l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, o_orderdate, o_shippriority 
from 
  y_customer c join y_orders o 
    on  c.c_custkey = o.o_custkey 
  join y_lineitem l 
    on l.l_orderkey = o.o_orderkey

group by l_orderkey, o_orderdate, o_shippriority 
order by revenue desc, o_orderdate ,l_orderkey, o_shippriority 
limit 100;


--q4 
with q4_order_priority_tmp as 
(
select 
  DISTINCT l_orderkey as o_orderkey   
from 
  lineitem 
where 
  l_commitdate < l_receiptdate
)

select o_orderpriority, count(*) as order_count 
from 
  orders o join q4_order_priority_tmp t 
  on 
o.o_orderkey = t.o_orderkey and o.o_orderdate >= '1993-07-01' and o.o_orderdate < '1993-10-01' 
group by o_orderpriority 
order by o_orderpriority limit 100
;



with 

y_lineitem as (
/*ydb.pushdown('->')*/
select l_orderkey,l_commitdate,l_receiptdate  from lineitem_ydb 
/*('<-')pushdown.ydb*/
),

y_orders as (
/*ydb.pushdown('->')*/
select o_orderpriority,o_orderkey,o_orderdate  from orders_ydb where o_orderdate >= '1993-07-01' and o_orderdate < '1993-10-01' 
/*('<-')pushdown.ydb*/
),

q4_order_priority_tmp as 
(
select 
  DISTINCT l_orderkey as o_orderkey   
from 
  y_lineitem 
where 
  l_commitdate < l_receiptdate
)

select o_orderpriority, count(*) as order_count 
from 
  y_orders o join q4_order_priority_tmp t 
  on 
o.o_orderkey = t.o_orderkey 
group by o_orderpriority 
order by o_orderpriority limit 100
;




--q5

select 
  n_name, sum(l_extendedprice * (1 - l_discount)) as revenue 
from
  customer c join
    ( select n_name, l_extendedprice, l_discount, s_nationkey, o_custkey from orders o join
      ( select n_name, l_extendedprice, l_discount, l_orderkey, s_nationkey from lineitem l join
        ( select n_name, s_suppkey, s_nationkey from supplier s join
          ( select n_name, n_nationkey 
            from nation n join region r 
            on n.n_regionkey = r.r_regionkey and r.r_name = 'ASIA'
          ) n1 on s.s_nationkey = n1.n_nationkey
        ) s1 on l.l_suppkey = s1.s_suppkey
      ) l1 on l1.l_orderkey = o.o_orderkey and o.o_orderdate >= '1994-01-01' 
              and o.o_orderdate < '1995-01-01'
) o1 
on c.c_nationkey = o1.s_nationkey and c.c_custkey = o1.o_custkey
group by n_name 
order by revenue desc ,n_name limit 100;


with 

y_lineitem as (
/*ydb.pushdown('->')*/
select l_extendedprice,l_discount,l_orderkey ,l_suppkey from lineitem_ydb 
/*('<-')pushdown.ydb*/
),

y_orders as (
/*ydb.pushdown('->')*/
select o_custkey,o_orderkey,o_orderdate  from orders_ydb  where o_orderdate >= '1994-01-01'    and o_orderdate < '1995-01-01'
/*('<-')pushdown.ydb*/
),
y_supplier as (
/*ydb.pushdown('->')*/
select s_nationkey,s_suppkey  from supplier_ydb  
/*('<-')pushdown.ydb*/
),
y_nation as (
/*ydb.pushdown('->')*/
select n_name,n_nationkey,n_regionkey  from nation_ydb  
/*('<-')pushdown.ydb*/
),
y_region as (
/*ydb.pushdown('->')*/
select r_regionkey  from region_ydb  where r_name = 'ASIA'
/*('<-')pushdown.ydb*/
),
y_customer as (
/*ydb.pushdown('->')*/
select c_nationkey,c_custkey  from customer_ydb  where r_name = 'ASIA'
/*('<-')pushdown.ydb*/
)

select 
  n_name, sum(l_extendedprice * (1 - l_discount)) as revenue 
from
  customer c join
    ( select n_name, l_extendedprice, l_discount, s_nationkey, o_custkey from y_orders o join
      ( select n_name, l_extendedprice, l_discount, l_orderkey, s_nationkey from y_lineitem l join
        ( select n_name, s_suppkey, s_nationkey from y_supplier s join
          ( select n_name, n_nationkey 
            from y_nation n join y_region r 
            on n.n_regionkey = r.r_regionkey 
          ) n1 on s.s_nationkey = n1.n_nationkey
        ) s1 on l.l_suppkey = s1.s_suppkey
      ) l1 on l1.l_orderkey = o.o_orderkey 
) o1 
on c.c_nationkey = o1.s_nationkey and c.c_custkey = o1.o_custkey
group by n_name 
order by revenue desc ,n_name limit 100;

--q6 

select 
  sum(l_extendedprice*l_discount) as revenue
from 
  lineitem
where 
  l_shipdate >= '1994-01-01'
  and l_shipdate < '1995-01-01'
  and l_discount >= 0.05 and l_discount <= 0.07
  and l_quantity < 24
  limit 100
  ;
  
with 
y_lineitem as (
/*ydb.pushdown('->')*/
select l_extendedprice,l_discount from lineitem_ydb where 
  l_shipdate >= '1994-01-01'
  and l_shipdate < '1995-01-01'
  and l_discount >= 0.05 and l_discount <= 0.07
  and l_quantity < 24
/*('<-')pushdown.ydb*/
)  
  select 
  sum(l_extendedprice*l_discount) as revenue
from 
  y_lineitem limit 100
;

---q7

with 
 q7_volume_shipping_tmp as (
select 
  * 
from
  (
    select 
      n1.n_name as supp_nation, n2.n_name as cust_nation, n1.n_nationkey as s_nationkey,      
      n2.n_nationkey as c_nationkey
from 
  nation n1 join nation n2 
  on 
    n1.n_name = 'FRANCE' and n2.n_name = 'GERMANY'
    UNION ALL
select 
  n1.n_name as supp_nation, n2.n_name as cust_nation, n1.n_nationkey as s_nationkey, 
  n2.n_nationkey as c_nationkey
from 
  nation n1 join nation n2 
  on 
    n2.n_name = 'FRANCE' and n1.n_name = 'GERMANY'
) a

)

select 
  supp_nation, cust_nation, l_year, sum(volume) as revenue
from 
  (
    select
      supp_nation, cust_nation, year(l_shipdate) as l_year, 
      l_extendedprice * (1 - l_discount) as volume
    from
      q7_volume_shipping_tmp t join
        (select l_shipdate, l_extendedprice, l_discount, c_nationkey, s_nationkey 
         from supplier s join
           (select l_shipdate, l_extendedprice, l_discount, l_suppkey, c_nationkey 
            from customer c join
              (select l_shipdate, l_extendedprice, l_discount, l_suppkey, o_custkey 
               from orders o join lineitem l 
               on 
                 o.o_orderkey = l.l_orderkey and l.l_shipdate >= '1995-01-01' 
                 and l.l_shipdate <= '1996-12-31'
               ) l1 on c.c_custkey = l1.o_custkey
            ) l2 on s.s_suppkey = l2.l_suppkey
         ) l3 on l3.c_nationkey = t.c_nationkey and l3.s_nationkey = t.s_nationkey
   ) shipping
group by supp_nation, cust_nation, l_year
order by supp_nation, cust_nation, l_year limit 100;


with 

y_lineitem as (
/*ydb.pushdown('->')*/
select l_orderkey,l_shipdate, l_extendedprice, l_discount,l_suppkey from lineitem_ydb where  l_shipdate >= '1995-01-01' and l_shipdate <= '1996-12-31'
/*('<-')pushdown.ydb*/
) ,

y_nation_frace as (
/*ydb.pushdown('->')*/
select n_name,n_nationkey from nation_ydb where n_name = 'FRANCE'
/*('<-')pushdown.ydb*/
)  ,
y_nation_geramny as (
/*ydb.pushdown('->')*/
select n_name,n_nationkey from nation_ydb where n_name = 'GERMANY'
/*('<-')pushdown.ydb*/
),  

 q7_volume_shipping_tmp as (
select 
  * 
from
  (
    select 
      n1.n_name as supp_nation, n2.n_name as cust_nation, n1.n_nationkey as s_nationkey,      
      n2.n_nationkey as c_nationkey
from 
  y_nation_frace n1 join y_nation_geramny n2 
    UNION ALL
select 
  n1.n_name as supp_nation, n2.n_name as cust_nation, n1.n_nationkey as s_nationkey, 
  n2.n_nationkey as c_nationkey
from 
  y_nation_geramny n1 join y_nation_frace n2 
) a

),

y_orders as (
/*ydb.pushdown('->')*/
select o_orderkey,o_custkey from orders_ydb
/*('<-')pushdown.ydb*/
)

select 
  supp_nation, cust_nation, l_year, sum(volume) as revenue
from 
  (
    select
      supp_nation, cust_nation, year(l_shipdate) as l_year, 
      l_extendedprice * (1 - l_discount) as volume
    from
      q7_volume_shipping_tmp t join
        (select l_shipdate, l_extendedprice, l_discount, c_nationkey, s_nationkey 
         from supplier s join
           (select l_shipdate, l_extendedprice, l_discount, l_suppkey, c_nationkey 
            from customer c join
              (select l_shipdate, l_extendedprice, l_discount, l_suppkey, o_custkey 
               from y_orders o join y_lineitem l 
               on 
                 o.o_orderkey = l.l_orderkey 
               ) l1 on c.c_custkey = l1.o_custkey
            ) l2 on s.s_suppkey = l2.l_suppkey
         ) l3 on l3.c_nationkey = t.c_nationkey and l3.s_nationkey = t.s_nationkey
   ) shipping
group by supp_nation, cust_nation, l_year
order by supp_nation, cust_nation, l_year limit 100;



---q8--
select 
  o_year, sum(case when nation = 'BRAZIL' then volume else 0.0 end) / sum(volume) as mkt_share
from 
  (
select 
  year(o_orderdate) as o_year, l_extendedprice * (1-l_discount) as volume, 
  n2.n_name as nation
    from
      nation n2 join
        (select o_orderdate, l_discount, l_extendedprice, s_nationkey 
         from supplier s join
          (select o_orderdate, l_discount, l_extendedprice, l_suppkey 
           from part p join
             (select o_orderdate, l_partkey, l_discount, l_extendedprice, l_suppkey 
              from lineitem l join
                (select o_orderdate, o_orderkey 
                 from orders o join
                   (select c.c_custkey 
                    from customer c join
                      (select n1.n_nationkey 
                       from nation n1 join region r
                       on n1.n_regionkey = r.r_regionkey and r.r_name = 'AMERICA'
                       ) n11 on c.c_nationkey = n11.n_nationkey
                    ) c1 on c1.c_custkey = o.o_custkey
                 ) o1 on l.l_orderkey = o1.o_orderkey and o1.o_orderdate >= '1995-01-01' 
                         and o1.o_orderdate < '1996-12-31'
              ) l1 on p.p_partkey = l1.l_partkey and p.p_type = 'ECONOMY ANODIZED STEEL'
           ) p1 on s.s_suppkey = p1.l_suppkey
        ) s1 on s1.s_nationkey = n2.n_nationkey
  ) all_nation
group by o_year
order by o_year limit 10;


with 

y_lineitem as (
/*ydb.pushdown('->')*/
select l_orderkey, l_extendedprice, l_discount,l_suppkey,l_partkey from lineitem_ydb 
/*('<-')pushdown.ydb*/
) ,
y_orders as (
/*ydb.pushdown('->')*/
select o_orderkey,o_orderdate,o_custkey from orders_ydb   where o_orderdate >= '1995-01-01' 
                         and o_orderdate < '1996-12-31'
/*('<-')pushdown.ydb*/
) ,
y_customer as (
/*ydb.pushdown('->')*/
select c_custkey,c_nationkey from customer_ydb 
/*('<-')pushdown.ydb*/
) ,

y_supplier as (
/*ydb.pushdown('->')*/
select s_suppkey,s_nationkey from supplier_ydb 
/*('<-')pushdown.ydb*/
) ,

y_part as (
/*ydb.pushdown('->')*/
select p_partkey from part_ydb where p_type = 'ECONOMY ANODIZED STEEL'
/*('<-')pushdown.ydb*/
) ,
y_nation as (
/*ydb.pushdown('->')*/
select n_nationkey,n_regionkey,n_name from nation_ydb 
/*('<-')pushdown.ydb*/
) ,

y_region as (
/*ydb.pushdown('->')*/
select r_regionkey from region_ydb where r_name = 'AMERICA'
/*('<-')pushdown.ydb*/
) 
select 
  o_year, sum(case when nation = 'BRAZIL' then volume else 0.0 end) / sum(volume) as mkt_share
from 
  (
select 
  year(o_orderdate) as o_year, l_extendedprice * (1-l_discount) as volume, 
  n2.n_name as nation
    from
      y_nation n2 join
        (select o_orderdate, l_discount, l_extendedprice, s_nationkey 
         from y_supplier s join
          (select o_orderdate, l_discount, l_extendedprice, l_suppkey 
           from y_part p join
             (select o_orderdate, l_partkey, l_discount, l_extendedprice, l_suppkey 
              from y_lineitem l join
                (select o_orderdate, o_orderkey 
                 from y_orders o join
                   (select c.c_custkey 
                    from y_customer c join
                      (select n1.n_nationkey 
                       from y_nation n1 join y_region r
                       on n1.n_regionkey = r.r_regionkey 
                       ) n11 on c.c_nationkey = n11.n_nationkey
                    ) c1 on c1.c_custkey = o.o_custkey
                 ) o1 on l.l_orderkey = o1.o_orderkey 
              ) l1 on p.p_partkey = l1.l_partkey 
           ) p1 on s.s_suppkey = p1.l_suppkey
        ) s1 on s1.s_nationkey = n2.n_nationkey
  ) all_nation
group by o_year
order by o_year limit 10;

---q9

select 
  nation, o_year, sum(amount) as sum_profit
from 
  (
select 
  n_name as nation, year(o_orderdate) as o_year, 
  l_extendedprice * (1 - l_discount) -  ps_supplycost * l_quantity as amount
    from
      orders o join
      (select l_extendedprice, l_discount, l_quantity, l_orderkey, n_name, ps_supplycost 
       from part p join
         (select l_extendedprice, l_discount, l_quantity, l_partkey, l_orderkey, 
                 n_name, ps_supplycost 
          from partsupp ps join
            (select l_suppkey, l_extendedprice, l_discount, l_quantity, l_partkey, 
                    l_orderkey, n_name 
             from
               (select s_suppkey, n_name 
                from nation n join supplier s on n.n_nationkey = s.s_nationkey
               ) s1 join lineitem l on s1.s_suppkey = l.l_suppkey
            ) l1 on ps.ps_suppkey = l1.l_suppkey and ps.ps_partkey = l1.l_partkey
         ) l2 on p.p_name like '%green%' and p.p_partkey = l2.l_partkey
     ) l3 on o.o_orderkey = l3.l_orderkey
  )profit
group by nation, o_year
order by nation, o_year desc limit 100;




with 

y_lineitem as (
/*ydb.pushdown('->')*/
select l_suppkey, l_extendedprice, l_discount, l_quantity, l_partkey, 
                    l_orderkey from lineitem_ydb 
/*('<-')pushdown.ydb*/
) ,

y_part as (
/*ydb.pushdown('->')*/
select p_name,p_partkey from part_ydb where p_name like '%green%'
/*('<-')pushdown.ydb*/
) ,

y_orders as (
/*ydb.pushdown('->')*/
select o_orderkey,o_orderdate from orders_ydb 
/*('<-')pushdown.ydb*/
) 
,

y_partsupp as (
/*ydb.pushdown('->')*/
select ps_suppkey,ps_partkey,ps_supplycost from partsupp_ydb 
/*('<-')pushdown.ydb*/
) ,
y_nation as (
/*ydb.pushdown('->')*/
select n_nationkey,n_name from nation_ydb 
/*('<-')pushdown.ydb*/
),
y_supplier as (
/*ydb.pushdown('->')*/
select s_suppkey,s_nationkey from supplier_ydb 
/*('<-')pushdown.ydb*/
) 

select 
  nation, o_year, sum(amount) as sum_profit
from 
  (
select 
  n_name as nation, year(o_orderdate) as o_year, 
  l_extendedprice * (1 - l_discount) -  ps_supplycost * l_quantity as amount
    from
      y_orders o join
      (select l_extendedprice, l_discount, l_quantity, l_orderkey, n_name, ps_supplycost 
       from y_part p join
         (select l_extendedprice, l_discount, l_quantity, l_partkey, l_orderkey, 
                 n_name, ps_supplycost 
          from y_partsupp ps join
            (select l_suppkey, l_extendedprice, l_discount, l_quantity, l_partkey, 
                    l_orderkey, n_name 
             from
               (select s_suppkey, n_name 
                from y_nation n join y_supplier s on n.n_nationkey = s.s_nationkey
               ) s1 join y_lineitem l on s1.s_suppkey = l.l_suppkey
            ) l1 on ps.ps_suppkey = l1.l_suppkey and ps.ps_partkey = l1.l_partkey
         ) l2 on  p.p_partkey = l2.l_partkey
     ) l3 on o.o_orderkey = l3.l_orderkey
  )profit
group by nation, o_year
order by nation, o_year desc limit 100;


--q10--

select 
  c_custkey, c_name, sum(l_extendedprice * (1 - l_discount)) as revenue, 
  c_acctbal, n_name, c_address, c_phone, c_comment
from
  customer c join orders o 
  on 
    c.c_custkey = o.o_custkey and o.o_orderdate >= '1993-10-01' and o.o_orderdate < '1994-01-01'
  join nation n 
  on 
    c.c_nationkey = n.n_nationkey
  join lineitem l 
  on 
    l.l_orderkey = o.o_orderkey and l.l_returnflag = 'R'
group by c_custkey, c_name, c_acctbal, c_phone, n_name, c_address, c_comment 
order by revenue desc, c_custkey, c_name ,c_acctbal, n_name, c_address, c_phone, c_comment
limit 20;


with
y_customer as (
/*ydb.pushdown('->')*/
select c_custkey,c_name,c_acctbal,c_nationkey, c_phone, c_address, c_comment from customer_ydb 
/*('<-')pushdown.ydb*/
),

y_orders as (
/*ydb.pushdown('->')*/
select o_custkey,o_orderkey from orders_ydb where o_orderdate >= '1993-10-01' and o_orderdate < '1994-01-01'
/*('<-')pushdown.ydb*/
),

y_nation as (
/*ydb.pushdown('->')*/
select n_nationkey,n_name from nation_ydb 
/*('<-')pushdown.ydb*/
),
y_lineitem as (
/*ydb.pushdown('->')*/
select l_discount,l_extendedprice,l_orderkey from lineitem_ydb where l_returnflag = 'R'
/*('<-')pushdown.ydb*/
)

select 
  c_custkey, c_name, sum(l_extendedprice * (1 - l_discount)) as revenue, 
  c_acctbal, n_name, c_address, c_phone, c_comment
from
  y_customer c join y_orders o 
  on 
    c.c_custkey = o.o_custkey 
  join y_nation n 
  on 
    c.c_nationkey = n.n_nationkey
  join y_lineitem l 
  on 
    l.l_orderkey = o.o_orderkey 
group by c_custkey, c_name, c_acctbal, c_phone, n_name, c_address, c_comment 
order by revenue desc, c_custkey, c_name ,c_acctbal, n_name, c_address, c_phone, c_comment
limit 20;

--q11--

with  q11_part_tmp as (
select 
  ps_partkey, sum(ps_supplycost * ps_availqty) as part_value 
from
  nation n join supplier s 
  on 
    s.s_nationkey = n.n_nationkey and n.n_name = 'GERMANY'
  join partsupp ps 
  on 
    ps.ps_suppkey = s.s_suppkey
group by ps_partkey

),
 q11_sum_tmp as (
select 
  sum(part_value) as total_value
from 
  q11_part_tmp)


select 
  ps_partkey, part_value as value
from
  (
    select ps_partkey, part_value, total_value
    from q11_part_tmp join q11_sum_tmp
  ) a
where part_value > total_value * 0.0001
order by value desc,ps_partkey limit 100;


with  
y_nation as (
/*ydb.pushdown('->')*/
select n_nationkey from nation_ydb where n_name = 'GERMANY'
/*('<-')pushdown.ydb*/
),
y_supplier as (
/*ydb.pushdown('->')*/
select s_nationkey,s_suppkey from supplier_ydb
/*('<-')pushdown.ydb*/
),
y_partsupp as (
/*ydb.pushdown('->')*/
select ps_suppkey,ps_partkey,ps_availqty,ps_supplycost from partsupp_ydb
/*('<-')pushdown.ydb*/
),

q11_part_tmp as (
select 
  ps_partkey, sum(ps_supplycost * ps_availqty) as part_value 
from
  y_nation n join y_supplier s 
  on 
    s.s_nationkey = n.n_nationkey 
  join y_partsupp ps 
  on 
    ps.ps_suppkey = s.s_suppkey
group by ps_partkey

),
 q11_sum_tmp as (
select 
  sum(part_value) as total_value
from 
  q11_part_tmp)


select 
  ps_partkey, part_value as value
from
  (
    select ps_partkey, part_value, total_value
    from q11_part_tmp join q11_sum_tmp
  ) a
where part_value > total_value * 0.0001
order by value desc,ps_partkey limit 100;

--q12

select 
  l_shipmode,
  sum(case
    when o_orderpriority ='1-URGENT'
         or o_orderpriority ='2-HIGH'
    then 1
    else 0
end
  ) as high_line_count,
  sum(case
    when o_orderpriority <> '1-URGENT'
         and o_orderpriority <> '2-HIGH'
    then 1
    else 0
end
  ) as low_line_count
from
  orders o join lineitem l 
  on 
    o.o_orderkey = l.l_orderkey and l.l_commitdate < l.l_receiptdate
and l.l_shipdate < l.l_commitdate and l.l_receiptdate >= '1994-01-01' 
and l.l_receiptdate < '1995-01-01'
where 
  l.l_shipmode = 'MAIL' or l.l_shipmode = 'SHIP'
group by l_shipmode
order by l_shipmode limit 100;



with  
y_orders as (
/*ydb.pushdown('->')*/
select o_orderpriority,o_orderkey from orders_ydb 
/*('<-')pushdown.ydb*/
),
y_lineitem as (
/*ydb.pushdown('->')*/
select l_shipmode,l_orderkey,l_commitdate,l_receiptdate,l_shipdate from lineitem_ydb where l_receiptdate >= '1994-01-01' 
and l_receiptdate < '1995-01-01' and  (l_shipmode = 'MAIL' or l_shipmode = 'SHIP') 
/*('<-')pushdown.ydb*/
)
select 
  l_shipmode,
  sum(case
    when o_orderpriority ='1-URGENT'
         or o_orderpriority ='2-HIGH'
    then 1
    else 0
end
  ) as high_line_count,
  sum(case
    when o_orderpriority <> '1-URGENT'
         and o_orderpriority <> '2-HIGH'
    then 1
    else 0
end
  ) as low_line_count
from
  y_orders o join y_lineitem l 
  on 
    o.o_orderkey = l.l_orderkey and l.l_commitdate < l.l_receiptdate
and l.l_shipdate < l.l_commitdate 
group by l_shipmode
order by l_shipmode limit 100;


--q13

select 
  c_count, count(*) as custdist
from 
  (select 
     c_custkey, count(o_orderkey) as c_count
   from 
     customer c left outer join orders o 
     on 
       c.c_custkey = o.o_custkey and not o.o_comment like '%special%requests%'
   group by c_custkey
   ) c_orders
group by c_count
order by custdist desc, c_count desc limit 100;


with  
y_customer as (
/*ydb.pushdown('->')*/
select c_custkey from customer_ydb 
/*('<-')pushdown.ydb*/
),
y_orders as (
/*ydb.pushdown('->')*/
select o_custkey,o_comment,o_orderkey from orders_ydb 
/*('<-')pushdown.ydb*/
)
select 
  c_count, count(*) as custdist
from 
  (select 
     c_custkey, count(o_orderkey) as c_count
   from 
     y_customer c left outer join y_orders o 
     on 
       c.c_custkey = o.o_custkey and not o.o_comment like '%special%requests%'
   group by c_custkey
   ) c_orders
group by c_count
order by custdist desc, c_count desc limit 100;


--q14

select 
  100.00 * sum(case
               when p_type like 'PROMO%'
               then l_extendedprice*(1-l_discount)
               else 0.0
               end
  ) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from 
  part p join lineitem l 
  on 
    l.l_partkey = p.p_partkey and l.l_shipdate >= '1995-09-01' and l.l_shipdate < '1995-10-01';
    
    
with  
y_lineitem as (
/*ydb.pushdown('->')*/
select l_extendedprice,l_discount,l_partkey from lineitem_ydb where l_shipdate >= '1995-09-01' and l_shipdate < '1995-10-01'
/*('<-')pushdown.ydb*/
),
y_part as (
/*ydb.pushdown('->')*/
select p_type,p_partkey from part_ydb 
/*('<-')pushdown.ydb*/
)
select 
  100.00 * sum(case
               when p_type like 'PROMO%'
               then l_extendedprice*(1-l_discount)
               else 0.0
               end
  ) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from 
  y_part p join y_lineitem l 
  on 
    l.l_partkey = p.p_partkey ;
    
--q15
    
with 
revenue as (
select 
  l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue
from 
  lineitem
where 
  l_shipdate >= '1996-01-01' and l_shipdate < '1996-04-01'
group by l_suppkey
),

 max_revenue as (
select 
  total_revenue as max_revenue,count(*) as cnt 
from 
  revenue group by total_revenue order by total_revenue desc limit 50
 )
select 
  s_suppkey, s_name, s_address, s_phone, total_revenue
from supplier s join revenue r 
  on 
    s.s_suppkey = r.supplier_no
  join max_revenue m 
  on 
     cast(r.total_revenue as bigint) = cast(m.max_revenue as bigint)
order by s_suppkey,s_name, s_address, s_phone, total_revenue limit 100;



  
with 

y_lineitem as (
/*ydb.pushdown('->')*/
select l_suppkey,l_extendedprice,l_discount from lineitem_ydb where  l_shipdate >= '1996-01-01' and l_shipdate < '1996-04-01'
/*('<-')pushdown.ydb*/
),
y_supplier as (
/*ydb.pushdown('->')*/
select s_suppkey,s_name, s_address, s_phone from supplier_ydb 
/*('<-')pushdown.ydb*/
),
revenue as (
select 
  l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue
from 
  y_lineitem
group by l_suppkey
),

max_revenue as (
select 
  total_revenue as max_revenue,count(*) as cnt 
from 
  revenue group by total_revenue order by total_revenue desc limit 50
 )
select 
  s_suppkey, s_name, s_address, s_phone, total_revenue
from y_supplier s join revenue r 
  on 
    s.s_suppkey = r.supplier_no
  join max_revenue m 
  on 
    cast(r.total_revenue as bigint) = cast(m.max_revenue as bigint)
order by s_suppkey,s_name, s_address, s_phone, total_revenue limit 100;


--q16

with 
supplier_tmp as (
select 
  s_suppkey
from 
  supplier
where 
  not s_comment like '%Customer%Complaints%'
),

 q16_tmp as (
 select 
  p_brand, p_type, p_size, ps_suppkey
from 
  partsupp ps join part p 
  on 
    p.p_partkey = ps.ps_partkey and p.p_brand <> 'Brand#45' 
    and not p.p_type like 'MEDIUM POLISHED%'
  join supplier_tmp s 
  on 
    ps.ps_suppkey = s.s_suppkey
 )

select 
  p_brand, p_type, p_size, count(distinct ps_suppkey) as supplier_cnt
from 
  (select 
     * 
   from
     q16_tmp 
   where p_size = 49 or p_size = 14 or p_size = 23 or
         p_size = 45 or p_size = 19 or p_size = 3 or
         p_size = 36 or p_size = 9
) q16_all
group by p_brand, p_type, p_size
order by supplier_cnt desc, p_brand, p_type, p_size limit 10;


with 
y_supplier as (
/*ydb.pushdown('->')*/
select s_suppkey,s_comment from supplier_ydb 
/*('<-')pushdown.ydb*/
),
supplier_tmp as (
select 
  s_suppkey
from 
  y_supplier
where 
  not s_comment like '%Customer%Complaints%'
),

 y_partsupp as (
/*ydb.pushdown('->')*/
select ps_suppkey,ps_partkey from partsupp_ydb 
/*('<-')pushdown.ydb*/

),

 y_part as (
/*ydb.pushdown('->')*/
select p_brand, p_type, p_size,p_partkey from part_ydb where p_brand <> 'Brand#45'
/*('<-')pushdown.ydb*/

),

 q16_tmp as (
 select 
  p_brand, p_type, p_size, ps_suppkey
from 
  y_partsupp ps join y_part p 
  on 
    p.p_partkey = ps.ps_partkey  
    and not p.p_type like 'MEDIUM POLISHED%'
  join supplier_tmp s 
  on 
    ps.ps_suppkey = s.s_suppkey
 )

select 
  p_brand, p_type, p_size, count(distinct ps_suppkey) as supplier_cnt
from 
  (select 
     * 
   from
     q16_tmp 
   where p_size = 49 or p_size = 14 or p_size = 23 or
         p_size = 45 or p_size = 19 or p_size = 3 or
         p_size = 36 or p_size = 9
) q16_all
group by p_brand, p_type, p_size
order by supplier_cnt desc, p_brand, p_type, p_size limit 10;

--q17

with 
lineitem_tmp as 
(select 
  l_partkey as t_partkey, 0.2 * avg(l_quantity) as t_avg_quantity
from 
  lineitem
group by l_partkey)

select
  sum(l_extendedprice) / 7.0 as avg_yearly
from
  (select l_quantity, l_extendedprice, t_avg_quantity from
   lineitem_tmp t join
     (select
        l_quantity, l_partkey, l_extendedprice
      from
        part p join lineitem l
        on
          p.p_partkey = l.l_partkey
          and p.p_brand = 'Brand#23'
          and p.p_container = 'MED BOX'
      ) l1 on l1.l_partkey = t.t_partkey
   ) a
where l_quantity < t_avg_quantity;




with 
 y_lineitem_groupby as (
/*ydb.pushdown('->')*/
select l_partkey,avg(l_quantity) as avg_l_quantity from lineitem_ydb  group by l_partkey
/*('<-')pushdown.ydb*/
),
lineitem_tmp as 
(select 
  l_partkey as t_partkey, 0.2 * avg_l_quantity as t_avg_quantity
from 
  y_lineitem_groupby
),

 y_lineitem as (
/*ydb.pushdown('->')*/
select l_quantity, l_extendedprice,l_partkey from lineitem_ydb  
/*('<-')pushdown.ydb*/
),

 y_part as (
/*ydb.pushdown('->')*/
select p_partkey from part_ydb  where p_brand = 'Brand#23' and p_container = 'MED BOX'
/*('<-')pushdown.ydb*/
)

select
  sum(l_extendedprice) / 7.0 as avg_yearly
from
  (select l_quantity, l_extendedprice, t_avg_quantity from
   lineitem_tmp t join
     (select
        l_quantity, l_partkey, l_extendedprice
      from
        y_part p join y_lineitem l
        on
          p.p_partkey = l.l_partkey
      ) l1 on l1.l_partkey = t.t_partkey
   ) a
where l_quantity < t_avg_quantity;


--q18

with 
 q18_tmp as 
 (
 select 
  l_orderkey, sum(l_quantity) as t_sum_quantity
from 
  lineitem
group by l_orderkey
 )
select 
  c_name,c_custkey,o_orderkey,o_orderdate,o_totalprice,sum(l_quantity)
from 
  customer c join orders o 
  on 
    c.c_custkey = o.o_custkey
  join q18_tmp t 
  on 
    o.o_orderkey = t.l_orderkey and t.t_sum_quantity > 300
  join lineitem l 
  on 
    o.o_orderkey = l.l_orderkey
group by c_name,c_custkey,o_orderkey,o_orderdate,o_totalprice
order by o_totalprice desc,o_orderdate,c_name,c_custkey,o_orderkey
limit 100;



with 

 q18_tmp as 
 (
 /*ydb.pushdown('->')*/
 select 
  l_orderkey, sum(l_quantity) as t_sum_quantity
from 
  lineitem_ydb
group by l_orderkey
/*('<-')pushdown.ydb*/

 ),
 
 y_customer as (
/*ydb.pushdown('->')*/
select c_name,c_custkey from customer_ydb
/*('<-')pushdown.ydb*/
),

 y_orders as (
/*ydb.pushdown('->')*/
select o_orderkey,o_orderdate,o_totalprice,o_custkey from orders_ydb
/*('<-')pushdown.ydb*/
),

 y_lineitem as (
/*ydb.pushdown('->')*/
select l_orderkey,l_quantity from lineitem_ydb
/*('<-')pushdown.ydb*/
)
 
select 
  c_name,c_custkey,o_orderkey,o_orderdate,o_totalprice,sum(l_quantity)
from 
  y_customer c join y_orders o 
  on 
    c.c_custkey = o.o_custkey
  join q18_tmp t 
  on 
    o.o_orderkey = t.l_orderkey and t.t_sum_quantity > 300
  join y_lineitem l 
  on 
    o.o_orderkey = l.l_orderkey
group by c_name,c_custkey,o_orderkey,o_orderdate,o_totalprice
order by o_totalprice desc,o_orderdate,c_name,c_custkey,o_orderkey
limit 100;


--q19


 select
   sum(l_extendedprice * (1 - l_discount) ) as revenue
 from
   lineitem l join part p
   on 
     p.p_partkey = l.l_partkey    
 where
   (
     p_brand = 'Brand#12'
     and p_container REGEXP 'SM CASE||SM BOX||SM PACK||SM PKG'
     and l_quantity >= 1 and l_quantity <= 11
     and p_size >= 1 and p_size <= 5
     and l_shipmode REGEXP 'AIR||AIR REG'
     and l_shipinstruct = 'DELIVER IN PERSON'
   ) 
   or 
   (
     p_brand = 'Brand#23'
     and p_container REGEXP 'MED BAG||MED BOX||MED PKG||MED PACK'
     and l_quantity >= 10 and l_quantity <= 20
     and p_size >= 1 and p_size <= 10
     and l_shipmode REGEXP 'AIR||AIR REG'
     and l_shipinstruct = 'DELIVER IN PERSON'
   )
   or
   (
     p_brand = 'Brand#34'
     and p_container REGEXP 'LG CASE||LG BOX||LG PACK||LG PKG'
     and l_quantity >= 20 and l_quantity <= 30
     and p_size >= 1 and p_size <= 15
     and l_shipmode REGEXP 'AIR||AIR REG'
     and l_shipinstruct = 'DELIVER IN PERSON'
   )
   
    limit 10;
    
    
    
with 
y_lineitem as (

/*ydb.pushdown('->')*/
select * from lineitem_ydb
/*('<-')pushdown.ydb*/
),
y_part as (

/*ydb.pushdown('->')*/
select * from part_ydb
/*('<-')pushdown.ydb*/
)


 select
   sum(l_extendedprice * (1 - l_discount) ) as revenue
 from
   y_lineitem l join y_part p
   on 
     p.p_partkey = l.l_partkey    
 where
   (
     p_brand = 'Brand#12'
     and p_container REGEXP 'SM CASE||SM BOX||SM PACK||SM PKG'
     and l_quantity >= 1 and l_quantity <= 11
     and p_size >= 1 and p_size <= 5
     and l_shipmode REGEXP 'AIR||AIR REG'
     and l_shipinstruct = 'DELIVER IN PERSON'
   ) 
   or 
   (
     p_brand = 'Brand#23'
     and p_container REGEXP 'MED BAG||MED BOX||MED PKG||MED PACK'
     and l_quantity >= 10 and l_quantity <= 20
     and p_size >= 1 and p_size <= 10
     and l_shipmode REGEXP 'AIR||AIR REG'
     and l_shipinstruct = 'DELIVER IN PERSON'
   )
   or
   (
     p_brand = 'Brand#34'
     and p_container REGEXP 'LG CASE||LG BOX||LG PACK||LG PKG'
     and l_quantity >= 20 and l_quantity <= 30
     and p_size >= 1 and p_size <= 15
     and l_shipmode REGEXP 'AIR||AIR REG'
     and l_shipinstruct = 'DELIVER IN PERSON'
   )
   
    limit 10;
    
    
    
    
 
--q20
with q20_tmp1 as (
select distinct p_partkey
from
  part 
where 
  p_name like 'forest%'
  ),

q20_tmp2 as (
select 
  l_partkey, l_suppkey, 0.5 * sum(l_quantity) as sum_quantity
from
  lineitem
where
  l_shipdate >= '1994-01-01'
  and l_shipdate < '1995-01-01'
group by l_partkey, l_suppkey
),

q20_tmp3 as (
select 
  ps_suppkey, ps_availqty, sum_quantity
from  
  partsupp ps join q20_tmp1 t1 
  on 
    ps.ps_partkey = t1.p_partkey
  join q20_tmp2 t2 
  on 
    ps.ps_partkey = t2.l_partkey and ps.ps_suppkey = t2.l_suppkey
),

q20_tmp4 as (
select 
  ps_suppkey
from 
  q20_tmp3
where 
  ps_availqty > sum_quantity
group by ps_suppkey

)
select 
  s_name, s_address
from 
  supplier s join nation n
  on
    s.s_nationkey = n.n_nationkey
    and n.n_name = 'CANADA'
  join q20_tmp4 t4
  on 
    s.s_suppkey = t4.ps_suppkey
order by s_name,s_address limit 100;




with 

y_part as (

/*ydb.pushdown('->')*/
select p_partkey from part_ydb where 
  p_name like 'forest%'
/*('<-')pushdown.ydb*/
),

q20_tmp1 as (
select distinct p_partkey from y_part 
),


y_lineitem as (

/*ydb.pushdown('->')*/
select l_partkey, l_suppkey,l_quantity from lineitem_ydb where  l_shipdate >= '1994-01-01'
  and l_shipdate < '1995-01-01'

/*('<-')pushdown.ydb*/
),

q20_tmp2 as (
select 
  l_partkey, l_suppkey, 0.5 * sum(l_quantity) as sum_quantity
from
  y_lineitem

group by l_partkey, l_suppkey
),

q20_tmp3 as (
select 
  ps_suppkey, ps_availqty, sum_quantity
from  
  partsupp ps join q20_tmp1 t1 
  on 
    ps.ps_partkey = t1.p_partkey
  join q20_tmp2 t2 
  on 
    ps.ps_partkey = t2.l_partkey and ps.ps_suppkey = t2.l_suppkey
),

q20_tmp4 as (
select 
  ps_suppkey
from 
  q20_tmp3
where 
  ps_availqty > sum_quantity
group by ps_suppkey

),

y_supplier as (

/*ydb.pushdown('->')*/
select s_name, s_address,s_nationkey,s_suppkey from supplier_ydb
/*('<-')pushdown.ydb*/
),

y_nation as (

/*ydb.pushdown('->')*/
select n_nationkey from nation_ydb where n_name = 'CANADA'
/*('<-')pushdown.ydb*/
)

select 
  s_name, s_address
from 
  y_supplier s join y_nation n
  on
    s.s_nationkey = n.n_nationkey
  join q20_tmp4 t4
  on 
    s.s_suppkey = t4.ps_suppkey
order by s_name,s_address limit 100;


--q21

with 
 q21_tmp1 as 
(select
  l_orderkey, count(distinct l_suppkey) as count_suppkey, max(l_suppkey) as max_suppkey
from
  lineitem
group by l_orderkey),

q21_tmp2 as (select
  l_orderkey, count(distinct l_suppkey) as count_suppkey, max(l_suppkey) as max_suppkey
from
  lineitem
where
  l_receiptdate > l_commitdate
group by l_orderkey)


select
  s_name, count(1) as numwait
from
  (select s_name from
(select s_name, t2.l_orderkey, l_suppkey, count_suppkey, max_suppkey 
 from q21_tmp2 t2 right outer join
      (select s_name, l_orderkey, l_suppkey from
         (select s_name, t1.l_orderkey, l_suppkey, count_suppkey, max_suppkey
          from
            q21_tmp1 t1 join
            (select s_name, l_orderkey, l_suppkey
             from 
               orders o join
               (select s_name, l_orderkey, l_suppkey
                from
                  nation n join supplier s
                  on
                    s.s_nationkey = n.n_nationkey
                    and n.n_name = 'SAUDI ARABIA'
                  join lineitem l
                  on
                    s.s_suppkey = l.l_suppkey
                where
                  l.l_receiptdate > l.l_commitdate
                ) l1 on o.o_orderkey = l1.l_orderkey and o.o_orderstatus = 'F'
             ) l2 on l2.l_orderkey = t1.l_orderkey
          ) a
          where
           (count_suppkey > 1) or ((count_suppkey=1) and (l_suppkey <> max_suppkey))
       ) l3 on l3.l_orderkey = t2.l_orderkey
    ) b
    where
     (count_suppkey is null) or ((count_suppkey=1) and (l_suppkey = max_suppkey))
  )c
group by s_name
order by numwait desc, s_name
limit 100;


with 
y_lineitem_1 as (
/*ydb.pushdown('->')*/
select l_orderkey,l_suppkey from lineitem_ydb
/*('<-')pushdown.ydb*/
),
y_lineitem_2 as (
/*ydb.pushdown('->')*/
select l_orderkey,l_suppkey,l_receiptdate,l_commitdate from lineitem_ydb
/*('<-')pushdown.ydb*/
),
 q21_tmp1 as 
(select
  l_orderkey, count(distinct l_suppkey) as count_suppkey, max(l_suppkey) as max_suppkey
from
  y_lineitem_1
group by l_orderkey),

q21_tmp2 as (select
  l_orderkey, count(distinct l_suppkey) as count_suppkey, max(l_suppkey) as max_suppkey
from
  y_lineitem_2
where
  l_receiptdate > l_commitdate
group by l_orderkey),

y_orders as (
/*ydb.pushdown('->')*/
select o_orderkey from orders_ydb where o_orderstatus = 'F'
/*('<-')pushdown.ydb*/
),

y_nation as (
/*ydb.pushdown('->')*/
select n_nationkey,n_name from nation_ydb where n_name = 'SAUDI ARABIA'
/*('<-')pushdown.ydb*/
),

y_supplier as (
/*ydb.pushdown('->')*/
select s_nationkey,s_suppkey,s_name from supplier_ydb
/*('<-')pushdown.ydb*/
),

y_lineitem as (
/*ydb.pushdown('->')*/
select l_orderkey,l_suppkey,l_commitdate,l_receiptdate from lineitem_ydb
/*('<-')pushdown.ydb*/
)
select
  s_name, count(1) as numwait
from
  (select s_name from
(select s_name, t2.l_orderkey, l_suppkey, count_suppkey, max_suppkey 
 from q21_tmp2 t2 right outer join
      (select s_name, l_orderkey, l_suppkey from
         (select s_name, t1.l_orderkey, l_suppkey, count_suppkey, max_suppkey
          from
            q21_tmp1 t1 join
            (select s_name, l_orderkey, l_suppkey
             from 
               y_orders o join
               (select s_name, l_orderkey, l_suppkey
                from
                  y_nation n join y_supplier s
                  on
                    s.s_nationkey = n.n_nationkey
                    and n.n_name = 'SAUDI ARABIA'
                  join y_lineitem l
                  on
                    s.s_suppkey = l.l_suppkey
                where
                  l.l_receiptdate > l.l_commitdate
                ) l1 on o.o_orderkey = l1.l_orderkey 
             ) l2 on l2.l_orderkey = t1.l_orderkey
          ) a
          where
           (count_suppkey > 1) or ((count_suppkey=1) and (l_suppkey <> max_suppkey))
       ) l3 on l3.l_orderkey = t2.l_orderkey
    ) b
    where
     (count_suppkey is null) or ((count_suppkey=1) and (l_suppkey = max_suppkey))
  )c
group by s_name
order by numwait desc, s_name
limit 100;


--q22


with 

q22_customer_tmp as ( 
select 
  c_acctbal, c_custkey, substr(c_phone, 1, 2) as cntrycode
from 
  customer
where 
  substr(c_phone, 1, 2) = '13' or
  substr(c_phone, 1, 2) = '31' or
  substr(c_phone, 1, 2) = '23' or
  substr(c_phone, 1, 2) = '29' or
  substr(c_phone, 1, 2) = '30' or
  substr(c_phone, 1, 2) = '18' or
  substr(c_phone, 1, 2) = '17'
  )
,q22_customer_tmp1 as 
(
select
  avg(c_acctbal) as avg_acctbal
from
  q22_customer_tmp
where
  c_acctbal > 0.00
)
,q22_orders_tmp as (
select 
  o_custkey 
from 
  orders
group by 
  o_custkey
)

select
  cntrycode, count(*) as numcust, sum(c_acctbal) as totacctbal
from
(
  select cntrycode, c_acctbal, avg_acctbal from
  q22_customer_tmp1 ct1 join
  (
    select cntrycode, c_acctbal from
      q22_orders_tmp ot 
      right outer join q22_customer_tmp ct 
      on
        ct.c_custkey = ot.o_custkey
    where
      o_custkey is null
  ) ct2
) a
where
  c_acctbal > avg_acctbal
group by cntrycode
order by cntrycode limit 100;

with 
y_customer as (
/*ydb.pushdown('->')*/
select c_acctbal,c_custkey,c_phone from customer_ydb
/*('<-')pushdown.ydb*/
),
q22_customer_tmp as ( 
select 
  c_acctbal, c_custkey, substr(c_phone, 1, 2) as cntrycode
from 
  y_customer
where 
  substr(c_phone, 1, 2) = '13' or
  substr(c_phone, 1, 2) = '31' or
  substr(c_phone, 1, 2) = '23' or
  substr(c_phone, 1, 2) = '29' or
  substr(c_phone, 1, 2) = '30' or
  substr(c_phone, 1, 2) = '18' or
  substr(c_phone, 1, 2) = '17'
  )
,

q22_customer_tmp1 as 
(
select
  avg(c_acctbal) as avg_acctbal
from
  q22_customer_tmp
where
  c_acctbal > 0.00
)
,


q22_orders_tmp as (
/*ydb.pushdown('->')*/
select o_custkey as o_custkey,count(*) from orders_ydb group by o_custkey
/*('<-')pushdown.ydb*/
)

select
  cntrycode, count(*) as numcust, sum(c_acctbal) as totacctbal
from
(
  select cntrycode, c_acctbal, avg_acctbal from
  q22_customer_tmp1 ct1 join
  (
    select cntrycode, c_acctbal from
      q22_orders_tmp ot 
      right outer join q22_customer_tmp ct 
      on
        ct.c_custkey = ot.o_custkey
    where
      o_custkey is null
  ) ct2
) a
where
  c_acctbal > avg_acctbal
group by cntrycode
order by cntrycode limit 100;



