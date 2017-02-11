--q65 test----
select 
    s_store_name,
    i_item_desc,
    sc.revenue,
    i_current_price,
    i_wholesale_cost,
    i_brand
from
    store_tcpds store,
    item_tcpds item,
    (select 
        ss_store_sk, avg(revenue) as ave
    from
        (select 
        ss_store_sk, ss_item_sk, sum(ss_sales_price) as revenue
    from
        store_sales_tcpds store_sales, date_dim_tcpds date_dim
    where
        ss_sold_date_sk = d_date_sk
            and d_month_seq between 1212 and 1212 + 11
    group by ss_store_sk , ss_item_sk) sa
    group by ss_store_sk) sb,
    (select 
        ss_store_sk, ss_item_sk, sum(ss_sales_price) as revenue
    from
        store_sales_tcpds store_sales, date_dim_tcpds date_dim
    where
        ss_sold_date_sk = d_date_sk
            and d_month_seq between 1212 and 1212 + 11
    group by ss_store_sk , ss_item_sk) sc
where
    sb.ss_store_sk = sc.ss_store_sk
        and sc.revenue <= 0.1 * sb.ave
        and s_store_sk = sc.ss_store_sk
        and i_item_sk = sc.ss_item_sk
order by s_store_name , i_item_desc
limit 100;



with 
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_store_name,s_store_sk
        from store_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_desc,i_current_price,i_wholesale_cost,i_brand,i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_store_sk,ss_item_sk,ss_sales_price,ss_sold_date_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_month_seq like '([1212 TO 1223])' 
        /*('<-')pushdown.ydb*/
    )
select 
    s_store_name,
    i_item_desc,
    sc.revenue,
    i_current_price,
    i_wholesale_cost,
    i_brand
from
    store_tmp store,
    item_tmp item,
    (select 
        ss_store_sk, avg(revenue) as ave
    from
        (select 
        ss_store_sk, ss_item_sk, sum(ss_sales_price) as revenue
    from
        store_sales_tmp store_sales, date_dim_tmp date_dim
    where
        ss_sold_date_sk = d_date_sk
    group by ss_store_sk , ss_item_sk) sa
    group by ss_store_sk) sb,
    (select 
        ss_store_sk, ss_item_sk, sum(ss_sales_price) as revenue
    from
        store_sales_tmp store_sales, date_dim_tmp date_dim
    where
        ss_sold_date_sk = d_date_sk
    group by ss_store_sk , ss_item_sk) sc
where
    sb.ss_store_sk = sc.ss_store_sk
        and sc.revenue <= 0.1 * sb.ave
        and s_store_sk = sc.ss_store_sk
        and i_item_sk = sc.ss_item_sk
order by s_store_name , i_item_desc
limit 100;
