--q03 test----
select  dt.d_year
       ,item.i_brand_id brand_id
       ,item.i_brand brand
       ,sum(ss_ext_sales_price) sum_agg
 from  date_dim_tcpds dt
      ,store_sales_tcpds store_sales
      ,item_tcpds item
 where dt.d_date_sk = store_sales.ss_sold_date_sk
   and store_sales.ss_item_sk = item.i_item_sk
   and item.i_manufact_id = 436
   and dt.d_moy=12
 group by dt.d_year
      ,item.i_brand
      ,item.i_brand_id
 order by dt.d_year
         ,sum_agg desc
         ,brand_id
       ,brand
 limit 100;
----------------------------------------------------------------------------------------------------
 with
     date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_year,d_date_sk,d_moy
        from date_dim_tcpydb
        where d_moy=12
        /*('<-')pushdown.ydb*/
     ),
     store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ext_sales_price,ss_sold_date_sk,ss_item_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
     ),
     item_tmp as (
        /*ydb.pushdown('->')*/
        select i_brand_id,i_brand,i_item_sk
        from item_tcpydb
        where i_manufact_id = 436
        /*('<-')pushdown.ydb*/
     )
 select  dt.d_year
       ,item.i_brand_id brand_id
       ,item.i_brand brand
       ,sum(ss_ext_sales_price) sum_agg
 from  date_dim_tmp dt
      ,store_sales_tmp store_sales
      ,item_tmp item
 where dt.d_date_sk = store_sales.ss_sold_date_sk
   and store_sales.ss_item_sk = item.i_item_sk
 group by dt.d_year
      ,item.i_brand
      ,item.i_brand_id
 order by dt.d_year
         ,sum_agg desc
         ,brand_id
       ,brand
 limit 100;
--q07 test----
 select  i_item_id,
        avg(ss_quantity) agg1,
        avg(ss_list_price) agg2,
        avg(ss_coupon_amt) agg3,
        avg(ss_sales_price) agg4
 from
    store_sales_tcpds store_sales,
    customer_demographics_tcpds customer_demographics,
    date_dim_tcpds date_dim,
    item_tcpds item,
    promotion_tcpds promotion
 where store_sales.ss_sold_date_sk = date_dim.d_date_sk and
       store_sales.ss_item_sk = item.i_item_sk and
       store_sales.ss_cdemo_sk = customer_demographics.cd_demo_sk and
       store_sales.ss_promo_sk = promotion.p_promo_sk and
       cd_gender = 'F' and
       cd_marital_status = 'W' and
       cd_education_status = 'Primary' and
       (p_channel_email = 'N' or p_channel_event = 'N') and
       d_year = 1998
 group by i_item_id
 order by i_item_id
	  ,agg1
	  ,agg2
	  ,agg3
	  ,agg4
 limit 100;
----------------------------------------------------------------------------------------------------
 with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_quantity,ss_list_price,ss_coupon_amt,ss_sales_price,ss_sold_date_sk,ss_item_sk,ss_cdemo_sk,ss_promo_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_demographics_tmp as (
        /*ydb.pushdown('->')*/
        select cd_demo_sk
        from customer_demographics_tcpydb
        where cd_gender = 'F' and cd_marital_status = 'W' and cd_education_status = 'Primary'
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk,d_year
        from date_dim_tcpydb
        where d_year = 1998
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_id,i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    promotion_tmp as (
        /*ydb.pushdown('->')*/
        select p_promo_sk,p_channel_email,p_channel_event
        from promotion_tcpydb
        where p_channel_email = 'N' or p_channel_event = 'N'
        /*('<-')pushdown.ydb*/
    )
 select  i_item_id,
        avg(ss_quantity) agg1,
        avg(ss_list_price) agg2,
        avg(ss_coupon_amt) agg3,
        avg(ss_sales_price) agg4
 from
    store_sales_tmp store_sales,
    customer_demographics_tmp customer_demographics,
    date_dim_tmp date_dim,
    item_tmp item,
    promotion_tmp promotion
 where store_sales.ss_sold_date_sk = date_dim.d_date_sk and
       store_sales.ss_item_sk = item.i_item_sk and
       store_sales.ss_cdemo_sk = customer_demographics.cd_demo_sk and
       store_sales.ss_promo_sk = promotion.p_promo_sk
 group by i_item_id
 order by i_item_id
	  ,agg1
	  ,agg2
	  ,agg3
	  ,agg4
 limit 100;
--q12 test----
select  i_item_desc
      ,i_category
      ,i_class
      ,i_current_price
      ,i_item_id
      ,sum(ws_ext_sales_price) as itemrevenue
      ,sum(ws_ext_sales_price)*100/sum(sum(ws_ext_sales_price)) over
          (partition by i_class) as revenueratio
from
    web_sales_tcpds web_sales
        ,item_tcpds item
        ,date_dim_tcpds date_dim
where
    web_sales.ws_item_sk = item.i_item_sk
      and item.i_category in ('Jewelry', 'Sports', 'Books')
      and web_sales.ws_sold_date_sk = date_dim.d_date_sk
    and date_dim.d_date between '2001-01-12' and '2001-02-11'
group by
    i_item_id
        ,i_item_desc
        ,i_category
        ,i_class
        ,i_current_price
order by
         i_category
        ,i_class
        ,i_item_id
        ,i_item_desc
        ,revenueratio
      ,i_current_price
      ,itemrevenue
limit 100;
----------------------------------------------------------------------------------------------------
with
    web_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ws_ext_sales_price,ws_item_sk,ws_sold_date_sk
        from web_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_desc,i_category,i_class,i_current_price,i_item_id,i_item_sk
        from item_tcpydb
        where i_category in ('Jewelry', 'Sports', 'Books')
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk,d_date
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    )
select  i_item_desc
      ,i_category
      ,i_class
      ,i_current_price
      ,i_item_id
      ,sum(ws_ext_sales_price) as itemrevenue
      ,sum(ws_ext_sales_price)*100/sum(sum(ws_ext_sales_price)) over
          (partition by i_class) as revenueratio
from
    web_sales_tmp web_sales
        ,item_tmp item
        ,date_dim_tmp date_dim
where
    web_sales.ws_item_sk = item.i_item_sk
    and web_sales.ws_sold_date_sk = date_dim.d_date_sk
    and date_dim.d_date between '2001-01-12' and '2001-02-11'
group by
    i_item_id
        ,i_item_desc
        ,i_category
        ,i_class
        ,i_current_price
order by
         i_category
        ,i_class
        ,i_item_id
        ,i_item_desc
        ,revenueratio
      ,i_current_price
      ,itemrevenue
limit 100;
--q13 test----
 select avg(ss_quantity) as col1
       ,avg(ss_ext_sales_price) as col2
       ,avg(ss_ext_wholesale_cost) as col3
       ,sum(ss_ext_wholesale_cost) as col4
 from store_sales_tcpds store_sales
     ,store_tcpds store
     ,customer_demographics_tcpds customer_demographics
     ,household_demographics_tcpds household_demographics
     ,customer_address_tcpds customer_address
     ,date_dim_tcpds date_dim
 where store.s_store_sk = store_sales.ss_store_sk
 and  store_sales.ss_sold_date_sk = date_dim.d_date_sk and date_dim.d_year = 2001
 and((store_sales.ss_hdemo_sk=household_demographics.hd_demo_sk
  and customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
  and customer_demographics.cd_marital_status = 'M'
  and customer_demographics.cd_education_status = '4 yr Degree'
  and store_sales.ss_sales_price between 100.00 and 150.00
  and household_demographics.hd_dep_count = 3
     )or
     (store_sales.ss_hdemo_sk=household_demographics.hd_demo_sk
  and customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
  and customer_demographics.cd_marital_status = 'D'
  and customer_demographics.cd_education_status = 'Primary'
  and store_sales.ss_sales_price between 50.00 and 100.00
  and household_demographics.hd_dep_count = 1
     ) or
     (store_sales.ss_hdemo_sk=household_demographics.hd_demo_sk
  and customer_demographics.cd_demo_sk = ss_cdemo_sk
  and customer_demographics.cd_marital_status = 'U'
  and customer_demographics.cd_education_status = 'Advanced Degree'
  and store_sales.ss_sales_price between 150.00 and 200.00
  and household_demographics.hd_dep_count = 1
     ))
 and((store_sales.ss_addr_sk = customer_address.ca_address_sk
  and customer_address.ca_country = 'United States'
  and customer_address.ca_state in ('KY', 'GA', 'NM')
  and store_sales.ss_net_profit between 100 and 200
     ) or
     (store_sales.ss_addr_sk = customer_address.ca_address_sk
  and customer_address.ca_country = 'United States'
  and customer_address.ca_state in ('MT', 'OR', 'IN')
  and store_sales.ss_net_profit between 150 and 300
     ) or
     (store_sales.ss_addr_sk = customer_address.ca_address_sk
  and customer_address.ca_country = 'United States'
  and customer_address.ca_state in ('WI', 'MO', 'WV')
  and store_sales.ss_net_profit between 50 and 250
     ))
order by col1,col2,col3,col4
;
----------------------------------------------------------------------------------------------------
 with
    store_sales_tmp as (
         /*ydb.pushdown('->')*/
        select ss_quantity,ss_ext_sales_price,ss_ext_wholesale_cost,ss_store_sk,ss_sold_date_sk,ss_hdemo_sk,ss_cdemo_sk,ss_sales_price,ss_addr_sk,ss_net_profit
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
         /*ydb.pushdown('->')*/
        select s_store_sk
        from store_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_demographics_tmp as (
         /*ydb.pushdown('->')*/
        select cd_demo_sk,cd_marital_status,cd_education_status
        from customer_demographics_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    household_demographics_tmp as (
         /*ydb.pushdown('->')*/
        select hd_demo_sk,hd_dep_count
        from household_demographics_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_address_tmp as (
         /*ydb.pushdown('->')*/
        select ca_country,ca_state,ca_address_sk
        from customer_address_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
         /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_year = 2001
        /*('<-')pushdown.ydb*/
    )
 select avg(ss_quantity) as col1
       ,avg(ss_ext_sales_price) as col2
       ,avg(ss_ext_wholesale_cost) as col3
       ,sum(ss_ext_wholesale_cost) as col4
 from store_sales_tmp store_sales
     ,store_tmp store
     ,customer_demographics_tmp customer_demographics
     ,household_demographics_tmp household_demographics
     ,customer_address_tmp customer_address
     ,date_dim_tmp date_dim
 where store.s_store_sk = store_sales.ss_store_sk
 and  store_sales.ss_sold_date_sk = date_dim.d_date_sk
 and((store_sales.ss_hdemo_sk=household_demographics.hd_demo_sk
  and customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
  and customer_demographics.cd_marital_status = 'M'
  and customer_demographics.cd_education_status = '4 yr Degree'
  and store_sales.ss_sales_price between 100.00 and 150.00
  and household_demographics.hd_dep_count = 3
     )or
     (store_sales.ss_hdemo_sk=household_demographics.hd_demo_sk
  and customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
  and customer_demographics.cd_marital_status = 'D'
  and customer_demographics.cd_education_status = 'Primary'
  and store_sales.ss_sales_price between 50.00 and 100.00
  and household_demographics.hd_dep_count = 1
     ) or
     (store_sales.ss_hdemo_sk=household_demographics.hd_demo_sk
  and customer_demographics.cd_demo_sk = ss_cdemo_sk
  and customer_demographics.cd_marital_status = 'U'
  and customer_demographics.cd_education_status = 'Advanced Degree'
  and store_sales.ss_sales_price between 150.00 and 200.00
  and household_demographics.hd_dep_count = 1
     ))
 and((store_sales.ss_addr_sk = customer_address.ca_address_sk
  and customer_address.ca_country = 'United States'
  and customer_address.ca_state in ('KY', 'GA', 'NM')
  and store_sales.ss_net_profit between 100 and 200
     ) or
     (store_sales.ss_addr_sk = customer_address.ca_address_sk
  and customer_address.ca_country = 'United States'
  and customer_address.ca_state in ('MT', 'OR', 'IN')
  and store_sales.ss_net_profit between 150 and 300
     ) or
     (store_sales.ss_addr_sk = customer_address.ca_address_sk
  and customer_address.ca_country = 'United States'
  and customer_address.ca_state in ('WI', 'MO', 'WV')
  and store_sales.ss_net_profit between 50 and 250
     ))
order by col1,col2,col3,col4
;
--q15 test----
 select ca_zip
       ,sum(cs_sales_price) as col_sum
 from catalog_sales_tcpds catalog_sales
     ,customer_tcpds customer
     ,customer_address_tcpds customer_address
     ,date_dim_tcpds date_dim
 where catalog_sales.cs_bill_customer_sk = customer.c_customer_sk
     and customer.c_current_addr_sk = customer_address.ca_address_sk
     and ( substr(ca_zip,1,5) in ('85669', '86197','88274','83405','86475',
                                   '85392', '85460', '80348', '81792')
           or customer_address.ca_state in ('CA','WA','GA')
           or catalog_sales.cs_sales_price > 500)
     and catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
     and date_dim.d_qoy = 2 and date_dim.d_year = 2000
 group by ca_zip
 order by ca_zip
		,col_sum
 limit 100;
----------------------------------------------------------------------------------------------------
 with
    catalog_sales_tmp as (
         /*ydb.pushdown('->')*/
        select cs_sales_price,cs_bill_customer_sk,cs_sold_date_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_tmp as (
         /*ydb.pushdown('->')*/
        select c_customer_sk,c_current_addr_sk
        from customer_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_address_tmp as (
         /*ydb.pushdown('->')*/
        select ca_zip,ca_address_sk,ca_state
        from customer_address_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
         /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_qoy = 2 and d_year = 2000
        /*('<-')pushdown.ydb*/
    )
 select ca_zip
       ,sum(cs_sales_price) as col_sum
 from catalog_sales_tmp catalog_sales
     ,customer_tmp customer
     ,customer_address_tmp customer_address
     ,date_dim_tmp date_dim
 where catalog_sales.cs_bill_customer_sk = customer.c_customer_sk
     and customer.c_current_addr_sk = customer_address.ca_address_sk
     and ( substr(ca_zip,1,5) in ('85669', '86197','88274','83405','86475',
                                   '85392', '85460', '80348', '81792')
           or customer_address.ca_state in ('CA','WA','GA')
           or catalog_sales.cs_sales_price > 500)
     and catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
 group by ca_zip
 order by ca_zip
 		,col_sum
limit 100;
--q17 test----
 select  i_item_id
       ,i_item_desc
       ,s_state
       ,count(ss_quantity) as store_sales_quantitycount
       ,avg(ss_quantity) as store_sales_quantityave
       ,stddev_samp(ss_quantity) as store_sales_quantitystdev
       ,stddev_samp(ss_quantity)/avg(ss_quantity) as store_sales_quantitycov
       ,count(sr_return_quantity) as_store_returns_quantitycount
       ,avg(sr_return_quantity) as_store_returns_quantityave
       ,stddev_samp(sr_return_quantity) as_store_returns_quantitystdev
       ,stddev_samp(sr_return_quantity)/avg(sr_return_quantity) as store_returns_quantitycov
       ,count(cs_quantity) as catalog_sales_quantitycount ,avg(cs_quantity) as catalog_sales_quantityave
       ,stddev_samp(cs_quantity)/avg(cs_quantity) as catalog_sales_quantitystdev
       ,stddev_samp(cs_quantity)/avg(cs_quantity) as catalog_sales_quantitycov
 from store_sales_tcpds store_sales
     ,store_returns_tcpds store_returns
     ,catalog_sales_tcpds catalog_sales
     ,date_dim_tcpds d1
     ,date_dim_tcpds d2
     ,date_dim_tcpds d3
     ,store_tcpds store
     ,item_tcpds item
 where d1.d_quarter_name = '2000Q1'
   and d1.d_date_sk = store_sales.ss_sold_date_sk
   and item.i_item_sk = store_sales.ss_item_sk
   and store.s_store_sk = store_sales.ss_store_sk
   and store_sales.ss_customer_sk = store_returns.sr_customer_sk
   and store_sales.ss_item_sk = store_returns.sr_item_sk
   and store_sales.ss_ticket_number = store_returns.sr_ticket_number
   and store_returns.sr_returned_date_sk = d2.d_date_sk
   and d2.d_quarter_name in ('2000Q1','2000Q2','2000Q3')
   and store_returns.sr_customer_sk = catalog_sales.cs_bill_customer_sk
   and store_returns.sr_item_sk = catalog_sales.cs_item_sk
   and catalog_sales.cs_sold_date_sk = d3.d_date_sk
   and d3.d_quarter_name in ('2000Q1','2000Q2','2000Q3')
 group by i_item_id
         ,i_item_desc
         ,s_state
 order by i_item_id
         ,i_item_desc
         ,s_state
       ,store_sales_quantitycount
       ,store_sales_quantityave
       ,store_sales_quantitystdev
       ,store_sales_quantitycov
       ,as_store_returns_quantitycount
       ,as_store_returns_quantityave
       ,as_store_returns_quantitystdev
       ,store_returns_quantitycov
       ,catalog_sales_quantitycount ,catalog_sales_quantityave
       ,catalog_sales_quantitystdev
       ,catalog_sales_quantitycov
limit 100;
----------------------------------------------------------------------------------------------------
 with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_quantity,ss_sold_date_sk,ss_item_sk,ss_store_sk,ss_customer_sk,ss_ticket_number
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_returns_tmp as (
        /*ydb.pushdown('->')*/
        select sr_return_quantity,sr_customer_sk,sr_item_sk,sr_ticket_number,sr_returned_date_sk
        from store_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    catalog_sales_tmp as (
         /*ydb.pushdown('->')*/
        select cs_quantity,cs_bill_customer_sk,cs_item_sk,cs_sold_date_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp1 as (
         /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_quarter_name = '2000Q1'
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp2 as (
         /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_quarter_name in ('2000Q1','2000Q2','2000Q3')
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp3 as (
         /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_quarter_name in ('2000Q1','2000Q2','2000Q3')
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_state,s_store_sk
        from store_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
         /*ydb.pushdown('->')*/
        select i_item_id,i_item_desc,i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
   )
 select  i_item_id
       ,i_item_desc
       ,s_state
       ,count(ss_quantity) as store_sales_quantitycount
       ,avg(ss_quantity) as store_sales_quantityave
       ,stddev_samp(ss_quantity) as store_sales_quantitystdev
       ,stddev_samp(ss_quantity)/avg(ss_quantity) as store_sales_quantitycov
       ,count(sr_return_quantity) as_store_returns_quantitycount
       ,avg(sr_return_quantity) as_store_returns_quantityave
       ,stddev_samp(sr_return_quantity) as_store_returns_quantitystdev
       ,stddev_samp(sr_return_quantity)/avg(sr_return_quantity) as store_returns_quantitycov
       ,count(cs_quantity) as catalog_sales_quantitycount ,avg(cs_quantity) as catalog_sales_quantityave
       ,stddev_samp(cs_quantity)/avg(cs_quantity) as catalog_sales_quantitystdev
       ,stddev_samp(cs_quantity)/avg(cs_quantity) as catalog_sales_quantitycov
 from store_sales_tmp store_sales
     ,store_returns_tmp store_returns
     ,catalog_sales_tmp catalog_sales
     ,date_dim_tmp1 d1
     ,date_dim_tmp2 d2
     ,date_dim_tmp3 d3
     ,store_tmp store
     ,item_tmp item
 where
       d1.d_date_sk = store_sales.ss_sold_date_sk
   and item.i_item_sk = store_sales.ss_item_sk
   and store.s_store_sk = store_sales.ss_store_sk
   and store_sales.ss_customer_sk = store_returns.sr_customer_sk
   and store_sales.ss_item_sk = store_returns.sr_item_sk
   and store_sales.ss_ticket_number = store_returns.sr_ticket_number
   and store_returns.sr_returned_date_sk = d2.d_date_sk
   and store_returns.sr_customer_sk = catalog_sales.cs_bill_customer_sk
   and store_returns.sr_item_sk = catalog_sales.cs_item_sk
   and catalog_sales.cs_sold_date_sk = d3.d_date_sk
 group by i_item_id
         ,i_item_desc
         ,s_state
 order by i_item_id
         ,i_item_desc
         ,s_state
       ,store_sales_quantitycount
       ,store_sales_quantityave
       ,store_sales_quantitystdev
       ,store_sales_quantitycov
       ,as_store_returns_quantitycount
       ,as_store_returns_quantityave
       ,as_store_returns_quantitystdev
       ,store_returns_quantitycov
       ,catalog_sales_quantitycount ,catalog_sales_quantityave
       ,catalog_sales_quantitystdev
       ,catalog_sales_quantitycov
limit 100;
--q18 test----
select  i_item_id,
        ca_country,
        ca_state,
        ca_county,
        avg( cast(cs_quantity as decimal(12,2))) agg1,
        avg( cast(cs_list_price as decimal(12,2))) agg2,
        avg( cast(cs_coupon_amt as decimal(12,2))) agg3,
        avg( cast(cs_sales_price as decimal(12,2))) agg4,
        avg( cast(cs_net_profit as decimal(12,2))) agg5,
        avg( cast(c_birth_year as decimal(12,2))) agg6,
        avg( cast(cd1.cd_dep_count as decimal(12,2))) agg7
 from
    catalog_sales_tcpds catalog_sales,
    date_dim_tcpds date_dim,
    customer_demographics_tcpds cd1,
    item_tcpds item,
    customer_tcpds customer,
    customer_address_tcpds customer_address,
    customer_demographics_tcpds cd2
 where catalog_sales.cs_sold_date_sk = date_dim.d_date_sk and
       catalog_sales.cs_item_sk = item.i_item_sk and
       catalog_sales.cs_bill_cdemo_sk = cd1.cd_demo_sk and
       catalog_sales.cs_bill_customer_sk = customer.c_customer_sk and
       cd1.cd_gender = 'M' and
       cd1.cd_education_status = 'College' and
       customer.c_current_cdemo_sk = cd2.cd_demo_sk and
       customer.c_current_addr_sk = customer_address.ca_address_sk and
       c_birth_month in (9,5,12,4,1,10) and
       d_year = 2001 and
       ca_state in ('ND','WI','AL'
                   ,'NC','OK','MS','TN')
 group by i_item_id, ca_country, ca_state, ca_county with rollup
 order by ca_country,
        ca_state,
        ca_county,
        i_item_id,
	agg1,
	agg2,
	agg3,
	agg4,
	agg5,
	agg6,
	agg7
 limit 100;
----------------------------------------------------------------------------------------------------
 with
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_quantity,cs_list_price,cs_coupon_amt,cs_sales_price,cs_net_profit,cs_sold_date_sk,cs_item_sk,cs_bill_cdemo_sk,cs_bill_customer_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk,d_year
        from date_dim_tcpydb
        where d_year = 2001
        /*('<-')pushdown.ydb*/
    ),
    customer_demographics_tmp1 as (
        /*ydb.pushdown('->')*/
        select cd_demo_sk,cd_dep_count
        from customer_demographics_tcpydb
        where cd_gender = 'M' and cd_education_status = 'College'
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_id,i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_tmp as (
        /*ydb.pushdown('->')*/
        select c_birth_year,c_customer_sk,c_current_cdemo_sk,c_current_addr_sk,c_birth_month
        from customer_tcpydb
        where c_birth_month in (9,5,12,4,1,10)
        /*('<-')pushdown.ydb*/
    ),
    customer_address_tmp as (
        /*ydb.pushdown('->')*/
        select ca_country,ca_state,ca_county,ca_address_sk
        from customer_address_tcpydb
        where ca_state in ('ND','WI','AL','NC','OK','MS','TN')
        /*('<-')pushdown.ydb*/
    ),
    customer_demographics_tmp2 as (
        /*ydb.pushdown('->')*/
        select cd_demo_sk
        from customer_demographics_tcpydb
        /*('<-')pushdown.ydb*/
    )
 select  i_item_id,
        ca_country,
        ca_state,
        ca_county,
        avg( cast(cs_quantity as decimal(12,2))) agg1,
        avg( cast(cs_list_price as decimal(12,2))) agg2,
        avg( cast(cs_coupon_amt as decimal(12,2))) agg3,
        avg( cast(cs_sales_price as decimal(12,2))) agg4,
        avg( cast(cs_net_profit as decimal(12,2))) agg5,
        avg( cast(c_birth_year as decimal(12,2))) agg6,
        avg( cast(cd1.cd_dep_count as decimal(12,2))) agg7
 from
    catalog_sales_tmp catalog_sales,
    date_dim_tmp date_dim,
    customer_demographics_tmp1 cd1,
    item_tmp item,
    customer_tmp customer,
    customer_address_tmp customer_address,
    customer_demographics_tmp2 cd2
 where catalog_sales.cs_sold_date_sk = date_dim.d_date_sk and
       catalog_sales.cs_item_sk = item.i_item_sk and
       catalog_sales.cs_bill_cdemo_sk = cd1.cd_demo_sk and
       catalog_sales.cs_bill_customer_sk = customer.c_customer_sk and
       customer.c_current_cdemo_sk = cd2.cd_demo_sk and
       customer.c_current_addr_sk = customer_address.ca_address_sk
 group by i_item_id, ca_country, ca_state, ca_county with rollup
 order by ca_country,
        ca_state,
        ca_county,
        i_item_id,
	agg1,
	agg2,
	agg3,
	agg4,
	agg5,
	agg6,
	agg7
 limit 100;
--q19 test----
 select i_brand_id brand_id, i_brand brand, i_manufact_id, i_manufact,
     sum(ss_ext_sales_price) ext_price
 from
    date_dim_tcpds date_dim,
    store_sales_tcpds store_sales,
    item_tcpds item,
    customer_tcpds customer,
    customer_address_tcpds customer_address,
    store_tcpds store
 where date_dim.d_date_sk = store_sales.ss_sold_date_sk
   and store_sales.ss_item_sk = item.i_item_sk
   and i_manager_id=7
   and d_moy=11
   and d_year=1999
   and store_sales.ss_customer_sk = customer.c_customer_sk
   and customer.c_current_addr_sk = customer_address.ca_address_sk
   and substr(ca_zip,1,5) <> substr(s_zip,1,5)
   and store_sales.ss_store_sk = store.s_store_sk
 group by i_brand
      ,i_brand_id
      ,i_manufact_id
      ,i_manufact
 order by ext_price desc
         ,i_brand
         ,i_brand_id
         ,i_manufact_id
         ,i_manufact
limit 100 ;
----------------------------------------------------------------------------------------------------
 with
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_moy=11 and d_year=1999
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ext_sales_price,ss_sold_date_sk,ss_item_sk,ss_customer_sk,ss_store_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_brand_id,i_brand,i_manufact_id,i_manufact,i_item_sk
        from item_tcpydb
        where i_manager_id=7
        /*('<-')pushdown.ydb*/
    ),
    customer_tmp as (
        /*ydb.pushdown('->')*/
        select c_customer_sk,c_current_addr_sk
        from customer_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_address_tmp as (
        /*ydb.pushdown('->')*/
        select ca_address_sk,ca_zip
        from customer_address_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_zip,s_store_sk
        from store_tcpydb
        /*('<-')pushdown.ydb*/
    )
 select i_brand_id brand_id, i_brand brand, i_manufact_id, i_manufact,
     sum(ss_ext_sales_price) ext_price
 from
    date_dim_tmp date_dim,
    store_sales_tmp store_sales,
    item_tmp item,
    customer_tmp customer,
    customer_address_tmp customer_address,
    store_tmp store
 where date_dim.d_date_sk = store_sales.ss_sold_date_sk
   and store_sales.ss_item_sk = item.i_item_sk
   and store_sales.ss_customer_sk = customer.c_customer_sk
   and customer.c_current_addr_sk = customer_address.ca_address_sk
   and substr(ca_zip,1,5) <> substr(s_zip,1,5)
   and store_sales.ss_store_sk = store.s_store_sk
 group by i_brand
      ,i_brand_id
      ,i_manufact_id
      ,i_manufact
 order by ext_price desc
         ,i_brand
         ,i_brand_id
         ,i_manufact_id
         ,i_manufact
limit 100 ;
--q20 test----
select  i_item_desc
       ,i_category
       ,i_class
       ,i_current_price
       ,i_item_id
       ,sum(cs_ext_sales_price) as itemrevenue
       ,sum(cs_ext_sales_price)*100/sum(sum(cs_ext_sales_price)) over
           (partition by i_class) as revenueratio
 from
    catalog_sales_tcpds catalog_sales
    ,item_tcpds item
    ,date_dim_tcpds date_dim
 where catalog_sales.cs_item_sk = item.i_item_sk
   and i_category in ('Jewelry', 'Sports', 'Books')
   and catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
   and d_date between '2001-01-12' and '2001-02-11'
 group by i_item_id
         ,i_item_desc
         ,i_category
         ,i_class
         ,i_current_price
 order by i_category
         ,i_class
         ,i_item_id
         ,i_item_desc
         ,revenueratio
       ,i_current_price
       ,itemrevenue
limit 100;
----------------------------------------------------------------------------------------------------
 with
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_ext_sales_price,cs_item_sk,cs_sold_date_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_desc,i_category,i_class,i_current_price,i_item_id,i_item_sk
        from item_tcpydb
        where i_category in ('Jewelry', 'Sports', 'Books')
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk,d_date
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    )
 select  i_item_desc
       ,i_category
       ,i_class
       ,i_current_price
       ,i_item_id
       ,sum(cs_ext_sales_price) as itemrevenue
       ,sum(cs_ext_sales_price)*100/sum(sum(cs_ext_sales_price)) over
           (partition by i_class) as revenueratio
 from
    catalog_sales_tmp catalog_sales
    ,item_tmp item
    ,date_dim_tmp date_dim
 where catalog_sales.cs_item_sk = item.i_item_sk
   and catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
   and d_date between '2001-01-12' and '2001-02-11'
 group by i_item_id
         ,i_item_desc
         ,i_category
         ,i_class
         ,i_current_price
 order by i_category
         ,i_class
         ,i_item_id
         ,i_item_desc
         ,revenueratio
       ,i_current_price
       ,itemrevenue
limit 100;
--q21 test----
 select  *
 from(select w_warehouse_name
            ,i_item_id
            ,sum(case when (cast(d_date as date) < cast ('1998-04-08' as date))
                    then inv_quantity_on_hand
                      else 0 end) as inv_before
            ,sum(case when (cast(d_date as date) >= cast ('1998-04-08' as date))
                      then inv_quantity_on_hand
                      else 0 end) as inv_after
   from inventory_tcpds inventory
       ,warehouse_tcpds warehouse
       ,item_tcpds item
       ,date_dim_tcpds date_dim
   where i_current_price between 0.99 and 1.49
     and item.i_item_sk          = inventory.inv_item_sk
     and inventory.inv_warehouse_sk   = warehouse.w_warehouse_sk
     and inventory.inv_date_sk    = date_dim.d_date_sk
     and d_date between '1998-03-09' and '1998-05-07'
   group by w_warehouse_name, i_item_id) x
 where (case when inv_before > 0
             then inv_after / inv_before
             else null
             end) between 2.0/3.0 and 3.0/2.0
 order by w_warehouse_name
         ,i_item_id
            ,inv_before
            ,inv_after
 limit 100;
----------------------------------------------------------------------------------------------------
 with
    inventory_tmp as (
        /*ydb.pushdown('->')*/
        select inv_quantity_on_hand,inv_item_sk,inv_warehouse_sk,inv_date_sk
        from inventory_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    warehouse_tmp as (
        /*ydb.pushdown('->')*/
        select w_warehouse_name,w_warehouse_sk
        from warehouse_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_sk,i_item_id
        from item_tcpydb
        where i_current_price like '([0.99 TO 1.49])'
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date,d_date_sk
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    )
 select *
 from(
    select w_warehouse_name
            ,i_item_id
            ,sum(case when (cast(d_date as date) < cast ('1998-04-08' as date))
                    then inv_quantity_on_hand
                      else 0 end) as inv_before
            ,sum(case when (cast(d_date as date) >= cast ('1998-04-08' as date))
                      then inv_quantity_on_hand
                      else 0 end) as inv_after
   from inventory_tmp inventory
       ,warehouse_tmp warehouse
       ,item_tmp item
       ,date_dim_tmp date_dim
   where item.i_item_sk          = inventory.inv_item_sk
     and inventory.inv_warehouse_sk   = warehouse.w_warehouse_sk
     and inventory.inv_date_sk    = date_dim.d_date_sk
     and d_date between '1998-03-09' and '1998-05-07'
   group by w_warehouse_name, i_item_id) x
 where (case when inv_before > 0
             then inv_after / inv_before
             else null
             end) between 2.0/3.0 and 3.0/2.0
 order by w_warehouse_name
         ,i_item_id
            ,inv_before
            ,inv_after
 limit 100;
--q22 test----
select  i_product_name
             ,i_brand
             ,i_class
             ,i_category
             ,avg(inv_quantity_on_hand) qoh
       from inventory_tcpds inventory
           ,date_dim_tcpds date_dim
           ,item_tcpds item
           ,warehouse_tcpds warehouse
       where inventory.inv_date_sk=date_dim.d_date_sk
              and inventory.inv_item_sk=item.i_item_sk
              and inventory.inv_warehouse_sk = warehouse.w_warehouse_sk
              and date_dim.d_month_seq between 1193 and 1193 + 11
       group by i_product_name
                       ,i_brand
                       ,i_class
                       ,i_category with rollup
order by qoh, i_product_name, i_brand, i_class, i_category
limit 100;
----------------------------------------------------------------------------------------------------
with
    inventory_tmp as (
        /*ydb.pushdown('->')*/
        select inv_quantity_on_hand,inv_date_sk,inv_item_sk,inv_warehouse_sk
        from inventory_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk,d_month_seq
        from date_dim_tcpydb
        where d_month_seq like '([1193 TO 1204])'
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_product_name,i_brand,i_class,i_category,i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    warehouse_tmp as (
        /*ydb.pushdown('->')*/
        select w_warehouse_sk
        from warehouse_tcpydb
        /*('<-')pushdown.ydb*/
    )
select  i_product_name
             ,i_brand
             ,i_class
             ,i_category
             ,avg(inv_quantity_on_hand) qoh
       from inventory_tmp inventory
           ,date_dim_tmp date_dim
           ,item_tmp item
           ,warehouse_tmp warehouse
       where inventory.inv_date_sk=date_dim.d_date_sk
              and inventory.inv_item_sk=item.i_item_sk
              and inventory.inv_warehouse_sk = warehouse.w_warehouse_sk
       group by i_product_name
                       ,i_brand
                       ,i_class
                       ,i_category with rollup
order by qoh, i_product_name, i_brand, i_class, i_category
limit 100;
--q25 test----
select
 i_item_id
 ,i_item_desc
 ,s_store_id
 ,s_store_name
 ,sum(ss_net_profit) as store_sales_profit
 ,sum(sr_net_loss) as store_returns_loss
 ,sum(cs_net_profit) as catalog_sales_profit
 from
 store_sales_tcpds store_sales
 ,store_returns_tcpds store_returns
 ,catalog_sales_tcpds catalog_sales
 ,date_dim_tcpds d1
 ,date_dim_tcpds d2
 ,date_dim_tcpds d3
 ,store_tcpds store
 ,item_tcpds item
 where
 d1.d_moy = 4
 and d1.d_year = 1998
 and d1.d_date_sk = ss_sold_date_sk
 and i_item_sk = ss_item_sk
 and s_store_sk = ss_store_sk
 and ss_customer_sk = sr_customer_sk
 and ss_item_sk = sr_item_sk
 and ss_ticket_number = sr_ticket_number
 and sr_returned_date_sk = d2.d_date_sk
 and d2.d_moy               between 4 and  10
 and d2.d_year              = 1998
 and sr_customer_sk = cs_bill_customer_sk
 and sr_item_sk = cs_item_sk
 and cs_sold_date_sk = d3.d_date_sk
 and d3.d_moy               between 4 and  10
 and d3.d_year              = 1998
 group by
 i_item_id
 ,i_item_desc
 ,s_store_id
 ,s_store_name
 order by
 i_item_id
 ,i_item_desc
 ,s_store_id
 ,s_store_name
	 ,store_sales_profit
	 ,store_returns_loss
	 ,catalog_sales_profit
 limit 100;
----------------------------------------------------------------------------------------------------
with
    store_sales_tmp as (
         /*ydb.pushdown('->')*/
        select ss_net_profit,ss_sold_date_sk,ss_item_sk,ss_store_sk,ss_customer_sk,ss_ticket_number
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_returns_tmp as (
         /*ydb.pushdown('->')*/
        select sr_net_loss,sr_customer_sk,sr_item_sk,sr_ticket_number,sr_returned_date_sk
        from store_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    catalog_sales_tmp as (
         /*ydb.pushdown('->')*/
        select cs_net_profit,cs_bill_customer_sk,cs_sold_date_sk,cs_item_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp1 as (
         /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_moy = 4 and d_year = 1998
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp2 as (
         /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_moy like '([4 TO 10])' and d_year = 1998
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp3 as (
         /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_moy like '([4 TO 10])' and d_year = 1998
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
         /*ydb.pushdown('->')*/
        select s_store_id,s_store_name,s_store_sk
        from store_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
         /*ydb.pushdown('->')*/
        select i_item_id,i_item_desc,i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    )
select
 i_item_id
 ,i_item_desc
 ,s_store_id
 ,s_store_name
 ,sum(ss_net_profit) as store_sales_profit
 ,sum(sr_net_loss) as store_returns_loss
 ,sum(cs_net_profit) as catalog_sales_profit
 from
 store_sales_tmp store_sales
 ,store_returns_tmp store_returns
 ,catalog_sales_tmp catalog_sales
 ,date_dim_tmp1 d1
 ,date_dim_tmp2 d2
 ,date_dim_tmp3 d3
 ,store_tmp store
 ,item_tmp item
 where
     d1.d_date_sk = ss_sold_date_sk
 and i_item_sk = ss_item_sk
 and s_store_sk = ss_store_sk
 and ss_customer_sk = sr_customer_sk
 and ss_item_sk = sr_item_sk
 and ss_ticket_number = sr_ticket_number
 and sr_returned_date_sk = d2.d_date_sk
 and sr_customer_sk = cs_bill_customer_sk
 and sr_item_sk = cs_item_sk
 and cs_sold_date_sk = d3.d_date_sk
 group by
 i_item_id
 ,i_item_desc
 ,s_store_id
 ,s_store_name
 order by
 i_item_id
 ,i_item_desc
 ,s_store_id
 ,s_store_name
 	 ,store_sales_profit
	 ,store_returns_loss
	 ,catalog_sales_profit
limit 100;
--q26 test----
 select  i_item_id,
        avg(cs_quantity) agg1,
        avg(cs_list_price) agg2,
        avg(cs_coupon_amt) agg3,
        avg(cs_sales_price) agg4
 from
    catalog_sales_tcpds catalog_sales,
    customer_demographics_tcpds customer_demographics,
    date_dim_tcpds date_dim,
    item_tcpds item,
    promotion_tcpds promotion
 where catalog_sales.cs_sold_date_sk = date_dim.d_date_sk and
       catalog_sales.cs_item_sk = item.i_item_sk and
       catalog_sales.cs_bill_cdemo_sk = customer_demographics.cd_demo_sk and
       catalog_sales.cs_promo_sk = promotion.p_promo_sk and
       cd_gender = 'F' and
       cd_marital_status = 'W' and
       cd_education_status = 'Primary' and
       (p_channel_email = 'N' or p_channel_event = 'N') and
       d_year = 1998
 group by i_item_id
 order by i_item_id
	,agg1,agg2,agg3,agg4
 limit 100;
----------------------------------------------------------------------------------------------------
 with
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_quantity,cs_list_price,cs_coupon_amt,cs_sales_price,cs_sold_date_sk,cs_item_sk,cs_bill_cdemo_sk,cs_promo_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_demographics_tmp as (
        /*ydb.pushdown('->')*/
        select cd_demo_sk
        from customer_demographics_tcpydb
        where cd_gender = 'F' and cd_marital_status = 'W' and cd_education_status = 'Primary'
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_year = 1998
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_id,i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    promotion_tmp as (
        /*ydb.pushdown('->')*/
        select p_promo_sk
        from promotion_tcpydb
        where p_channel_email = 'N' or p_channel_event = 'N'
        /*('<-')pushdown.ydb*/
    )
 select  i_item_id,
        avg(cs_quantity) agg1,
        avg(cs_list_price) agg2,
        avg(cs_coupon_amt) agg3,
        avg(cs_sales_price) agg4
 from
    catalog_sales_tmp catalog_sales,
    customer_demographics_tmp customer_demographics,
    date_dim_tmp date_dim,
    item_tmp item,
    promotion_tmp promotion
 where catalog_sales.cs_sold_date_sk = date_dim.d_date_sk and
       catalog_sales.cs_item_sk = item.i_item_sk and
       catalog_sales.cs_bill_cdemo_sk = customer_demographics.cd_demo_sk and
       catalog_sales.cs_promo_sk = promotion.p_promo_sk
 group by i_item_id
 order by i_item_id
 	,agg1,agg2,agg3,agg4
limit 100;
--q27 test----
 select i_item_id,
        s_state,
        avg(ss_quantity) agg1,
        avg(ss_list_price) agg2,
        avg(ss_coupon_amt) agg3,
        avg(ss_sales_price) agg4
 from
    store_sales_tcpds store_sales,
    customer_demographics_tcpds customer_demographics,
    date_dim_tcpds date_dim,
    store_tcpds store,
    item_tcpds item
 where store_sales.ss_sold_date_sk = date_dim.d_date_sk and
       store_sales.ss_item_sk = item.i_item_sk and
       store_sales.ss_store_sk = store.s_store_sk and
       store_sales.ss_cdemo_sk = customer_demographics.cd_demo_sk and
       customer_demographics.cd_gender = 'F' and
       customer_demographics.cd_marital_status = 'D' and
       customer_demographics.cd_education_status = 'Unknown' and
       date_dim.d_year = 1998 and
       store.s_state in ('KS','AL', 'MN', 'AL', 'SC', 'VT')
 group by i_item_id, s_state
 order by i_item_id
         ,s_state
  	,agg1,agg2,agg3,agg4
limit 100;
----------------------------------------------------------------------------------------------------
 with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_quantity,ss_list_price,ss_coupon_amt,ss_sales_price,ss_sold_date_sk,ss_item_sk,ss_store_sk,ss_cdemo_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_demographics_tmp as (
        /*ydb.pushdown('->')*/
        select cd_demo_sk
        from customer_demographics_tcpydb
        where cd_gender = 'F' and cd_marital_status = 'D' and cd_education_status = 'Unknown'
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_year = 1998
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_state,s_store_sk
        from store_tcpydb
        where s_state in ('KS','AL', 'MN', 'AL', 'SC', 'VT')
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_id,i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    )
 select i_item_id,
        s_state,
        avg(ss_quantity) agg1,
        avg(ss_list_price) agg2,
        avg(ss_coupon_amt) agg3,
        avg(ss_sales_price) agg4
 from
    store_sales_tmp store_sales,
    customer_demographics_tmp customer_demographics,
    date_dim_tmp date_dim,
    store_tmp store,
    item_tmp item
 where store_sales.ss_sold_date_sk = date_dim.d_date_sk and
       store_sales.ss_item_sk = item.i_item_sk and
       store_sales.ss_store_sk = store.s_store_sk and
       store_sales.ss_cdemo_sk = customer_demographics.cd_demo_sk
 group by i_item_id, s_state
 order by i_item_id
         ,s_state
  	,agg1,agg2,agg3,agg4
limit 100;
--q28 test----
select  *
from (select avg(ss_list_price) B1_LP
            ,count(ss_list_price) B1_CNT
            ,count(distinct ss_list_price) B1_CNTD
      from store_sales_tcpds store_sales
      where ss_quantity between 0 and 5
        and (ss_list_price between 11 and 11+10
             or ss_coupon_amt between 460 and 460+1000
             or ss_wholesale_cost between 14 and 14+20)) B1,
     (select avg(ss_list_price) B2_LP
            ,count(ss_list_price) B2_CNT
            ,count(distinct ss_list_price) B2_CNTD
      from store_sales_tcpds store_sales
      where ss_quantity between 6 and 10
        and (ss_list_price between 91 and 91+10
          or ss_coupon_amt between 1430 and 1430+1000
          or ss_wholesale_cost between 32 and 32+20)) B2,
     (select avg(ss_list_price) B3_LP
            ,count(ss_list_price) B3_CNT
            ,count(distinct ss_list_price) B3_CNTD
      from store_sales_tcpds store_sales
      where ss_quantity between 11 and 15
        and (ss_list_price between 66 and 66+10
          or ss_coupon_amt between 920 and 920+1000
          or ss_wholesale_cost between 4 and 4+20)) B3,
     (select avg(ss_list_price) B4_LP
            ,count(ss_list_price) B4_CNT
            ,count(distinct ss_list_price) B4_CNTD
      from store_sales_tcpds store_sales
      where ss_quantity between 16 and 20
        and (ss_list_price between 142 and 142+10
          or ss_coupon_amt between 3054 and 3054+1000
          or ss_wholesale_cost between 80 and 80+20)) B4,
     (select avg(ss_list_price) B5_LP
            ,count(ss_list_price) B5_CNT
            ,count(distinct ss_list_price) B5_CNTD
      from store_sales_tcpds store_sales
      where ss_quantity between 21 and 25
        and (ss_list_price between 135 and 135+10
          or ss_coupon_amt between 14180 and 14180+1000
          or ss_wholesale_cost between 38 and 38+20)) B5,
     (select avg(ss_list_price) B6_LP
            ,count(ss_list_price) B6_CNT
            ,count(distinct ss_list_price) B6_CNTD
      from store_sales_tcpds store_sales
      where ss_quantity between 26 and 30
        and (ss_list_price between 28 and 28+10
          or ss_coupon_amt between 2513 and 2513+1000
          or ss_wholesale_cost between 42 and 42+20)) B6
order by
	B1_LP,B1_CNT,B1_CNTD,B2_LP,B2_CNT,B2_CNTD,B3_LP,B3_CNT,B3_CNTD,B4_LP,B4_CNT,B4_CNTD,B5_LP,B5_CNT,B5_CNTD,B6_LP,B6_CNT,B6_CNTD
limit 100;
----------------------------------------------------------------------------------------------------
with
    store_sales_tmp1 as (
        /*ydb.pushdown('->')*/
        select ss_list_price
        from store_sales_tcpydb
        where ss_quantity like '([0 TO 5])'
            and (ss_list_price like '([11 TO 21])'
            or ss_coupon_amt like '([460 TO 1460])'
            or ss_wholesale_cost like '([14 TO 34])')
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp2 as (
        /*ydb.pushdown('->')*/
        select ss_list_price
        from store_sales_tcpydb
        where ss_quantity like '([6 TO 10])'
            and (ss_list_price like '([91 TO 101])'
            or ss_coupon_amt like '([1430 TO 2430])'
            or ss_wholesale_cost like '([32 TO 52])')
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp3 as (
         /*ydb.pushdown('->')*/
        select ss_list_price
        from store_sales_tcpydb
        where ss_quantity like '([11 TO 15])'
            and (ss_list_price like '([66 TO 76])'
            or ss_coupon_amt like '([920 TO 1920])'
            or ss_wholesale_cost like '([4 TO 24])')
        /*('<-')pushdown.ydb*/
   ),
    store_sales_tmp4 as (
        /*ydb.pushdown('->')*/
        select ss_list_price
        from store_sales_tcpydb
        where ss_quantity like '([16 TO 20])'
            and (ss_list_price like '([142 TO 152])'
            or ss_coupon_amt like '([3054 TO 4054])'
            or ss_wholesale_cost like '([80 TO 100])')
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp5 as (
        /*ydb.pushdown('->')*/
        select ss_list_price
        from store_sales_tcpydb
        where ss_quantity like '([21 TO 25])'
            and (ss_list_price like '([135 TO 145])'
            or ss_coupon_amt like '([14180 TO 15180])'
            or ss_wholesale_cost like '([38 TO 58])')
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp6 as (
        /*ydb.pushdown('->')*/
        select ss_list_price
        from store_sales_tcpydb
        where ss_quantity like '([26 TO 30])'
            and (ss_list_price like '([28 TO 38])'
            or ss_coupon_amt like '([2513 TO 3513])'
            or ss_wholesale_cost like '([42 TO 62])')
        /*('<-')pushdown.ydb*/
    )
select  *
from (select avg(ss_list_price) B1_LP
            ,count(ss_list_price) B1_CNT
            ,count(distinct ss_list_price) B1_CNTD
      from store_sales_tmp1 store_sales) B1,
     (select avg(ss_list_price) B2_LP
            ,count(ss_list_price) B2_CNT
            ,count(distinct ss_list_price) B2_CNTD
      from store_sales_tmp2 store_sales) B2,
     (select avg(ss_list_price) B3_LP
            ,count(ss_list_price) B3_CNT
            ,count(distinct ss_list_price) B3_CNTD
      from store_sales_tmp3 store_sales) B3,
     (select avg(ss_list_price) B4_LP
            ,count(ss_list_price) B4_CNT
            ,count(distinct ss_list_price) B4_CNTD
      from store_sales_tmp4 store_sales) B4,
     (select avg(ss_list_price) B5_LP
            ,count(ss_list_price) B5_CNT
            ,count(distinct ss_list_price) B5_CNTD
      from store_sales_tmp5 store_sales) B5,
     (select avg(ss_list_price) B6_LP
            ,count(ss_list_price) B6_CNT
            ,count(distinct ss_list_price) B6_CNTD
      from store_sales_tmp6 store_sales) B6
order by
	B1_LP,B1_CNT,B1_CNTD,B2_LP,B2_CNT,B2_CNTD,B3_LP,B3_CNT,B3_CNTD,B4_LP,B4_CNT,B4_CNTD,B5_LP,B5_CNT,B5_CNTD,B6_LP,B6_CNT,B6_CNTD
limit 100;
--q29 test----
 select
     i_item_id
    ,i_item_desc
    ,s_store_id
    ,s_store_name
    ,sum(ss_quantity)        as store_sales_quantity
    ,sum(sr_return_quantity) as store_returns_quantity
    ,sum(cs_quantity)        as catalog_sales_quantity
 from
    store_sales_tcpds store_sales
   ,store_returns_tcpds store_returns
   ,catalog_sales_tcpds catalog_sales
   ,date_dim_tcpds d1
   ,date_dim_tcpds d2
   ,date_dim_tcpds d3
   ,store_tcpds store
   ,item_tcpds item
 where
     d1.d_moy               = 2
 and d1.d_year              = 2000
 and d1.d_date_sk           = ss_sold_date_sk
 and i_item_sk              = ss_item_sk
 and s_store_sk             = ss_store_sk
 and ss_customer_sk         = sr_customer_sk
 and ss_item_sk             = sr_item_sk
 and ss_ticket_number       = sr_ticket_number
 and sr_returned_date_sk    = d2.d_date_sk
 and d2.d_moy               between 2 and  2 + 3
 and d2.d_year              = 2000
 and sr_customer_sk         = cs_bill_customer_sk
 and sr_item_sk             = cs_item_sk
 and cs_sold_date_sk        = d3.d_date_sk
 and d3.d_year              in (2000,2000+1,2000+2)
 group by
    i_item_id
   ,i_item_desc
   ,s_store_id
   ,s_store_name
 order by
    i_item_id
   ,i_item_desc
   ,s_store_id
   ,s_store_name
    ,store_sales_quantity
    ,store_returns_quantity
    ,catalog_sales_quantity
 limit 100;
----------------------------------------------------------------------------------------------------
 with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_quantity,ss_sold_date_sk,ss_item_sk,ss_store_sk,ss_customer_sk,ss_ticket_number
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_returns_tmp as (
        /*ydb.pushdown('->')*/
        select sr_return_quantity,sr_customer_sk,sr_item_sk,sr_ticket_number,sr_returned_date_sk
        from store_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_quantity,cs_bill_customer_sk,cs_item_sk,cs_sold_date_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp1 as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_moy = 2 and d_year = 2000
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp2 as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_moy like '([2 TO 5])' and d_year = 2000
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp3 as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_year in (2000,2000+1,2000+2)
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_store_id,s_store_name,s_store_sk
        from store_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_id,i_item_desc,i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    )
 select
     i_item_id
    ,i_item_desc
    ,s_store_id
    ,s_store_name
    ,sum(ss_quantity)        as store_sales_quantity
    ,sum(sr_return_quantity) as store_returns_quantity
    ,sum(cs_quantity)        as catalog_sales_quantity
 from
    store_sales_tmp store_sales
   ,store_returns_tmp store_returns
   ,catalog_sales_tmp catalog_sales
   ,date_dim_tmp1 d1
   ,date_dim_tmp2 d2
   ,date_dim_tmp3 d3
   ,store_tmp store
   ,item_tmp item
 where
     d1.d_date_sk           = ss_sold_date_sk
 and i_item_sk              = ss_item_sk
 and s_store_sk             = ss_store_sk
 and ss_customer_sk         = sr_customer_sk
 and ss_item_sk             = sr_item_sk
 and ss_ticket_number       = sr_ticket_number
 and sr_returned_date_sk    = d2.d_date_sk
 and sr_customer_sk         = cs_bill_customer_sk
 and sr_item_sk             = cs_item_sk
 and cs_sold_date_sk        = d3.d_date_sk
 group by
    i_item_id
   ,i_item_desc
   ,s_store_id
   ,s_store_name
 order by
    i_item_id
   ,i_item_desc
   ,s_store_id
   ,s_store_name
    ,store_sales_quantity
    ,store_returns_quantity
    ,catalog_sales_quantity
 limit 100;
--q31 test----
with ss as
 (select ca_county,d_qoy, d_year,sum(ss_ext_sales_price) as store_sales
 from
    store_sales_tcpds store_sales,
    date_dim_tcpds date_dim,
    customer_address_tcpds customer_address
 where ss_sold_date_sk = d_date_sk
  and ss_addr_sk=ca_address_sk
 group by ca_county,d_qoy, d_year),
 ws as
 (select ca_county,d_qoy, d_year,sum(ws_ext_sales_price) as web_sales
 from
    web_sales_tcpds web_sales,
    date_dim_tcpds date_dim,
    customer_address_tcpds customer_address
 where ws_sold_date_sk = d_date_sk
  and ws_bill_addr_sk=ca_address_sk
 group by ca_county,d_qoy, d_year)
 select
        ss1.ca_county
       ,ss1.d_year
       ,ws2.web_sales/ws1.web_sales web_q1_q2_increase
       ,ss2.store_sales/ss1.store_sales store_q1_q2_increase
       ,ws3.web_sales/ws2.web_sales web_q2_q3_increase
       ,ss3.store_sales/ss2.store_sales store_q2_q3_increase
 from
        ss ss1
       ,ss ss2
       ,ss ss3
       ,ws ws1
       ,ws ws2
       ,ws ws3
 where
    ss1.d_qoy = 1
    and ss1.d_year = 1998
    and ss1.ca_county = ss2.ca_county
    and ss2.d_qoy = 2
    and ss2.d_year = 1998
 and ss2.ca_county = ss3.ca_county
    and ss3.d_qoy = 3
    and ss3.d_year = 1998
    and ss1.ca_county = ws1.ca_county
    and ws1.d_qoy = 1
    and ws1.d_year = 1998
    and ws1.ca_county = ws2.ca_county
    and ws2.d_qoy = 2
    and ws2.d_year = 1998
    and ws1.ca_county = ws3.ca_county
    and ws3.d_qoy = 3
    and ws3.d_year =1998
    and case when ws1.web_sales > 0 then ws2.web_sales/ws1.web_sales else null end
       > case when ss1.store_sales > 0 then ss2.store_sales/ss1.store_sales else null end
    and case when ws2.web_sales > 0 then ws3.web_sales/ws2.web_sales else null end
       > case when ss2.store_sales > 0 then ss3.store_sales/ss2.store_sales else null end
 order by web_q1_q2_increase
       ,ss1.ca_county
       ,ss1.d_year
       ,store_q1_q2_increase
       ,web_q2_q3_increase
       ,store_q2_q3_increase
 ;
----------------------------------------------------------------------------------------------------
with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ext_sales_price,ss_sold_date_sk,ss_addr_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_qoy,d_year,d_date_sk
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_address_tmp as (
        /*ydb.pushdown('->')*/
        select ca_county,ca_address_sk
        from customer_address_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    web_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ws_ext_sales_price,ws_sold_date_sk,ws_bill_addr_sk
        from web_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
 ss as
 (select ca_county,d_qoy, d_year,sum(ss_ext_sales_price) as store_sales
 from
    store_sales_tmp store_sales,
    date_dim_tmp date_dim,
    customer_address_tmp customer_address
 where ss_sold_date_sk = d_date_sk
  and ss_addr_sk=ca_address_sk
 group by ca_county,d_qoy, d_year),
 ws as
 (select ca_county,d_qoy, d_year,sum(ws_ext_sales_price) as web_sales
 from
    web_sales_tmp web_sales,
    date_dim_tmp date_dim,
    customer_address_tmp customer_address
 where ws_sold_date_sk = d_date_sk
  and ws_bill_addr_sk=ca_address_sk
 group by ca_county,d_qoy, d_year)
 select
        ss1.ca_county
       ,ss1.d_year
       ,ws2.web_sales/ws1.web_sales web_q1_q2_increase
       ,ss2.store_sales/ss1.store_sales store_q1_q2_increase
       ,ws3.web_sales/ws2.web_sales web_q2_q3_increase
       ,ss3.store_sales/ss2.store_sales store_q2_q3_increase
 from
        ss ss1
       ,ss ss2
       ,ss ss3
       ,ws ws1
       ,ws ws2
       ,ws ws3
 where
    ss1.d_qoy = 1
    and ss1.d_year = 1998
    and ss1.ca_county = ss2.ca_county
    and ss2.d_qoy = 2
    and ss2.d_year = 1998
 and ss2.ca_county = ss3.ca_county
    and ss3.d_qoy = 3
    and ss3.d_year = 1998
    and ss1.ca_county = ws1.ca_county
    and ws1.d_qoy = 1
    and ws1.d_year = 1998
    and ws1.ca_county = ws2.ca_county
    and ws2.d_qoy = 2
    and ws2.d_year = 1998
    and ws1.ca_county = ws3.ca_county
    and ws3.d_qoy = 3
    and ws3.d_year =1998
    and case when ws1.web_sales > 0 then ws2.web_sales/ws1.web_sales else null end
       > case when ss1.store_sales > 0 then ss2.store_sales/ss1.store_sales else null end
    and case when ws2.web_sales > 0 then ws3.web_sales/ws2.web_sales else null end
       > case when ss2.store_sales > 0 then ss3.store_sales/ss2.store_sales else null end
 order by web_q1_q2_increase
       ,ss1.ca_county
       ,ss1.d_year
       ,store_q1_q2_increase
       ,web_q2_q3_increase
       ,store_q2_q3_increase
 ;
--q32 test----
SELECT sum(cs1.cs_ext_discount_amt) as excess_discount_amount
FROM (SELECT cs.cs_item_sk as cs_item_sk,
             cs.cs_ext_discount_amt as cs_ext_discount_amt
             FROM catalog_sales_tcpds cs
             JOIN date_dim_tcpds d ON (d.d_date_sk = cs.cs_sold_date_sk)
             WHERE d.d_date between '2000-01-27' and '2000-04-27') cs1
    JOIN item_tcpds i ON (i.i_item_sk = cs1.cs_item_sk)
    JOIN (SELECT cs2.cs_item_sk as cs_item_sk,
             1.3 * avg(cs_ext_discount_amt) as avg_cs_ext_discount_amt
           FROM (SELECT cs.cs_item_sk as cs_item_sk,
                        cs.cs_ext_discount_amt as cs_ext_discount_amt
                        FROM catalog_sales_tcpds cs
                        JOIN date_dim_tcpds d ON (d.d_date_sk = cs.cs_sold_date_sk)
                        WHERE d.d_date between '2000-01-27' and '2000-04-27') cs2
                        GROUP BY cs2.cs_item_sk) tmp1
        ON (i.i_item_sk = tmp1.cs_item_sk)
WHERE i.i_manufact_id = 436 and
      cs1.cs_ext_discount_amt > tmp1.avg_cs_ext_discount_amt
order by excess_discount_amount;
----------------------------------------------------------------------------------------------------
with
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_ext_discount_amt,cs_item_sk,cs_sold_date_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk,d_date
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_sk
        from item_tcpydb
        where i_manufact_id = 436
        /*('<-')pushdown.ydb*/
    )
SELECT sum(cs1.cs_ext_discount_amt) as excess_discount_amount
FROM (SELECT cs.cs_item_sk as cs_item_sk,
             cs.cs_ext_discount_amt as cs_ext_discount_amt
             FROM catalog_sales_tmp cs
             JOIN date_dim_tmp d ON (d.d_date_sk = cs.cs_sold_date_sk)
             WHERE d.d_date between '2000-01-27' and '2000-04-27') cs1
    JOIN item_tmp i ON (i.i_item_sk = cs1.cs_item_sk)
    JOIN (SELECT cs2.cs_item_sk as cs_item_sk,
             1.3 * avg(cs_ext_discount_amt) as avg_cs_ext_discount_amt
           FROM (SELECT cs.cs_item_sk as cs_item_sk,
                        cs.cs_ext_discount_amt as cs_ext_discount_amt
                        FROM catalog_sales_tmp cs
                        JOIN date_dim_tmp d ON (d.d_date_sk = cs.cs_sold_date_sk)
                        WHERE d.d_date between '2000-01-27' and '2000-04-27') cs2
                        GROUP BY cs2.cs_item_sk) tmp1
        ON (i.i_item_sk = tmp1.cs_item_sk)
WHERE cs1.cs_ext_discount_amt > tmp1.avg_cs_ext_discount_amt
order by excess_discount_amount;
--q34 test----
select c_last_name
       ,c_first_name
       ,c_salutation
       ,c_preferred_cust_flag
       ,ss_ticket_number
       ,cnt
from
   (select ss_ticket_number
          ,ss_customer_sk
          ,count(*) cnt
    from store_sales_tcpds store_sales
        ,date_dim_tcpds date_dim
        ,store_tcpds store
        ,household_demographics_tcpds household_demographics
    where store_sales.ss_sold_date_sk = date_dim.d_date_sk
    and store_sales.ss_store_sk = store.s_store_sk
    and store_sales.ss_hdemo_sk = household_demographics.hd_demo_sk
    and (date_dim.d_dom between 1 and 3 or date_dim.d_dom between 25 and 28)
    and (household_demographics.hd_buy_potential = '1001-5000' or
         household_demographics.hd_buy_potential = '5001-10000')
    and household_demographics.hd_vehicle_count > 0
    and (case when household_demographics.hd_vehicle_count > 0
    then household_demographics.hd_dep_count/ household_demographics.hd_vehicle_count
    else null
    end)  > 1.2
    and date_dim.d_year in (1998,1998+1,1998+2)
    and store.s_county in ('Kittitas County','Adams County','Richland County','Furnas County',
                           'Orange County','Appanoose County','Franklin Parish','Tehama County')
    group by ss_ticket_number,ss_customer_sk) dn
    ,customer_tcpds customer
where dn.ss_customer_sk = customer.c_customer_sk
    and cnt between 15 and 20
order by c_last_name,c_first_name,c_salutation,c_preferred_cust_flag desc
	   ,ss_ticket_number
       ,cnt;
----------------------------------------------------------------------------------------------------
with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ticket_number,ss_customer_sk,ss_sold_date_sk,ss_store_sk,ss_hdemo_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where (d_dom like '([1 TO 3])' or d_dom like '([25 TO 28])')
              and d_year in (1998,1999,2000)
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_store_sk
        from store_tcpydb
        where s_county in ('Kittitas County','Adams County','Richland County','Furnas County',
                           'Orange County','Appanoose County','Franklin Parish','Tehama County')
        /*('<-')pushdown.ydb*/
    ),
    household_demographics_tmp as (
        /*ydb.pushdown('->')*/
        select hd_demo_sk,hd_vehicle_count,hd_dep_count
        from household_demographics_tcpydb
        where hd_buy_potential in ('1001-5000','5001-10000')
            and hd_vehicle_count > 0
        /*('<-')pushdown.ydb*/
    ),
    customer_tmp as (
        /*ydb.pushdown('->')*/
        select c_last_name,c_first_name,c_salutation,c_preferred_cust_flag,c_customer_sk
        from customer_tcpydb
        /*('<-')pushdown.ydb*/
    )
select c_last_name
       ,c_first_name
       ,c_salutation
       ,c_preferred_cust_flag
       ,ss_ticket_number
       ,cnt
from
   (select ss_ticket_number
          ,ss_customer_sk
          ,count(*) cnt
    from store_sales_tmp store_sales
        ,date_dim_tmp date_dim
        ,store_tmp store
        ,household_demographics_tmp household_demographics
    where store_sales.ss_sold_date_sk = date_dim.d_date_sk
    and store_sales.ss_store_sk = store.s_store_sk
    and store_sales.ss_hdemo_sk = household_demographics.hd_demo_sk
    and (case when household_demographics.hd_vehicle_count > 0
        then household_demographics.hd_dep_count/ household_demographics.hd_vehicle_count
        else null
        end)  > 1.2
    group by ss_ticket_number,ss_customer_sk) dn
    ,customer_tmp customer
where dn.ss_customer_sk = customer.c_customer_sk
    and cnt between 15 and 20
order by c_last_name,c_first_name,c_salutation,c_preferred_cust_flag desc
	   ,ss_ticket_number
       ,cnt;
--q39 test----
with inv as
(select w_warehouse_name,w_warehouse_sk,i_item_sk,d_moy
       ,stdev,mean, case mean when 0 then null else stdev/mean end cov
 from(select w_warehouse_name,w_warehouse_sk,i_item_sk,d_moy
            ,stddev_samp(inv_quantity_on_hand) stdev,avg(inv_quantity_on_hand) mean
      from inventory_tcpds inventory
          ,item_tcpds item
          ,warehouse_tcpds warehouse
          ,date_dim_tcpds date_dim
      where inv_item_sk = i_item_sk
        and inv_warehouse_sk = w_warehouse_sk
        and inv_date_sk = d_date_sk
        and d_year =1999
      group by w_warehouse_name,w_warehouse_sk,i_item_sk,d_moy) foo
 where case mean when 0 then 0 else stdev/mean end > 1)
select inv1.w_warehouse_sk,inv1.i_item_sk,inv1.d_moy,inv1.mean, inv1.cov
        ,inv2.w_warehouse_sk,inv2.i_item_sk,inv2.d_moy,inv2.mean, inv2.cov
from inv inv1,inv inv2
where inv1.i_item_sk = inv2.i_item_sk
  and inv1.w_warehouse_sk =  inv2.w_warehouse_sk
  and inv1.d_moy=3
  and inv2.d_moy=3+1
order by inv1.w_warehouse_sk,inv1.i_item_sk,inv1.d_moy,inv1.mean,inv1.cov
        ,inv2.d_moy,inv2.mean, inv2.cov
    ,inv2.w_warehouse_sk,inv2.i_item_sk
;
----------------------------------------------------------------------------------------------------
with
    inventory_tmp as (
        /*ydb.pushdown('->')*/
        select inv_quantity_on_hand,inv_item_sk,inv_warehouse_sk,inv_date_sk
        from inventory_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    warehouse_tmp as (
        /*ydb.pushdown('->')*/
        select w_warehouse_name,w_warehouse_sk
        from warehouse_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_moy,d_date_sk
        from date_dim_tcpydb
        where d_year = 1999
        /*('<-')pushdown.ydb*/
    ),
inv as
(select w_warehouse_name,w_warehouse_sk,i_item_sk,d_moy
       ,stdev,mean, case mean when 0 then null else stdev/mean end cov
 from(select w_warehouse_name,w_warehouse_sk,i_item_sk,d_moy
            ,stddev_samp(inv_quantity_on_hand) stdev,avg(inv_quantity_on_hand) mean
      from inventory_tmp inventory
          ,item_tmp item
          ,warehouse_tmp warehouse
          ,date_dim_tmp date_dim
      where inv_item_sk = i_item_sk
        and inv_warehouse_sk = w_warehouse_sk
        and inv_date_sk = d_date_sk
      group by w_warehouse_name,w_warehouse_sk,i_item_sk,d_moy) foo
 where case mean when 0 then 0 else stdev/mean end > 1)
select inv1.w_warehouse_sk,inv1.i_item_sk,inv1.d_moy,inv1.mean, inv1.cov
        ,inv2.w_warehouse_sk,inv2.i_item_sk,inv2.d_moy,inv2.mean, inv2.cov
from inv inv1,inv inv2
where inv1.i_item_sk = inv2.i_item_sk
  and inv1.w_warehouse_sk =  inv2.w_warehouse_sk
  and inv1.d_moy=3
  and inv2.d_moy=3+1
order by inv1.w_warehouse_sk,inv1.i_item_sk,inv1.d_moy,inv1.mean,inv1.cov
        ,inv2.d_moy,inv2.mean, inv2.cov
    ,inv2.w_warehouse_sk,inv2.i_item_sk
;
--q40 test----
select
   w_state
  ,i_item_id
  ,sum(case when (cast(d_date as date) < cast ('1998-04-08' as date))
         then cs_sales_price - coalesce(cr_refunded_cash,0) else 0 end) as sales_before
  ,sum(case when (cast(d_date as date) >= cast ('1998-04-08' as date))
         then cs_sales_price - coalesce(cr_refunded_cash,0) else 0 end) as sales_after
 from
   catalog_sales_tcpds catalog_sales
   left outer join catalog_returns_tcpds catalog_returns
       on
       (catalog_sales.cs_order_number = catalog_returns.cr_order_number
        and catalog_sales.cs_item_sk = catalog_returns.cr_item_sk)
  ,warehouse_tcpds warehouse
  ,item_tcpds item
  ,date_dim_tcpds date_dim
 where
     i_current_price between 0.99 and 1.49
 and item.i_item_sk          = catalog_sales.cs_item_sk
 and catalog_sales.cs_warehouse_sk    = warehouse.w_warehouse_sk
 and catalog_sales.cs_sold_date_sk    = date_dim.d_date_sk
 and date_dim.d_date between '1998-03-09' and '1998-05-08'
 group by
    w_state,i_item_id
 order by w_state,i_item_id
  ,sales_before
  ,sales_after
limit 100;
----------------------------------------------------------------------------------------------------
with
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_sales_price,cs_order_number,cs_item_sk,cs_warehouse_sk,cs_sold_date_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    catalog_returns_tmp as (
        /*ydb.pushdown('->')*/
        select cr_refunded_cash,cr_order_number,cr_item_sk
        from catalog_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    warehouse_tmp as (
        /*ydb.pushdown('->')*/
        select w_state,w_warehouse_sk
        from warehouse_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_id,i_current_price,i_item_sk
        from item_tcpydb
        where i_current_price like '([0.99 TO 1.49])'
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date,d_date_sk
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    )
select
   w_state
  ,i_item_id
  ,sum(case when (cast(d_date as date) < cast ('1998-04-08' as date))
         then cs_sales_price - coalesce(cr_refunded_cash,0) else 0 end) as sales_before
  ,sum(case when (cast(d_date as date) >= cast ('1998-04-08' as date))
         then cs_sales_price - coalesce(cr_refunded_cash,0) else 0 end) as sales_after
 from
   catalog_sales_tmp catalog_sales
   left outer join catalog_returns_tmp catalog_returns
       on
       (catalog_sales.cs_order_number = catalog_returns.cr_order_number
        and catalog_sales.cs_item_sk = catalog_returns.cr_item_sk)
  ,warehouse_tmp warehouse
  ,item_tmp item
  ,date_dim_tmp date_dim
 where
     item.i_item_sk          = catalog_sales.cs_item_sk
 and catalog_sales.cs_warehouse_sk    = warehouse.w_warehouse_sk
 and catalog_sales.cs_sold_date_sk    = date_dim.d_date_sk
 and date_dim.d_date between '1998-03-09' and '1998-05-08'
 group by
    w_state,i_item_id
 order by w_state,i_item_id
  ,sales_before
  ,sales_after
limit 100;
--q42 test----
 select  dt.d_year
     ,item.i_category_id
     ,item.i_category
     ,sum(ss_ext_sales_price) as s
 from
    date_dim_tcpds dt
     ,store_sales_tcpds store_sales
     ,item_tcpds item
 where dt.d_date_sk = store_sales.ss_sold_date_sk
     and store_sales.ss_item_sk = item.i_item_sk
     and item.i_manager_id = 1
     and dt.d_moy=12
     and dt.d_year=1998
 group by     dt.d_year
         ,item.i_category_id
         ,item.i_category
 order by       s desc,dt.d_year
         ,item.i_category_id
         ,item.i_category
limit 100 ;
----------------------------------------------------------------------------------------------------
 with
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_year,d_date_sk
        from date_dim_tcpydb
        where d_moy=12 and d_year=1998
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ext_sales_price,ss_sold_date_sk,ss_item_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_category_id,i_category,i_item_sk
        from item_tcpydb
        where i_manager_id = 1
        /*('<-')pushdown.ydb*/
    )
 select  dt.d_year
     ,item.i_category_id
     ,item.i_category
     ,sum(ss_ext_sales_price) as s
 from
    date_dim_tmp dt
     ,store_sales_tmp store_sales
     ,item_tmp item
 where dt.d_date_sk = store_sales.ss_sold_date_sk
     and store_sales.ss_item_sk = item.i_item_sk
 group by     dt.d_year
         ,item.i_category_id
         ,item.i_category
 order by       s desc,dt.d_year
         ,item.i_category_id
         ,item.i_category
limit 100 ;
--q43 test----
select  s_store_name, s_store_id,
        sum(case when (d_day_name='Sunday') then ss_sales_price else null end) sun_sales,
        sum(case when (d_day_name='Monday') then ss_sales_price else null end) mon_sales,
        sum(case when (d_day_name='Tuesday') then ss_sales_price else  null end) tue_sales,
        sum(case when (d_day_name='Wednesday') then ss_sales_price else null end) wed_sales,
        sum(case when (d_day_name='Thursday') then ss_sales_price else null end) thu_sales,
        sum(case when (d_day_name='Friday') then ss_sales_price else null end) fri_sales,
        sum(case when (d_day_name='Saturday') then ss_sales_price else null end) sat_sales
 from
    date_dim_tcpds date_dim
    , store_sales_tcpds store_sales
    , store_tcpds store
 where date_dim.d_date_sk = store_sales.ss_sold_date_sk and
       store.s_store_sk = store_sales.ss_store_sk and
       s_gmt_offset = -6 and
       d_year = 1998
 group by s_store_name, s_store_id
 order by s_store_name, s_store_id,sun_sales,mon_sales,tue_sales,wed_sales,thu_sales,fri_sales,sat_sales
 limit 100;
----------------------------------------------------------------------------------------------------
 with
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_day_name,d_date_sk
        from date_dim_tcpydb
        where d_year = 1998
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_sales_price,ss_sold_date_sk,ss_store_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_store_name,s_store_id,s_store_sk
        from store_tcpydb
        where s_gmt_offset = -6
        /*('<-')pushdown.ydb*/
    )
 select  s_store_name, s_store_id,
        sum(case when (d_day_name='Sunday') then ss_sales_price else null end) sun_sales,
        sum(case when (d_day_name='Monday') then ss_sales_price else null end) mon_sales,
        sum(case when (d_day_name='Tuesday') then ss_sales_price else  null end) tue_sales,
        sum(case when (d_day_name='Wednesday') then ss_sales_price else null end) wed_sales,
        sum(case when (d_day_name='Thursday') then ss_sales_price else null end) thu_sales,
        sum(case when (d_day_name='Friday') then ss_sales_price else null end) fri_sales,
        sum(case when (d_day_name='Saturday') then ss_sales_price else null end) sat_sales
 from
    date_dim_tmp date_dim
    , store_sales_tmp store_sales
    , store_tmp store
 where date_dim.d_date_sk = store_sales.ss_sold_date_sk and
       store.s_store_sk = store_sales.ss_store_sk
 group by s_store_name, s_store_id
 order by s_store_name, s_store_id,sun_sales,mon_sales,tue_sales,wed_sales,thu_sales,fri_sales,sat_sales
 limit 100;
--q46 test----
 select  c_last_name
       ,c_first_name
       ,ca_city
       ,bought_city
       ,ss_ticket_number
       ,amt,profit
 from
   (select ss_ticket_number
          ,ss_customer_sk
          ,ca_city bought_city
          ,sum(ss_coupon_amt) amt
          ,sum(ss_net_profit) profit
    from
        store_sales_tcpds store_sales
        ,date_dim_tcpds date_dim
        ,store_tcpds store
        ,household_demographics_tcpds household_demographics
        ,customer_address_tcpds customer_address
    where store_sales.ss_sold_date_sk = date_dim.d_date_sk
    and store_sales.ss_store_sk = store.s_store_sk
    and store_sales.ss_hdemo_sk = household_demographics.hd_demo_sk
    and store_sales.ss_addr_sk = customer_address.ca_address_sk
    and (household_demographics.hd_dep_count = 4 or
         household_demographics.hd_vehicle_count= 2)
    and date_dim.d_dow in (6,0)
    and date_dim.d_year in (1998,1998+1,1998+2)
    and store.s_city in ('Rosedale','Bethlehem','Clinton','Clifton','Springfield')
    group by ss_ticket_number,ss_customer_sk,ss_addr_sk,ca_city) dn
    ,customer_tcpds customer
    ,customer_address_tcpds current_addr
    where dn.ss_customer_sk = customer.c_customer_sk
      and customer.c_current_addr_sk = current_addr.ca_address_sk
      and current_addr.ca_city <> bought_city
  order by c_last_name
          ,c_first_name
          ,ca_city
          ,bought_city
          ,ss_ticket_number
       ,amt,profit
  limit 100;
----------------------------------------------------------------------------------------------------
 with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ticket_number,ss_customer_sk,ss_coupon_amt,ss_net_profit,ss_sold_date_sk,ss_store_sk,ss_hdemo_sk,ss_addr_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_dow in (6,0) and d_year in (1998,1999,2000)
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_store_sk
        from store_tcpydb
        where s_city in ('Rosedale','Bethlehem','Clinton','Clifton','Springfield')
        /*('<-')pushdown.ydb*/
    ),
    household_demographics_tmp as (
        /*ydb.pushdown('->')*/
        select hd_demo_sk
        from household_demographics_tcpydb
        where hd_dep_count = 4 or hd_vehicle_count= 2
        /*('<-')pushdown.ydb*/
    ),
    customer_address_tmp1 as (
        /*ydb.pushdown('->')*/
        select ca_city,ca_address_sk
        from customer_address_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_tmp as (
        /*ydb.pushdown('->')*/
        select c_last_name,c_first_name,c_customer_sk,c_current_addr_sk
        from customer_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_address_tmp2 as (
        /*ydb.pushdown('->')*/
        select ca_city,ca_address_sk
        from customer_address_tcpydb
        /*('<-')pushdown.ydb*/
    )
 select  c_last_name
       ,c_first_name
       ,ca_city
       ,bought_city
       ,ss_ticket_number
       ,amt,profit
 from
   (select ss_ticket_number
          ,ss_customer_sk
          ,ca_city bought_city
          ,sum(ss_coupon_amt) amt
          ,sum(ss_net_profit) profit
    from
        store_sales_tmp store_sales
        ,date_dim_tmp date_dim
        ,store_tmp store
        ,household_demographics_tmp household_demographics
        ,customer_address_tmp1 customer_address
    where store_sales.ss_sold_date_sk = date_dim.d_date_sk
    and store_sales.ss_store_sk = store.s_store_sk
    and store_sales.ss_hdemo_sk = household_demographics.hd_demo_sk
    and store_sales.ss_addr_sk = customer_address.ca_address_sk
    group by ss_ticket_number,ss_customer_sk,ss_addr_sk,ca_city) dn
    ,customer_tmp customer
    ,customer_address_tmp2 current_addr
 where dn.ss_customer_sk = customer.c_customer_sk
      and customer.c_current_addr_sk = current_addr.ca_address_sk
      and current_addr.ca_city <> bought_city
 order by c_last_name
          ,c_first_name
          ,ca_city
          ,bought_city
          ,ss_ticket_number
       ,amt,profit
  limit 100;
--q48 test----
select sum (ss_quantity) as col_sum
 from
    store_sales_tcpds store_sales
    , store_tcpds store
    , customer_demographics_tcpds customer_demographics
    , customer_address_tcpds customer_address
    , date_dim_tcpds date_dim
 where store.s_store_sk = store_sales.ss_store_sk
 and  store_sales.ss_sold_date_sk = date_dim.d_date_sk and d_year = 1998
 and
 (
  (
   customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
   and
   cd_marital_status = 'M'
   and
   cd_education_status = '4 yr Degree'
   and
   ss_sales_price between 100.00 and 150.00
   )
 or
  (
  customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
   and
   cd_marital_status = 'M'
   and
   cd_education_status = '4 yr Degree'
   and
   ss_sales_price between 50.00 and 100.00
  )
 or
 (
  customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
  and
   cd_marital_status = 'M'
   and
   cd_education_status = '4 yr Degree'
   and
   ss_sales_price between 150.00 and 200.00
 )
 )
 and
 (
  (
  store_sales.ss_addr_sk = customer_address.ca_address_sk
  and
  ca_country = 'United States'
  and
  ca_state in ('KY', 'GA', 'NM')
  and ss_net_profit between 0 and 2000
  )
 or
  (store_sales.ss_addr_sk = customer_address.ca_address_sk
  and
  ca_country = 'United States'
  and
  ca_state in ('MT', 'OR', 'IN')
  and ss_net_profit between 150 and 3000
  )
 or
  (store_sales.ss_addr_sk = customer_address.ca_address_sk
  and
  ca_country = 'United States'
  and
  ca_state in ('WI', 'MO', 'WV')
  and ss_net_profit between 50 and 25000
  )
 )
order by col_sum
;
----------------------------------------------------------------------------------------------------
 with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_quantity,ss_store_sk,ss_sold_date_sk,ss_cdemo_sk,ss_sales_price,ss_addr_sk,ss_net_profit
        from store_sales_tcpydb
        where ss_sales_price like '([50.00 TO 200.00])'
            and ss_net_profit like '([0 TO 25000])'
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_store_sk
        from store_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_demographics_tmp as (
        /*ydb.pushdown('->')*/
        select cd_demo_sk,cd_marital_status,cd_education_status
        from customer_demographics_tcpydb
        where cd_marital_status = 'M' and cd_education_status = '4 yr Degree'
        /*('<-')pushdown.ydb*/
    ),
    customer_address_tmp as (
        /*ydb.pushdown('->')*/
        select ca_address_sk,ca_country,ca_state
        from customer_address_tcpydb
        where ca_country = 'United States'
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_year = 1998
        /*('<-')pushdown.ydb*/
    )
 select sum (ss_quantity) as col_sum
 from
    store_sales_tmp store_sales
    , store_tmp store
    , customer_demographics_tmp customer_demographics
    , customer_address_tmp customer_address
    , date_dim_tmp date_dim
 where store.s_store_sk = store_sales.ss_store_sk
 and  store_sales.ss_sold_date_sk = date_dim.d_date_sk
 and
 (
  (
   customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
   and
   cd_marital_status = 'M'
   and
   cd_education_status = '4 yr Degree'
   and
   ss_sales_price between 100.00 and 150.00
   )
 or
  (
  customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
   and
   cd_marital_status = 'M'
   and
   cd_education_status = '4 yr Degree'
   and
   ss_sales_price between 50.00 and 100.00
  )
 or
 (
  customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
  and
   cd_marital_status = 'M'
   and
   cd_education_status = '4 yr Degree'
   and
   ss_sales_price between 150.00 and 200.00
 )
 )
 and
 (
  (
  store_sales.ss_addr_sk = customer_address.ca_address_sk
  and
  ca_country = 'United States'
  and
  ca_state in ('KY', 'GA', 'NM')
  and ss_net_profit between 0 and 2000
  )
 or
  (store_sales.ss_addr_sk = customer_address.ca_address_sk
  and
  ca_country = 'United States'
  and
  ca_state in ('MT', 'OR', 'IN')
  and ss_net_profit between 150 and 3000
  )
 or
  (store_sales.ss_addr_sk = customer_address.ca_address_sk
  and
  ca_country = 'United States'
  and
  ca_state in ('WI', 'MO', 'WV')
  and ss_net_profit between 50 and 25000
  )
 )
order by col_sum
;
--q49 test----
select
 'web' as channel
 ,web.item
 ,web.return_ratio
 ,web.return_rank
 ,web.currency_rank
 from (
     select
      item
     ,return_ratio
     ,currency_ratio
     ,rank() over (order by return_ratio) as return_rank
     ,rank() over (order by currency_ratio) as currency_rank
     from
     (    select ws.ws_item_sk as item
         ,(cast(sum(coalesce(wr.wr_return_quantity,0)) as decimal(15,4))/
         cast(sum(coalesce(ws.ws_quantity,0)) as decimal(15,4) )) as return_ratio
         ,(cast(sum(coalesce(wr.wr_return_amt,0)) as decimal(15,4))/
         cast(sum(coalesce(ws.ws_net_paid,0)) as decimal(15,4) )) as currency_ratio
         from
          web_sales_tcpds ws left outer join web_returns_tcpds wr
             on (ws.ws_order_number = wr.wr_order_number and
             ws.ws_item_sk = wr.wr_item_sk)
                 ,date_dim_tcpds date_dim
         where
             wr.wr_return_amt > 10000
             and ws.ws_net_profit > 1
             and ws.ws_net_paid > 0
             and ws.ws_quantity > 0
             and ws.ws_sold_date_sk = date_dim.d_date_sk
             and d_year = 2000
             and d_moy = 12
         group by ws.ws_item_sk
     ) in_web
 ) web
 where
 (
 web.return_rank <= 10
 or
 web.currency_rank <= 10
 )
 union all
 select
 'catalog' as channel
 ,catalog.item
 ,catalog.return_ratio
 ,catalog.return_rank
 ,catalog.currency_rank
 from (
     select
      item
     ,return_ratio
     ,currency_ratio
     ,rank() over (order by return_ratio) as return_rank
     ,rank() over (order by currency_ratio) as currency_rank
     from
     (    select
         cs.cs_item_sk as item
         ,(cast(sum(coalesce(cr.cr_return_quantity,0)) as decimal(15,4))/
         cast(sum(coalesce(cs.cs_quantity,0)) as decimal(15,4) )) as return_ratio
         ,(cast(sum(coalesce(cr.cr_return_amount,0)) as decimal(15,4))/
         cast(sum(coalesce(cs.cs_net_paid,0)) as decimal(15,4) )) as currency_ratio
         from
         catalog_sales_tcpds cs left outer join catalog_returns_tcpds cr
             on (cs.cs_order_number = cr.cr_order_number and
             cs.cs_item_sk = cr.cr_item_sk)
                ,date_dim_tcpds date_dim
         where
             cr.cr_return_amount > 10000
             and cs.cs_net_profit > 1
             and cs.cs_net_paid > 0
             and cs.cs_quantity > 0
             and cs_sold_date_sk = d_date_sk
             and d_year = 2000
             and d_moy = 12
         group by cs.cs_item_sk
     ) in_cat
 ) catalog
 where
 (
 catalog.return_rank <= 10
 or
 catalog.currency_rank <=10
 )
 union all
 select
 'store' as channel
 ,store.item
 ,store.return_ratio
 ,store.return_rank
 ,store.currency_rank
 from (
     select
      item
     ,return_ratio
     ,currency_ratio
     ,rank() over (order by return_ratio) as return_rank
     ,rank() over (order by currency_ratio) as currency_rank
     from
     (    select sts.ss_item_sk as item
         ,(cast(sum(coalesce(sr.sr_return_quantity,0)) as decimal(15,4))/cast(sum(coalesce(sts.ss_quantity,0)) as decimal(15,4) )) as return_ratio
         ,(cast(sum(coalesce(sr.sr_return_amt,0)) as decimal(15,4))/cast(sum(coalesce(sts.ss_net_paid,0)) as decimal(15,4) )) as currency_ratio
         from
         store_sales_tcpds sts left outer join store_returns_tcpds sr
             on (sts.ss_ticket_number = sr.sr_ticket_number and sts.ss_item_sk = sr.sr_item_sk)
                ,date_dim_tcpds date_dim
         where
             sr.sr_return_amt > 10000
             and sts.ss_net_profit > 1
             and sts.ss_net_paid > 0
             and sts.ss_quantity > 0
             and ss_sold_date_sk = d_date_sk
             and d_year = 2000
             and d_moy = 12
         group by sts.ss_item_sk
     ) in_store
 ) store
 where  (
 store.return_rank <= 10
 or
 store.currency_rank <= 10
 )
 order by channel,return_rank,currency_rank,channel,item
 ,return_ratio
limit 100;
----------------------------------------------------------------------------------------------------
with
    web_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ws_item_sk,ws_quantity,ws_net_paid,ws_order_number,ws_sold_date_sk,ws_net_profit
        from web_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    web_returns_tmp as (
        /*ydb.pushdown('->')*/
        select wr_return_quantity,wr_return_amt,wr_order_number,wr_item_sk
        from web_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_quantity,cs_net_paid,cs_order_number,cs_item_sk,cs_sold_date_sk,cs_net_profit
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    catalog_returns_tmp as (
        /*ydb.pushdown('->')*/
        select cr_return_quantity,cr_return_amount,cr_order_number,cr_item_sk
        from catalog_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_item_sk,ss_quantity,ss_net_paid,ss_ticket_number,ss_sold_date_sk,ss_net_profit
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_returns_tmp as (
        /*ydb.pushdown('->')*/
        select sr_return_quantity,sr_return_amt,sr_ticket_number,sr_item_sk
        from store_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_year = 2000 and d_moy = 12
        /*('<-')pushdown.ydb*/
    )
select
 'web' as channel
 ,web.item
 ,web.return_ratio
 ,web.return_rank
 ,web.currency_rank
 from (
     select
      item
     ,return_ratio
     ,currency_ratio
     ,rank() over (order by return_ratio) as return_rank
     ,rank() over (order by currency_ratio) as currency_rank
     from
     (    select ws.ws_item_sk as item
         ,(cast(sum(coalesce(wr.wr_return_quantity,0)) as decimal(15,4))/
         cast(sum(coalesce(ws.ws_quantity,0)) as decimal(15,4) )) as return_ratio
         ,(cast(sum(coalesce(wr.wr_return_amt,0)) as decimal(15,4))/
         cast(sum(coalesce(ws.ws_net_paid,0)) as decimal(15,4) )) as currency_ratio
         from
          web_sales_tmp ws left outer join web_returns_tmp wr
             on (ws.ws_order_number = wr.wr_order_number and
             ws.ws_item_sk = wr.wr_item_sk)
                 ,date_dim_tmp date_dim
         where
             wr.wr_return_amt > 10000
             and ws.ws_net_profit > 1
             and ws.ws_net_paid > 0
             and ws.ws_quantity > 0
             and ws.ws_sold_date_sk = date_dim.d_date_sk
         group by ws.ws_item_sk
     ) in_web
 ) web
 where
 (
 web.return_rank <= 10
 or
 web.currency_rank <= 10
 )
 union all
 select
 'catalog' as channel
 ,catalog.item
 ,catalog.return_ratio
 ,catalog.return_rank
 ,catalog.currency_rank
 from (
     select
      item
     ,return_ratio
     ,currency_ratio
     ,rank() over (order by return_ratio) as return_rank
     ,rank() over (order by currency_ratio) as currency_rank
     from
     (    select
         cs.cs_item_sk as item
         ,(cast(sum(coalesce(cr.cr_return_quantity,0)) as decimal(15,4))/
         cast(sum(coalesce(cs.cs_quantity,0)) as decimal(15,4) )) as return_ratio
         ,(cast(sum(coalesce(cr.cr_return_amount,0)) as decimal(15,4))/
         cast(sum(coalesce(cs.cs_net_paid,0)) as decimal(15,4) )) as currency_ratio
         from
         catalog_sales_tmp cs left outer join catalog_returns_tmp cr
             on (cs.cs_order_number = cr.cr_order_number and
             cs.cs_item_sk = cr.cr_item_sk)
                ,date_dim_tmp date_dim
         where
                 cr.cr_return_amount > 10000
             and cs.cs_net_profit > 1
             and cs.cs_net_paid > 0
             and cs.cs_quantity > 0
             and cs_sold_date_sk = d_date_sk
         group by cs.cs_item_sk
     ) in_cat
 ) catalog
 where
 (
 catalog.return_rank <= 10
 or
 catalog.currency_rank <=10
 )
 union all
 select
 'store' as channel
 ,store.item
 ,store.return_ratio
 ,store.return_rank
 ,store.currency_rank
 from (
     select
      item
     ,return_ratio
     ,currency_ratio
     ,rank() over (order by return_ratio) as return_rank
     ,rank() over (order by currency_ratio) as currency_rank
     from
     (    select sts.ss_item_sk as item
         ,(cast(sum(coalesce(sr.sr_return_quantity,0)) as decimal(15,4))/cast(sum(coalesce(sts.ss_quantity,0)) as decimal(15,4) )) as return_ratio
         ,(cast(sum(coalesce(sr.sr_return_amt,0)) as decimal(15,4))/cast(sum(coalesce(sts.ss_net_paid,0)) as decimal(15,4) )) as currency_ratio
         from
         store_sales_tmp sts left outer join store_returns_tmp sr
             on (sts.ss_ticket_number = sr.sr_ticket_number and sts.ss_item_sk = sr.sr_item_sk)
                ,date_dim_tmp date_dim
         where
             sr.sr_return_amt > 10000
             and sts.ss_net_profit > 1
             and sts.ss_net_paid > 0
             and sts.ss_quantity > 0
             and ss_sold_date_sk = d_date_sk
         group by sts.ss_item_sk
     ) in_store
 ) store
 where  (
 store.return_rank <= 10
 or
 store.currency_rank <= 10
 )
 order by channel,return_rank,currency_rank,channel,item
 ,return_ratio
 limit 100;
--q50 test----
select
   s_store_name
  ,s_company_id
  ,s_street_number
  ,s_street_name
  ,s_street_type
  ,s_suite_number
  ,s_city
  ,s_county
  ,s_state
  ,s_zip
  ,sum(case when (sr_returned_date_sk - ss_sold_date_sk <= 30 ) then 1 else 0 end)  as 30days
  ,sum(case when (sr_returned_date_sk - ss_sold_date_sk > 30) and
                 (sr_returned_date_sk - ss_sold_date_sk <= 60) then 1 else 0 end )  as 3160days
  ,sum(case when (sr_returned_date_sk - ss_sold_date_sk > 60) and
                 (sr_returned_date_sk - ss_sold_date_sk <= 90) then 1 else 0 end)  as 6190days
  ,sum(case when (sr_returned_date_sk - ss_sold_date_sk > 90) and
                 (sr_returned_date_sk - ss_sold_date_sk <= 120) then 1 else 0 end)  as 91120days
  ,sum(case when (sr_returned_date_sk - ss_sold_date_sk  > 120) then 1 else 0 end)  as 120days
from
   store_sales_tcpds store_sales
  ,store_returns_tcpds store_returns
  ,store_tcpds store
  ,date_dim_tcpds d1
  ,date_dim_tcpds d2
where
    d2.d_year = 2000
and d2.d_moy  = 9
and store_sales.ss_ticket_number = store_returns.sr_ticket_number
and store_sales.ss_item_sk = store_returns.sr_item_sk
and store_sales.ss_sold_date_sk   = d1.d_date_sk
and sr_returned_date_sk   = d2.d_date_sk
and store_sales.ss_customer_sk = store_returns.sr_customer_sk
and store_sales.ss_store_sk = store.s_store_sk
group by
   s_store_name
  ,s_company_id
  ,s_street_number
  ,s_street_name
  ,s_street_type
  ,s_suite_number
  ,s_city
  ,s_county
  ,s_state
  ,s_zip
order by s_store_name
        ,s_company_id
        ,s_street_number
        ,s_street_name
        ,s_street_type
        ,s_suite_number
        ,s_city
        ,s_county
        ,s_state
        ,s_zip
  ,30days
  ,3160days
  ,6190days
  ,91120days
  ,120days
limit 100;
----------------------------------------------------------------------------------------------------
with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_sold_date_sk,ss_ticket_number,ss_item_sk,ss_customer_sk,ss_store_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_returns_tmp as (
        /*ydb.pushdown('->')*/
        select sr_returned_date_sk,sr_ticket_number,sr_item_sk,sr_customer_sk
        from store_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_store_name,s_company_id,s_street_number,s_street_name,s_street_type,s_suite_number,s_city,s_county,s_state,s_zip,s_store_sk
        from store_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp1 as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp2 as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_year = 2000 and d_moy  = 9
        /*('<-')pushdown.ydb*/
    )
select
   s_store_name
  ,s_company_id
  ,s_street_number
  ,s_street_name
  ,s_street_type
  ,s_suite_number
  ,s_city
  ,s_county
  ,s_state
  ,s_zip
  ,sum(case when (sr_returned_date_sk - ss_sold_date_sk <= 30 ) then 1 else 0 end)  as 30days
  ,sum(case when (sr_returned_date_sk - ss_sold_date_sk > 30) and
                 (sr_returned_date_sk - ss_sold_date_sk <= 60) then 1 else 0 end )  as 3160days
  ,sum(case when (sr_returned_date_sk - ss_sold_date_sk > 60) and
                 (sr_returned_date_sk - ss_sold_date_sk <= 90) then 1 else 0 end)  as 6190days
  ,sum(case when (sr_returned_date_sk - ss_sold_date_sk > 90) and
                 (sr_returned_date_sk - ss_sold_date_sk <= 120) then 1 else 0 end)  as 91120days
  ,sum(case when (sr_returned_date_sk - ss_sold_date_sk  > 120) then 1 else 0 end)  as 120days
from
   store_sales_tmp store_sales
  ,store_returns_tmp store_returns
  ,store_tmp store
  ,date_dim_tmp1 d1
  ,date_dim_tmp2 d2
where
    store_sales.ss_ticket_number = store_returns.sr_ticket_number
and store_sales.ss_item_sk = store_returns.sr_item_sk
and store_sales.ss_sold_date_sk   = d1.d_date_sk
and sr_returned_date_sk   = d2.d_date_sk
and store_sales.ss_customer_sk = store_returns.sr_customer_sk
and store_sales.ss_store_sk = store.s_store_sk
group by
   s_store_name
  ,s_company_id
  ,s_street_number
  ,s_street_name
  ,s_street_type
  ,s_suite_number
  ,s_city
  ,s_county
  ,s_state
  ,s_zip
order by s_store_name
        ,s_company_id
        ,s_street_number
        ,s_street_name
        ,s_street_type
        ,s_suite_number
        ,s_city
        ,s_county
        ,s_state
        ,s_zip
  ,30days
  ,3160days
  ,6190days
  ,91120days
  ,120days
limit 100;
--q51 test----
WITH web_v1 as (
select
  ws_item_sk item_sk, d_date, sum(ws_sales_price),
  sum(sum(ws_sales_price))
      over (partition by ws_item_sk order by d_date rows between unbounded preceding and current row) cume_sales
from web_sales_tcpds web_sales
    ,date_dim_tcpds date_dim
where ws_sold_date_sk=d_date_sk
  and d_month_seq between 1193 and 1193+11
  and ws_item_sk is not NULL
group by ws_item_sk, d_date),
store_v1 as (
select
  ss_item_sk item_sk, d_date, sum(ss_sales_price),
  sum(sum(ss_sales_price))
      over (partition by ss_item_sk order by d_date rows between unbounded preceding and current row) cume_sales
from store_sales_tcpds store_sales
    ,date_dim_tcpds date_dim
where ss_sold_date_sk=d_date_sk
  and d_month_seq between 1193 and 1193+11
  and ss_item_sk is not NULL
group by ss_item_sk, d_date)
 select  *
from (select item_sk
     ,d_date
     ,web_sales
     ,store_sales
     ,max(web_sales)
         over (partition by item_sk order by d_date rows between unbounded preceding and current row) web_cumulative
     ,max(store_sales)
         over (partition by item_sk order by d_date rows between unbounded preceding and current row) store_cumulative
     from (select case when web.item_sk is not null then web.item_sk else store.item_sk end item_sk
                 ,case when web.d_date is not null then web.d_date else store.d_date end d_date
                 ,web.cume_sales web_sales
                 ,store.cume_sales store_sales
           from web_v1 web full outer join store_v1 store on (web.item_sk = store.item_sk
                                                          and web.d_date = store.d_date)
          )x )y
where web_cumulative > store_cumulative
order by item_sk
        ,d_date
     ,web_sales
     ,store_sales
     ,web_cumulative
     ,store_cumulative
limit 100;
----------------------------------------------------------------------------------------------------
WITH
    web_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ws_item_sk,ws_sales_price,ws_sold_date_sk
        from web_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_item_sk,ss_sales_price,ss_sold_date_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date,d_date_sk
        from date_dim_tcpydb
        where d_month_seq like '([1193 TO 1204])'
        /*('<-')pushdown.ydb*/
    ),
web_v1 as (
select
  ws_item_sk item_sk, d_date, sum(ws_sales_price),
  sum(sum(ws_sales_price))
      over (partition by ws_item_sk order by d_date rows between unbounded preceding and current row) cume_sales
from web_sales_tmp web_sales
    ,date_dim_tmp date_dim
where ws_sold_date_sk=d_date_sk
  and ws_item_sk is not NULL
group by ws_item_sk, d_date),
store_v1 as (
select
  ss_item_sk item_sk, d_date, sum(ss_sales_price),
  sum(sum(ss_sales_price))
      over (partition by ss_item_sk order by d_date rows between unbounded preceding and current row) cume_sales
from store_sales_tmp store_sales
    ,date_dim_tmp date_dim
where ss_sold_date_sk=d_date_sk
  and ss_item_sk is not NULL
group by ss_item_sk, d_date)
 select  *
from (select item_sk
     ,d_date
     ,web_sales
     ,store_sales
     ,max(web_sales)
         over (partition by item_sk order by d_date rows between unbounded preceding and current row) web_cumulative
     ,max(store_sales)
         over (partition by item_sk order by d_date rows between unbounded preceding and current row) store_cumulative
     from (select case when web.item_sk is not null then web.item_sk else store.item_sk end item_sk
                 ,case when web.d_date is not null then web.d_date else store.d_date end d_date
                 ,web.cume_sales web_sales
                 ,store.cume_sales store_sales
           from web_v1 web full outer join store_v1 store on (web.item_sk = store.item_sk
                                                          and web.d_date = store.d_date)
          )x )y
where web_cumulative > store_cumulative
order by item_sk
        ,d_date
     ,web_sales
     ,store_sales
     ,web_cumulative
     ,store_cumulative
limit 100;
--q52 test----
 select  dt.d_year
     ,item.i_brand_id brand_id
     ,item.i_brand brand
     ,sum(ss_ext_sales_price) ext_price
 from date_dim_tcpds dt
     ,store_sales_tcpds store_sales
     ,item_tcpds item
 where dt.d_date_sk = store_sales.ss_sold_date_sk
    and store_sales.ss_item_sk = item.i_item_sk
    and item.i_manager_id = 1
    and dt.d_moy=12
    and dt.d_year=1998
 group by dt.d_year
     ,item.i_brand
     ,item.i_brand_id
 order by dt.d_year
     ,ext_price desc
     ,brand_id
    ,brand
limit 100 ;
----------------------------------------------------------------------------------------------------
 with
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_year,d_date_sk
        from date_dim_tcpydb
        where d_moy=12 and d_year=1998
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ext_sales_price,ss_sold_date_sk,ss_item_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_brand_id,i_brand,i_item_sk
        from item_tcpydb
        where i_manager_id = 1
        /*('<-')pushdown.ydb*/
    )
 select  dt.d_year
     ,item.i_brand_id brand_id
     ,item.i_brand brand
     ,sum(ss_ext_sales_price) ext_price
 from date_dim_tmp dt
     ,store_sales_tmp store_sales
     ,item_tmp item
 where dt.d_date_sk = store_sales.ss_sold_date_sk
    and store_sales.ss_item_sk = item.i_item_sk
 group by dt.d_year
     ,item.i_brand
     ,item.i_brand_id
 order by dt.d_year
     ,ext_price desc
     ,brand_id
    ,brand
limit 100 ;
--q54 test----
 with my_customers as (
 select  c_customer_sk
        , c_current_addr_sk
 from
        ( select cs_sold_date_sk sold_date_sk,
                 cs_bill_customer_sk customer_sk,
                 cs_item_sk item_sk
          from   catalog_sales_tcpds catalog_sales
          union all
          select ws_sold_date_sk sold_date_sk,
                 ws_bill_customer_sk customer_sk,
                 ws_item_sk item_sk
          from   web_sales_tcpds web_sales
         ) cs_or_ws_sales,
         item_tcpds item,
         date_dim_tcpds date_dim,
         customer_tcpds customer
 where   sold_date_sk = d_date_sk
         and item_sk = i_item_sk
         and i_category = 'Jewelry'
         and i_class = 'football'
         and c_customer_sk = cs_or_ws_sales.customer_sk
         and d_moy = 3
         and d_year = 2000
         group by  c_customer_sk
        , c_current_addr_sk
 )
 , my_revenue as (
 select c_customer_sk,
        sum(ss_ext_sales_price) as revenue
 from   my_customers,
        store_sales_tcpds store_sales,
        customer_address_tcpds customer_address,
        store_tcpds store,
        date_dim_tcpds date_dim
 where  c_current_addr_sk = ca_address_sk
        and ca_county = s_county
        and ca_state = s_state
        and ss_sold_date_sk = d_date_sk
        and c_customer_sk = ss_customer_sk
        and d_month_seq between (1203)
                           and  (1205)
 group by c_customer_sk
 )
 , segments as
 (select cast((revenue/50) as int) as segment
  from   my_revenue
 )
  select  segment, count(*) as num_customers, segment*50 as segment_base
 from segments
 group by segment
 order by segment, num_customers
	,segment_base
 limit 100;
----------------------------------------------------------------------------------------------------
 with
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_sold_date_sk,cs_bill_customer_sk,cs_item_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    web_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ws_sold_date_sk,ws_bill_customer_sk,ws_item_sk
        from web_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_sk,i_category,i_class
        from item_tcpydb
        where i_category = 'Jewelry' and i_class = 'football'
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp1 as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_moy = 3 and d_year = 2000
        /*('<-')pushdown.ydb*/
    ),
    customer_tmp as (
        /*ydb.pushdown('->')*/
        select c_customer_sk,c_current_addr_sk
        from customer_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ext_sales_price,ss_sold_date_sk,ss_customer_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_address_tmp as (
        /*ydb.pushdown('->')*/
        select ca_address_sk,ca_county,ca_state
        from customer_address_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_county,s_state
        from store_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp2 as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_month_seq like '([1203 TO 1205])'
        /*('<-')pushdown.ydb*/
    ),
 my_customers as (
 select  c_customer_sk
        , c_current_addr_sk
 from
        ( select cs_sold_date_sk sold_date_sk,
                 cs_bill_customer_sk customer_sk,
                 cs_item_sk item_sk
          from   catalog_sales_tmp catalog_sales
          union all
          select ws_sold_date_sk sold_date_sk,
                 ws_bill_customer_sk customer_sk,
                 ws_item_sk item_sk
          from   web_sales_tmp web_sales
         ) cs_or_ws_sales,
         item_tmp item,
         date_dim_tmp1 date_dim,
         customer_tmp customer
 where   sold_date_sk = d_date_sk
         and item_sk = i_item_sk
         and c_customer_sk = cs_or_ws_sales.customer_sk
         group by  c_customer_sk
        , c_current_addr_sk
 )
 , my_revenue as (
 select c_customer_sk,
        sum(ss_ext_sales_price) as revenue
 from   my_customers,
        store_sales_tmp store_sales,
        customer_address_tmp customer_address,
        store_tmp store,
        date_dim_tmp2 date_dim
 where  c_current_addr_sk = ca_address_sk
        and ca_county = s_county
        and ca_state = s_state
        and ss_sold_date_sk = d_date_sk
        and c_customer_sk = ss_customer_sk
 group by c_customer_sk
 )
 , segments as
 (select cast((revenue/50) as int) as segment
  from   my_revenue
 )
  select  segment, count(*) as num_customers, segment*50 as segment_base
 from segments
 group by segment
 order by segment, num_customers
 	,segment_base
limit 100;
--q55 test----
select  i_brand_id brand_id, i_brand brand,
     sum(ss_ext_sales_price) ext_price
 from
    date_dim_tcpds date_dim
    , store_sales_tcpds store_sales
    , item_tcpds item
 where date_dim.d_date_sk = store_sales.ss_sold_date_sk
     and store_sales.ss_item_sk = item.i_item_sk
     and i_manager_id=36
     and d_moy=12
     and d_year=2001
 group by i_brand, i_brand_id
 order by ext_price desc, i_brand_id
	,brand_id,brand
limit 100 ;
----------------------------------------------------------------------------------------------------
with
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_moy=12 and d_year=2001
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ext_sales_price,ss_sold_date_sk,ss_item_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_brand_id,i_brand,i_item_sk
        from item_tcpydb
        where i_manager_id=36
        /*('<-')pushdown.ydb*/
    )
select  i_brand_id brand_id, i_brand brand,
     sum(ss_ext_sales_price) ext_price
 from
    date_dim_tmp date_dim
    , store_sales_tmp store_sales
    , item_tmp item
 where date_dim.d_date_sk = store_sales.ss_sold_date_sk
     and store_sales.ss_item_sk = item.i_item_sk
 group by i_brand, i_brand_id
 order by ext_price desc, i_brand_id
	,brand_id,brand
limit 100 ;
--q58 test----
select  ss_items.item_id
       ,ss_item_rev
       ,ss_item_rev/(ss_item_rev+cs_item_rev+ws_item_rev)/3 * 100 ss_dev
       ,cs_item_rev
       ,cs_item_rev/(ss_item_rev+cs_item_rev+ws_item_rev)/3 * 100 cs_dev
       ,ws_item_rev
       ,ws_item_rev/(ss_item_rev+cs_item_rev+ws_item_rev)/3 * 100 ws_dev
       ,(ss_item_rev+cs_item_rev+ws_item_rev)/3 average
FROM
( select i_item_id item_id ,sum(ss_ext_sales_price) as ss_item_rev
 from store_sales_tcpds store_sales
     JOIN item_tcpds item ON store_sales.ss_item_sk = item.i_item_sk
     JOIN date_dim_tcpds date_dim ON store_sales.ss_sold_date_sk = date_dim.d_date_sk
     JOIN (select d1.d_date
                 from date_dim_tcpds d1 JOIN date_dim_tcpds d2 ON d1.d_week_seq = d2.d_week_seq
                 where d2.d_date = '1998-08-04') sub ON date_dim.d_date = sub.d_date
 group by i_item_id ) ss_items
JOIN
( select i_item_id item_id ,sum(cs_ext_sales_price) as cs_item_rev
 from catalog_sales_tcpds catalog_sales
     JOIN item_tcpds item ON catalog_sales.cs_item_sk = item.i_item_sk
     JOIN date_dim_tcpds date_dim ON catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
     JOIN (select d1.d_date
                 from date_dim_tcpds d1 JOIN date_dim_tcpds d2 ON d1.d_week_seq = d2.d_week_seq
                 where d2.d_date = '1998-08-04') sub ON date_dim.d_date = sub.d_date
 group by i_item_id ) cs_items
ON ss_items.item_id=cs_items.item_id
JOIN
( select i_item_id item_id ,sum(ws_ext_sales_price) as ws_item_rev
 from web_sales_tcpds web_sales
     JOIN item_tcpds item ON web_sales.ws_item_sk = item.i_item_sk
     JOIN date_dim_tcpds date_dim ON web_sales.ws_sold_date_sk = date_dim.d_date_sk
     JOIN (select d1.d_date
                 from date_dim_tcpds d1 JOIN date_dim_tcpds d2 ON d1.d_week_seq = d2.d_week_seq
                 where d2.d_date = '1998-08-04') sub ON date_dim.d_date = sub.d_date
 group by i_item_id ) ws_items
ON ss_items.item_id=ws_items.item_id
 where
       ss_item_rev between 0.9 * cs_item_rev and 1.1 * cs_item_rev
   and ss_item_rev between 0.9 * ws_item_rev and 1.1 * ws_item_rev
   and cs_item_rev between 0.9 * ss_item_rev and 1.1 * ss_item_rev
   and cs_item_rev between 0.9 * ws_item_rev and 1.1 * ws_item_rev
   and ws_item_rev between 0.9 * ss_item_rev and 1.1 * ss_item_rev
   and ws_item_rev between 0.9 * cs_item_rev and 1.1 * cs_item_rev
 order by item_id ,ss_item_rev
       ,ss_dev
       ,cs_item_rev
       ,cs_dev
       ,ws_item_rev
       ,ws_dev
       ,average
 limit 100;
----------------------------------------------------------------------------------------------------
with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ext_sales_price,ss_item_sk,ss_sold_date_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_ext_sales_price,cs_item_sk,cs_sold_date_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    web_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ws_ext_sales_price,ws_item_sk,ws_sold_date_sk
        from web_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_id,i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date,d_date_sk
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp1 as (
        /*ydb.pushdown('->')*/
        select d_date,d_week_seq
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp2 as (
        /*ydb.pushdown('->')*/
        select d_week_seq
        from date_dim_tcpydb
        where d_date = '1998-08-04'
        /*('<-')pushdown.ydb*/
    )
select  ss_items.item_id
       ,ss_item_rev
       ,ss_item_rev/(ss_item_rev+cs_item_rev+ws_item_rev)/3 * 100 ss_dev
       ,cs_item_rev
       ,cs_item_rev/(ss_item_rev+cs_item_rev+ws_item_rev)/3 * 100 cs_dev
       ,ws_item_rev
       ,ws_item_rev/(ss_item_rev+cs_item_rev+ws_item_rev)/3 * 100 ws_dev
       ,(ss_item_rev+cs_item_rev+ws_item_rev)/3 average
FROM
( select i_item_id item_id ,sum(ss_ext_sales_price) as ss_item_rev
 from store_sales_tmp store_sales
     JOIN item_tmp item ON store_sales.ss_item_sk = item.i_item_sk
     JOIN date_dim_tmp date_dim ON store_sales.ss_sold_date_sk = date_dim.d_date_sk
     JOIN (select d1.d_date
                 from date_dim_tmp1 d1 JOIN date_dim_tmp2 d2 ON d1.d_week_seq = d2.d_week_seq
                 ) sub ON date_dim.d_date = sub.d_date
 group by i_item_id ) ss_items
JOIN
( select i_item_id item_id ,sum(cs_ext_sales_price) as cs_item_rev
 from catalog_sales_tmp catalog_sales
     JOIN item_tmp item ON catalog_sales.cs_item_sk = item.i_item_sk
     JOIN date_dim_tmp date_dim ON catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
     JOIN (select d1.d_date
                 from date_dim_tmp1 d1 JOIN date_dim_tmp2 d2 ON d1.d_week_seq = d2.d_week_seq
                 ) sub ON date_dim.d_date = sub.d_date
 group by i_item_id ) cs_items
ON ss_items.item_id=cs_items.item_id
JOIN
( select i_item_id item_id ,sum(ws_ext_sales_price) as ws_item_rev
 from web_sales_tmp web_sales
     JOIN item_tmp item ON web_sales.ws_item_sk = item.i_item_sk
     JOIN date_dim_tmp date_dim ON web_sales.ws_sold_date_sk = date_dim.d_date_sk
     JOIN (select d1.d_date
                 from date_dim_tmp1 d1 JOIN date_dim_tmp2 d2 ON d1.d_week_seq = d2.d_week_seq
                 ) sub ON date_dim.d_date = sub.d_date
 group by i_item_id ) ws_items
ON ss_items.item_id=ws_items.item_id
 where
       ss_item_rev between 0.9 * cs_item_rev and 1.1 * cs_item_rev
   and ss_item_rev between 0.9 * ws_item_rev and 1.1 * ws_item_rev
   and cs_item_rev between 0.9 * ss_item_rev and 1.1 * ss_item_rev
   and cs_item_rev between 0.9 * ws_item_rev and 1.1 * ws_item_rev
   and ws_item_rev between 0.9 * ss_item_rev and 1.1 * ss_item_rev
   and ws_item_rev between 0.9 * cs_item_rev and 1.1 * cs_item_rev
 order by item_id ,ss_item_rev
       ,ss_dev
       ,cs_item_rev
       ,cs_dev
       ,ws_item_rev
       ,ws_dev
       ,average
 limit 100;
--q63 test----
select  *
from (select i_manager_id
             ,sum(ss_sales_price) sum_sales
             ,avg(sum(ss_sales_price)) over (partition by i_manager_id) avg_monthly_sales
      from item_tcpds item
          ,store_sales_tcpds store_sales
          ,date_dim_tcpds date_dim
          ,store_tcpds store
      where ss_item_sk = i_item_sk
        and ss_sold_date_sk = d_date_sk
        and ss_store_sk = s_store_sk
        and d_month_seq in (1212,1212+1,1212+2,1212+3,1212+4,1212+5,1212+6,1212+7,1212+8,1212+9,1212+10,1212+11)
        and ((    i_category in ('Books','Children','Electronics')
              and i_class in ('personal','portable','refernece','self-help')
              and i_brand in ('scholaramalgamalg #14','scholaramalgamalg #7',
                          'exportiunivamalg #9','scholaramalgamalg #9'))
           or(    i_category in ('Women','Music','Men')
              and i_class in ('accessories','classical','fragrances','pants')
              and i_brand in ('amalgimporto #1','edu packscholar #1','exportiimporto #1',
                         'importoamalg #1')))
group by i_manager_id, d_moy) tmp1
where case when avg_monthly_sales > 0 then abs (sum_sales - avg_monthly_sales) / avg_monthly_sales else null end > 0.1
order by i_manager_id
        ,avg_monthly_sales
        ,sum_sales
limit 100;
----------------------------------------------------------------------------------------------------
with
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_manager_id,i_item_sk,i_category,i_class,i_brand
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_sales_price,ss_item_sk,ss_sold_date_sk,ss_store_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk,d_moy
        from date_dim_tcpydb
        where d_month_seq in (1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223)
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_store_sk
        from store_tcpydb
        /*('<-')pushdown.ydb*/
    )
select  *
from (select i_manager_id
             ,sum(ss_sales_price) sum_sales
             ,avg(sum(ss_sales_price)) over (partition by i_manager_id) avg_monthly_sales
      from item_tmp item
          ,store_sales_tmp store_sales
          ,date_dim_tmp date_dim
          ,store_tmp store
      where ss_item_sk = i_item_sk
        and ss_sold_date_sk = d_date_sk
        and ss_store_sk = s_store_sk
        and ((    i_category in ('Books','Children','Electronics')
              and i_class in ('personal','portable','refernece','self-help')
              and i_brand in ('scholaramalgamalg #14','scholaramalgamalg #7',
                          'exportiunivamalg #9','scholaramalgamalg #9'))
           or(    i_category in ('Women','Music','Men')
              and i_class in ('accessories','classical','fragrances','pants')
              and i_brand in ('amalgimporto #1','edu packscholar #1','exportiimporto #1',
                         'importoamalg #1')))
group by i_manager_id, d_moy) tmp1
where case when avg_monthly_sales > 0 then abs (sum_sales - avg_monthly_sales) / avg_monthly_sales else null end > 0.1
order by i_manager_id
        ,avg_monthly_sales
        ,sum_sales
limit 100;
--q64 test----
select cs1.product_name ,cs1.store_name ,cs1.store_zip ,cs1.b_street_number ,cs1.b_streen_name ,cs1.b_city
     ,cs1.b_zip ,cs1.c_street_number ,cs1.c_street_name ,cs1.c_city ,cs1.c_zip ,cs1.syear ,cs1.cnt
     ,cs1.s1 ,cs1.s2 ,cs1.s3
     ,cs2.s1 ,cs2.s2 ,cs2.s3 ,cs2.syear ,cs2.cnt
from
(select i_product_name as product_name ,i_item_sk as item_sk ,s_store_name as store_name
     ,s_zip as store_zip ,ad1.ca_street_number as b_street_number ,ad1.ca_street_name as b_streen_name
     ,ad1.ca_city as b_city ,ad1.ca_zip as b_zip ,ad2.ca_street_number as c_street_number
     ,ad2.ca_street_name as c_street_name ,ad2.ca_city as c_city ,ad2.ca_zip as c_zip
     ,d1.d_year as syear ,d2.d_year as fsyear ,d3.d_year as s2year ,count(*) as cnt
     ,sum(ss_wholesale_cost) as s1 ,sum(ss_list_price) as s2 ,sum(ss_coupon_amt) as s3
  FROM   store_sales_tcpds store_sales
        JOIN store_returns_tcpds store_returns ON store_sales.ss_item_sk = store_returns.sr_item_sk and store_sales.ss_ticket_number = store_returns.sr_ticket_number
        JOIN customer_tcpds customer ON store_sales.ss_customer_sk = customer.c_customer_sk
        JOIN date_dim_tcpds d1 ON store_sales.ss_sold_date_sk = d1.d_date_sk
        JOIN date_dim_tcpds d2 ON customer.c_first_sales_date_sk = d2.d_date_sk
        JOIN date_dim_tcpds d3 ON customer.c_first_shipto_date_sk = d3.d_date_sk
        JOIN store_tcpds store ON store_sales.ss_store_sk = store.s_store_sk
        JOIN customer_demographics_tcpds cd1 ON store_sales.ss_cdemo_sk= cd1.cd_demo_sk
        JOIN customer_demographics_tcpds cd2 ON customer.c_current_cdemo_sk = cd2.cd_demo_sk
        JOIN promotion_tcpds promotion ON store_sales.ss_promo_sk = promotion.p_promo_sk
        JOIN household_demographics_tcpds hd1 ON store_sales.ss_hdemo_sk = hd1.hd_demo_sk
        JOIN household_demographics_tcpds hd2 ON customer.c_current_hdemo_sk = hd2.hd_demo_sk
        JOIN customer_address_tcpds ad1 ON store_sales.ss_addr_sk = ad1.ca_address_sk
        JOIN customer_address_tcpds ad2 ON customer.c_current_addr_sk = ad2.ca_address_sk
        JOIN income_band_tcpds ib1 ON hd1.hd_income_band_sk = ib1.ib_income_band_sk
        JOIN income_band_tcpds ib2 ON hd2.hd_income_band_sk = ib2.ib_income_band_sk
        JOIN item_tcpds item ON store_sales.ss_item_sk = item.i_item_sk
        JOIN
 (select cs_item_sk
        ,sum(cs_ext_list_price) as sale,sum(cr_refunded_cash+cr_reversed_charge+cr_store_credit) as refund
  from catalog_sales_tcpds catalog_sales JOIN catalog_returns_tcpds catalog_returns
  ON catalog_sales.cs_item_sk = catalog_returns.cr_item_sk
    and catalog_sales.cs_order_number = catalog_returns.cr_order_number
  group by cs_item_sk
  having sum(cs_ext_list_price)>2*sum(cr_refunded_cash+cr_reversed_charge+cr_store_credit)) cs_ui
ON store_sales.ss_item_sk = cs_ui.cs_item_sk
  WHERE
         cd1.cd_marital_status <> cd2.cd_marital_status and
         i_color in ('maroon','burnished','dim','steel','navajo','chocolate') and
         i_current_price between 35 and 35 + 10 and
         i_current_price between 35 + 1 and 35 + 15
group by i_product_name ,i_item_sk ,s_store_name ,s_zip ,ad1.ca_street_number
       ,ad1.ca_street_name ,ad1.ca_city ,ad1.ca_zip ,ad2.ca_street_number
       ,ad2.ca_street_name ,ad2.ca_city ,ad2.ca_zip ,d1.d_year ,d2.d_year ,d3.d_year
) cs1
JOIN
(select i_product_name as product_name ,i_item_sk as item_sk ,s_store_name as store_name
     ,s_zip as store_zip ,ad1.ca_street_number as b_street_number ,ad1.ca_street_name as b_streen_name
     ,ad1.ca_city as b_city ,ad1.ca_zip as b_zip ,ad2.ca_street_number as c_street_number
     ,ad2.ca_street_name as c_street_name ,ad2.ca_city as c_city ,ad2.ca_zip as c_zip
     ,d1.d_year as syear ,d2.d_year as fsyear ,d3.d_year as s2year ,count(*) as cnt
     ,sum(ss_wholesale_cost) as s1 ,sum(ss_list_price) as s2 ,sum(ss_coupon_amt) as s3
  FROM   store_sales_tcpds store_sales
        JOIN store_returns_tcpds store_returns ON store_sales.ss_item_sk = store_returns.sr_item_sk and store_sales.ss_ticket_number = store_returns.sr_ticket_number
        JOIN customer_tcpds customer ON store_sales.ss_customer_sk = customer.c_customer_sk
        JOIN date_dim_tcpds d1 ON store_sales.ss_sold_date_sk = d1.d_date_sk
        JOIN date_dim_tcpds d2 ON customer.c_first_sales_date_sk = d2.d_date_sk
        JOIN date_dim_tcpds d3 ON customer.c_first_shipto_date_sk = d3.d_date_sk
        JOIN store_tcpds store ON store_sales.ss_store_sk = store.s_store_sk
        JOIN customer_demographics_tcpds cd1 ON store_sales.ss_cdemo_sk= cd1.cd_demo_sk
        JOIN customer_demographics_tcpds cd2 ON customer.c_current_cdemo_sk = cd2.cd_demo_sk
        JOIN promotion_tcpds promotion ON store_sales.ss_promo_sk = promotion.p_promo_sk
        JOIN household_demographics_tcpds hd1 ON store_sales.ss_hdemo_sk = hd1.hd_demo_sk
        JOIN household_demographics_tcpds hd2 ON customer.c_current_hdemo_sk = hd2.hd_demo_sk
        JOIN customer_address_tcpds ad1 ON store_sales.ss_addr_sk = ad1.ca_address_sk
        JOIN customer_address_tcpds ad2 ON customer.c_current_addr_sk = ad2.ca_address_sk
        JOIN income_band_tcpds ib1 ON hd1.hd_income_band_sk = ib1.ib_income_band_sk
        JOIN income_band_tcpds ib2 ON hd2.hd_income_band_sk = ib2.ib_income_band_sk
        JOIN item_tcpds item ON store_sales.ss_item_sk = item.i_item_sk
        JOIN
 (select cs_item_sk
        ,sum(cs_ext_list_price) as sale,sum(cr_refunded_cash+cr_reversed_charge+cr_store_credit) as refund
  from catalog_sales_tcpds catalog_sales JOIN catalog_returns_tcpds catalog_returns
  ON catalog_sales.cs_item_sk = catalog_returns.cr_item_sk
    and catalog_sales.cs_order_number = catalog_returns.cr_order_number
  group by cs_item_sk
  having sum(cs_ext_list_price)>2*sum(cr_refunded_cash+cr_reversed_charge+cr_store_credit)) cs_ui
ON store_sales.ss_item_sk = cs_ui.cs_item_sk
  WHERE
         cd1.cd_marital_status <> cd2.cd_marital_status and
         i_color in ('maroon','burnished','dim','steel','navajo','chocolate') and
         i_current_price between 35 and 35 + 10 and
         i_current_price between 35 + 1 and 35 + 15
group by i_product_name ,i_item_sk ,s_store_name ,s_zip ,ad1.ca_street_number
       ,ad1.ca_street_name ,ad1.ca_city ,ad1.ca_zip ,ad2.ca_street_number
       ,ad2.ca_street_name ,ad2.ca_city ,ad2.ca_zip ,d1.d_year ,d2.d_year ,d3.d_year
) cs2
ON cs1.item_sk=cs2.item_sk
where
     cs1.syear = 2000 and
     cs2.syear = 2000 + 1 and
     cs2.cnt <= cs1.cnt and
     cs1.store_name = cs2.store_name and
     cs1.store_zip = cs2.store_zip
order by cs1.product_name ,cs1.store_name ,cs2.cnt ,cs1.b_street_number
     ,cs1.store_zip ,cs1.b_streen_name ,cs1.b_city
     ,cs1.b_zip ,cs1.c_street_number ,cs1.c_street_name ,cs1.c_city ,cs1.c_zip ,cs1.syear ,cs1.cnt
     ,cs1.s1 ,cs1.s2 ,cs1.s3
     ,cs2.s1 ,cs2.s2 ,cs2.s3 ,cs2.syear ,cs2.cnt
;
----------------------------------------------------------------------------------------------------
with
    catalog_returns_tmp as (
        /*ydb.pushdown('->')*/
        select cr_refunded_cash,cr_reversed_charge,cr_store_credit,cr_item_sk,cr_order_number
        from catalog_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_item_sk,cs_ext_list_price,cs_order_number
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_address_tmp as (
        /*ydb.pushdown('->')*/
        select ca_street_number,ca_street_name,ca_city,ca_zip,ca_address_sk
        from customer_address_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_demographics_tmp as (
        /*ydb.pushdown('->')*/
        select cd_demo_sk,cd_marital_status
        from customer_demographics_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_tmp as (
        /*ydb.pushdown('->')*/
        select c_customer_sk,c_first_sales_date_sk,c_first_shipto_date_sk,c_current_cdemo_sk,c_current_hdemo_sk,c_current_addr_sk
        from customer_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_year,d_date_sk
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    household_demographics_tmp as (
        /*ydb.pushdown('->')*/
        select hd_demo_sk,hd_income_band_sk
        from household_demographics_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    income_band_tmp as (
        /*ydb.pushdown('->')*/
        select ib_income_band_sk
        from income_band_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_product_name,i_item_sk,i_color,i_current_price,i_current_price
        from item_tcpydb
        where i_color in ('maroon','burnished','dim','steel','navajo','chocolate')
            and i_current_price like '([35 TO 45])'
            and i_current_price like '([36 TO 50])'
        /*('<-')pushdown.ydb*/
    ),
    promotion_tmp as (
        /*ydb.pushdown('->')*/
        select p_promo_sk
        from promotion_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_returns_tmp as (
        /*ydb.pushdown('->')*/
        select sr_item_sk,sr_ticket_number
        from store_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_wholesale_cost,ss_list_price,ss_coupon_amt,ss_item_sk,ss_ticket_number,ss_customer_sk,ss_sold_date_sk,ss_store_sk,ss_cdemo_sk,ss_promo_sk,ss_hdemo_sk,ss_addr_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_zip,s_store_name,s_store_sk
        from store_tcpydb
        /*('<-')pushdown.ydb*/
    )
select cs1.product_name ,cs1.store_name ,cs1.store_zip ,cs1.b_street_number ,cs1.b_streen_name ,cs1.b_city
     ,cs1.b_zip ,cs1.c_street_number ,cs1.c_street_name ,cs1.c_city ,cs1.c_zip ,cs1.syear ,cs1.cnt
     ,cs1.s1 ,cs1.s2 ,cs1.s3
     ,cs2.s1 ,cs2.s2 ,cs2.s3 ,cs2.syear ,cs2.cnt
from
(select i_product_name as product_name ,i_item_sk as item_sk ,s_store_name as store_name
     ,s_zip as store_zip ,ad1.ca_street_number as b_street_number ,ad1.ca_street_name as b_streen_name
     ,ad1.ca_city as b_city ,ad1.ca_zip as b_zip ,ad2.ca_street_number as c_street_number
     ,ad2.ca_street_name as c_street_name ,ad2.ca_city as c_city ,ad2.ca_zip as c_zip
     ,d1.d_year as syear ,d2.d_year as fsyear ,d3.d_year as s2year ,count(*) as cnt
     ,sum(ss_wholesale_cost) as s1 ,sum(ss_list_price) as s2 ,sum(ss_coupon_amt) as s3
  FROM   store_sales_tmp store_sales
        JOIN store_returns_tmp store_returns ON store_sales.ss_item_sk = store_returns.sr_item_sk and store_sales.ss_ticket_number = store_returns.sr_ticket_number
        JOIN customer_tmp customer ON store_sales.ss_customer_sk = customer.c_customer_sk
        JOIN date_dim_tmp d1 ON store_sales.ss_sold_date_sk = d1.d_date_sk
        JOIN date_dim_tmp d2 ON customer.c_first_sales_date_sk = d2.d_date_sk
        JOIN date_dim_tmp d3 ON customer.c_first_shipto_date_sk = d3.d_date_sk
        JOIN store_tmp store ON store_sales.ss_store_sk = store.s_store_sk
        JOIN customer_demographics_tmp cd1 ON store_sales.ss_cdemo_sk= cd1.cd_demo_sk
        JOIN customer_demographics_tmp cd2 ON customer.c_current_cdemo_sk = cd2.cd_demo_sk
        JOIN promotion_tmp promotion ON store_sales.ss_promo_sk = promotion.p_promo_sk
        JOIN household_demographics_tmp hd1 ON store_sales.ss_hdemo_sk = hd1.hd_demo_sk
        JOIN household_demographics_tmp hd2 ON customer.c_current_hdemo_sk = hd2.hd_demo_sk
        JOIN customer_address_tmp ad1 ON store_sales.ss_addr_sk = ad1.ca_address_sk
        JOIN customer_address_tmp ad2 ON customer.c_current_addr_sk = ad2.ca_address_sk
        JOIN income_band_tmp ib1 ON hd1.hd_income_band_sk = ib1.ib_income_band_sk
        JOIN income_band_tmp ib2 ON hd2.hd_income_band_sk = ib2.ib_income_band_sk
        JOIN item_tmp item ON store_sales.ss_item_sk = item.i_item_sk
        JOIN
 (select cs_item_sk
        ,sum(cs_ext_list_price) as sale,sum(cr_refunded_cash+cr_reversed_charge+cr_store_credit) as refund
  from catalog_sales_tmp catalog_sales JOIN catalog_returns_tmp catalog_returns
  ON catalog_sales.cs_item_sk = catalog_returns.cr_item_sk
    and catalog_sales.cs_order_number = catalog_returns.cr_order_number
  group by cs_item_sk
  having sum(cs_ext_list_price)>2*sum(cr_refunded_cash+cr_reversed_charge+cr_store_credit)) cs_ui
ON store_sales.ss_item_sk = cs_ui.cs_item_sk
  WHERE
         cd1.cd_marital_status <> cd2.cd_marital_status
group by i_product_name ,i_item_sk ,s_store_name ,s_zip ,ad1.ca_street_number
       ,ad1.ca_street_name ,ad1.ca_city ,ad1.ca_zip ,ad2.ca_street_number
       ,ad2.ca_street_name ,ad2.ca_city ,ad2.ca_zip ,d1.d_year ,d2.d_year ,d3.d_year
) cs1
JOIN
(select i_product_name as product_name ,i_item_sk as item_sk ,s_store_name as store_name
     ,s_zip as store_zip ,ad1.ca_street_number as b_street_number ,ad1.ca_street_name as b_streen_name
     ,ad1.ca_city as b_city ,ad1.ca_zip as b_zip ,ad2.ca_street_number as c_street_number
     ,ad2.ca_street_name as c_street_name ,ad2.ca_city as c_city ,ad2.ca_zip as c_zip
     ,d1.d_year as syear ,d2.d_year as fsyear ,d3.d_year as s2year ,count(*) as cnt
     ,sum(ss_wholesale_cost) as s1 ,sum(ss_list_price) as s2 ,sum(ss_coupon_amt) as s3
  FROM   store_sales_tmp store_sales
        JOIN store_returns_tmp store_returns ON store_sales.ss_item_sk = store_returns.sr_item_sk and store_sales.ss_ticket_number = store_returns.sr_ticket_number
        JOIN customer_tmp customer ON store_sales.ss_customer_sk = customer.c_customer_sk
        JOIN date_dim_tmp d1 ON store_sales.ss_sold_date_sk = d1.d_date_sk
        JOIN date_dim_tmp d2 ON customer.c_first_sales_date_sk = d2.d_date_sk
        JOIN date_dim_tmp d3 ON customer.c_first_shipto_date_sk = d3.d_date_sk
        JOIN store_tmp store ON store_sales.ss_store_sk = store.s_store_sk
        JOIN customer_demographics_tmp cd1 ON store_sales.ss_cdemo_sk= cd1.cd_demo_sk
        JOIN customer_demographics_tmp cd2 ON customer.c_current_cdemo_sk = cd2.cd_demo_sk
        JOIN promotion_tmp promotion ON store_sales.ss_promo_sk = promotion.p_promo_sk
        JOIN household_demographics_tmp hd1 ON store_sales.ss_hdemo_sk = hd1.hd_demo_sk
        JOIN household_demographics_tmp hd2 ON customer.c_current_hdemo_sk = hd2.hd_demo_sk
        JOIN customer_address_tmp ad1 ON store_sales.ss_addr_sk = ad1.ca_address_sk
        JOIN customer_address_tmp ad2 ON customer.c_current_addr_sk = ad2.ca_address_sk
        JOIN income_band_tmp ib1 ON hd1.hd_income_band_sk = ib1.ib_income_band_sk
        JOIN income_band_tmp ib2 ON hd2.hd_income_band_sk = ib2.ib_income_band_sk
        JOIN item_tmp item ON store_sales.ss_item_sk = item.i_item_sk
        JOIN
 (select cs_item_sk
        ,sum(cs_ext_list_price) as sale,sum(cr_refunded_cash+cr_reversed_charge+cr_store_credit) as refund
  from catalog_sales_tmp catalog_sales JOIN catalog_returns_tmp catalog_returns
  ON catalog_sales.cs_item_sk = catalog_returns.cr_item_sk
    and catalog_sales.cs_order_number = catalog_returns.cr_order_number
  group by cs_item_sk
  having sum(cs_ext_list_price)>2*sum(cr_refunded_cash+cr_reversed_charge+cr_store_credit)) cs_ui
ON store_sales.ss_item_sk = cs_ui.cs_item_sk
  WHERE
         cd1.cd_marital_status <> cd2.cd_marital_status
group by i_product_name ,i_item_sk ,s_store_name ,s_zip ,ad1.ca_street_number
       ,ad1.ca_street_name ,ad1.ca_city ,ad1.ca_zip ,ad2.ca_street_number
       ,ad2.ca_street_name ,ad2.ca_city ,ad2.ca_zip ,d1.d_year ,d2.d_year ,d3.d_year
) cs2
ON cs1.item_sk=cs2.item_sk
where
     cs1.syear = 2000 and
     cs2.syear = 2000 + 1 and
     cs2.cnt <= cs1.cnt and
     cs1.store_name = cs2.store_name and
     cs1.store_zip = cs2.store_zip
order by cs1.product_name ,cs1.store_name ,cs2.cnt ,cs1.b_street_number
     ,cs1.store_zip ,cs1.b_streen_name ,cs1.b_city
     ,cs1.b_zip ,cs1.c_street_number ,cs1.c_street_name ,cs1.c_city ,cs1.c_zip ,cs1.syear ,cs1.cnt
     ,cs1.s1 ,cs1.s2 ,cs1.s3
     ,cs2.s1 ,cs2.s2 ,cs2.s3 ,cs2.syear ,cs2.cnt
;
--q66 test----
select
      w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
     ,ship_carriers
     ,year
     ,sum(jan_sales) as jan_sales
     ,sum(feb_sales) as feb_sales
     ,sum(mar_sales) as mar_sales
     ,sum(apr_sales) as apr_sales
     ,sum(may_sales) as may_sales
     ,sum(jun_sales) as jun_sales
     ,sum(jul_sales) as jul_sales
     ,sum(aug_sales) as aug_sales
     ,sum(sep_sales) as sep_sales
     ,sum(oct_sales) as oct_sales
     ,sum(nov_sales) as nov_sales
     ,sum(dec_sales) as dec_sales
     ,sum(jan_sales/w_warehouse_sq_ft) as jan_sales_per_sq_foot
     ,sum(feb_sales/w_warehouse_sq_ft) as feb_sales_per_sq_foot
     ,sum(mar_sales/w_warehouse_sq_ft) as mar_sales_per_sq_foot
     ,sum(apr_sales/w_warehouse_sq_ft) as apr_sales_per_sq_foot
     ,sum(may_sales/w_warehouse_sq_ft) as may_sales_per_sq_foot
     ,sum(jun_sales/w_warehouse_sq_ft) as jun_sales_per_sq_foot
     ,sum(jul_sales/w_warehouse_sq_ft) as jul_sales_per_sq_foot
     ,sum(aug_sales/w_warehouse_sq_ft) as aug_sales_per_sq_foot
     ,sum(sep_sales/w_warehouse_sq_ft) as sep_sales_per_sq_foot
     ,sum(oct_sales/w_warehouse_sq_ft) as oct_sales_per_sq_foot
     ,sum(nov_sales/w_warehouse_sq_ft) as nov_sales_per_sq_foot
     ,sum(dec_sales/w_warehouse_sq_ft) as dec_sales_per_sq_foot
     ,sum(jan_net) as jan_net
     ,sum(feb_net) as feb_net
     ,sum(mar_net) as mar_net
     ,sum(apr_net) as apr_net
     ,sum(may_net) as may_net
     ,sum(jun_net) as jun_net
     ,sum(jul_net) as jul_net
     ,sum(aug_net) as aug_net
     ,sum(sep_net) as sep_net
     ,sum(oct_net) as oct_net
     ,sum(nov_net) as nov_net
     ,sum(dec_net) as dec_net
 from (
    select
      w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
     ,concat('DIAMOND', ',', 'AIRBORNE') as ship_carriers
     ,d_year as year
     ,sum(case when d_moy = 1
         then ws_sales_price* ws_quantity else 0 end) as jan_sales
     ,sum(case when d_moy = 2
         then ws_sales_price* ws_quantity else 0 end) as feb_sales
     ,sum(case when d_moy = 3
         then ws_sales_price* ws_quantity else 0 end) as mar_sales
     ,sum(case when d_moy = 4
         then ws_sales_price* ws_quantity else 0 end) as apr_sales
     ,sum(case when d_moy = 5
         then ws_sales_price* ws_quantity else 0 end) as may_sales
     ,sum(case when d_moy = 6
         then ws_sales_price* ws_quantity else 0 end) as jun_sales
     ,sum(case when d_moy = 7
         then ws_sales_price* ws_quantity else 0 end) as jul_sales
     ,sum(case when d_moy = 8
         then ws_sales_price* ws_quantity else 0 end) as aug_sales
     ,sum(case when d_moy = 9
         then ws_sales_price* ws_quantity else 0 end) as sep_sales
     ,sum(case when d_moy = 10
         then ws_sales_price* ws_quantity else 0 end) as oct_sales
     ,sum(case when d_moy = 11
         then ws_sales_price* ws_quantity else 0 end) as nov_sales
     ,sum(case when d_moy = 12
         then ws_sales_price* ws_quantity else 0 end) as dec_sales
     ,sum(case when d_moy = 1
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as jan_net
     ,sum(case when d_moy = 2
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as feb_net
     ,sum(case when d_moy = 3
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as mar_net
     ,sum(case when d_moy = 4
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as apr_net
     ,sum(case when d_moy = 5
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as may_net
     ,sum(case when d_moy = 6
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as jun_net
     ,sum(case when d_moy = 7
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as jul_net
     ,sum(case when d_moy = 8
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as aug_net
     ,sum(case when d_moy = 9
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as sep_net
     ,sum(case when d_moy = 10
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as oct_net
     ,sum(case when d_moy = 11
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as nov_net
     ,sum(case when d_moy = 12
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as dec_net
     from
          web_sales_tcpds web_sales
         ,warehouse_tcpds warehouse
         ,date_dim_tcpds date_dim
         ,time_dim_tcpds time_dim
         ,ship_mode_tcpds ship_mode
     where
            web_sales.ws_warehouse_sk =  warehouse.w_warehouse_sk
        and web_sales.ws_sold_date_sk = date_dim.d_date_sk
        and web_sales.ws_sold_time_sk = time_dim.t_time_sk
     and web_sales.ws_ship_mode_sk = ship_mode.sm_ship_mode_sk
        and d_year = 2002
     and t_time between 49530 and 49530+28800
     and sm_carrier in ('DIAMOND','AIRBORNE')
     group by
      w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
       ,d_year
 union all
    select
      w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
     ,concat('DIAMOND', ',', 'AIRBORNE') as ship_carriers
     ,d_year as year
     ,sum(case when d_moy = 1
         then cs_ext_sales_price* cs_quantity else 0 end) as jan_sales
     ,sum(case when d_moy = 2
         then cs_ext_sales_price* cs_quantity else 0 end) as feb_sales
     ,sum(case when d_moy = 3
         then cs_ext_sales_price* cs_quantity else 0 end) as mar_sales
     ,sum(case when d_moy = 4
         then cs_ext_sales_price* cs_quantity else 0 end) as apr_sales
     ,sum(case when d_moy = 5
         then cs_ext_sales_price* cs_quantity else 0 end) as may_sales
     ,sum(case when d_moy = 6
         then cs_ext_sales_price* cs_quantity else 0 end) as jun_sales
     ,sum(case when d_moy = 7
         then cs_ext_sales_price* cs_quantity else 0 end) as jul_sales
     ,sum(case when d_moy = 8
         then cs_ext_sales_price* cs_quantity else 0 end) as aug_sales
     ,sum(case when d_moy = 9
         then cs_ext_sales_price* cs_quantity else 0 end) as sep_sales
     ,sum(case when d_moy = 10
         then cs_ext_sales_price* cs_quantity else 0 end) as oct_sales
     ,sum(case when d_moy = 11
         then cs_ext_sales_price* cs_quantity else 0 end) as nov_sales
     ,sum(case when d_moy = 12
         then cs_ext_sales_price* cs_quantity else 0 end) as dec_sales
     ,sum(case when d_moy = 1
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as jan_net
     ,sum(case when d_moy = 2
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as feb_net
     ,sum(case when d_moy = 3
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as mar_net
     ,sum(case when d_moy = 4
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as apr_net
     ,sum(case when d_moy = 5
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as may_net
     ,sum(case when d_moy = 6
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as jun_net
     ,sum(case when d_moy = 7
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as jul_net
     ,sum(case when d_moy = 8
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as aug_net
     ,sum(case when d_moy = 9
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as sep_net
     ,sum(case when d_moy = 10
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as oct_net
     ,sum(case when d_moy = 11
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as nov_net
     ,sum(case when d_moy = 12
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as dec_net
     from
          catalog_sales_tcpds catalog_sales
         ,warehouse_tcpds warehouse
         ,date_dim_tcpds date_dim
         ,time_dim_tcpds time_dim
         ,ship_mode_tcpds ship_mode
     where
            catalog_sales.cs_warehouse_sk =  warehouse.w_warehouse_sk
        and catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
        and catalog_sales.cs_sold_time_sk = time_dim.t_time_sk
        and catalog_sales.cs_ship_mode_sk = ship_mode.sm_ship_mode_sk
        and d_year = 2002
        and t_time between 49530 AND 49530+28800
        and sm_carrier in ('DIAMOND','AIRBORNE')
     group by
      w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
       ,d_year
 ) x
 group by
      w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
     ,ship_carriers
     ,year
 order by w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
     ,ship_carriers
     ,year
     ,jan_sales
     ,feb_sales
     ,mar_sales
     ,apr_sales
     ,may_sales
     ,jun_sales
     ,jul_sales
     ,aug_sales
     ,sep_sales
     ,oct_sales
     ,nov_sales
     ,dec_sales
     ,jan_sales_per_sq_foot
     ,feb_sales_per_sq_foot
     ,mar_sales_per_sq_foot
     ,apr_sales_per_sq_foot
     ,may_sales_per_sq_foot
     ,jun_sales_per_sq_foot
     ,jul_sales_per_sq_foot
     ,aug_sales_per_sq_foot
     ,sep_sales_per_sq_foot
     ,oct_sales_per_sq_foot
     ,nov_sales_per_sq_foot
     ,dec_sales_per_sq_foot
     ,jan_net
     ,feb_net
     ,mar_net
     ,apr_net
     ,may_net
     ,jun_net
     ,jul_net
     ,aug_net
     ,sep_net
     ,oct_net
     ,nov_net
     ,dec_net
 limit 100;
----------------------------------------------------------------------------------------------------
 with
    web_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ws_sales_price,ws_quantity,ws_net_paid_inc_tax,ws_warehouse_sk,ws_sold_date_sk,ws_sold_time_sk,ws_ship_mode_sk
        from web_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_ext_sales_price,cs_quantity,cs_net_paid_inc_ship_tax,cs_warehouse_sk,cs_sold_date_sk,cs_sold_time_sk,cs_ship_mode_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    warehouse_tmp as (
        /*ydb.pushdown('->')*/
        select w_warehouse_name,w_warehouse_sq_ft,w_city,w_county,w_state,w_country,w_warehouse_sk
        from warehouse_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_year,d_moy,d_date_sk
        from date_dim_tcpydb
        where d_year = 2002
        /*('<-')pushdown.ydb*/
    ),
    time_dim_tmp as (
        /*ydb.pushdown('->')*/
        select t_time_sk
        from time_dim_tcpydb
        where t_time like '([49530 TO 78330])'
        /*('<-')pushdown.ydb*/
    ),
    ship_mode_tmp as (
        /*ydb.pushdown('->')*/
        select sm_ship_mode_sk
        from ship_mode_tcpydb
        where sm_carrier in ('DIAMOND','AIRBORNE')
        /*('<-')pushdown.ydb*/
    )
select
      w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
     ,ship_carriers
     ,year
     ,sum(jan_sales) as jan_sales
     ,sum(feb_sales) as feb_sales
     ,sum(mar_sales) as mar_sales
     ,sum(apr_sales) as apr_sales
     ,sum(may_sales) as may_sales
     ,sum(jun_sales) as jun_sales
     ,sum(jul_sales) as jul_sales
     ,sum(aug_sales) as aug_sales
     ,sum(sep_sales) as sep_sales
     ,sum(oct_sales) as oct_sales
     ,sum(nov_sales) as nov_sales
     ,sum(dec_sales) as dec_sales
     ,sum(jan_sales/w_warehouse_sq_ft) as jan_sales_per_sq_foot
     ,sum(feb_sales/w_warehouse_sq_ft) as feb_sales_per_sq_foot
     ,sum(mar_sales/w_warehouse_sq_ft) as mar_sales_per_sq_foot
     ,sum(apr_sales/w_warehouse_sq_ft) as apr_sales_per_sq_foot
     ,sum(may_sales/w_warehouse_sq_ft) as may_sales_per_sq_foot
     ,sum(jun_sales/w_warehouse_sq_ft) as jun_sales_per_sq_foot
     ,sum(jul_sales/w_warehouse_sq_ft) as jul_sales_per_sq_foot
     ,sum(aug_sales/w_warehouse_sq_ft) as aug_sales_per_sq_foot
     ,sum(sep_sales/w_warehouse_sq_ft) as sep_sales_per_sq_foot
     ,sum(oct_sales/w_warehouse_sq_ft) as oct_sales_per_sq_foot
     ,sum(nov_sales/w_warehouse_sq_ft) as nov_sales_per_sq_foot
     ,sum(dec_sales/w_warehouse_sq_ft) as dec_sales_per_sq_foot
     ,sum(jan_net) as jan_net
     ,sum(feb_net) as feb_net
     ,sum(mar_net) as mar_net
     ,sum(apr_net) as apr_net
     ,sum(may_net) as may_net
     ,sum(jun_net) as jun_net
     ,sum(jul_net) as jul_net
     ,sum(aug_net) as aug_net
     ,sum(sep_net) as sep_net
     ,sum(oct_net) as oct_net
     ,sum(nov_net) as nov_net
     ,sum(dec_net) as dec_net
 from (
    select
      w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
     ,concat('DIAMOND', ',', 'AIRBORNE') as ship_carriers
     ,d_year as year
     ,sum(case when d_moy = 1
         then ws_sales_price* ws_quantity else 0 end) as jan_sales
     ,sum(case when d_moy = 2
         then ws_sales_price* ws_quantity else 0 end) as feb_sales
     ,sum(case when d_moy = 3
         then ws_sales_price* ws_quantity else 0 end) as mar_sales
     ,sum(case when d_moy = 4
         then ws_sales_price* ws_quantity else 0 end) as apr_sales
     ,sum(case when d_moy = 5
         then ws_sales_price* ws_quantity else 0 end) as may_sales
     ,sum(case when d_moy = 6
         then ws_sales_price* ws_quantity else 0 end) as jun_sales
     ,sum(case when d_moy = 7
         then ws_sales_price* ws_quantity else 0 end) as jul_sales
     ,sum(case when d_moy = 8
         then ws_sales_price* ws_quantity else 0 end) as aug_sales
     ,sum(case when d_moy = 9
         then ws_sales_price* ws_quantity else 0 end) as sep_sales
     ,sum(case when d_moy = 10
         then ws_sales_price* ws_quantity else 0 end) as oct_sales
     ,sum(case when d_moy = 11
         then ws_sales_price* ws_quantity else 0 end) as nov_sales
     ,sum(case when d_moy = 12
         then ws_sales_price* ws_quantity else 0 end) as dec_sales
     ,sum(case when d_moy = 1
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as jan_net
     ,sum(case when d_moy = 2
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as feb_net
     ,sum(case when d_moy = 3
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as mar_net
     ,sum(case when d_moy = 4
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as apr_net
     ,sum(case when d_moy = 5
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as may_net
     ,sum(case when d_moy = 6
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as jun_net
     ,sum(case when d_moy = 7
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as jul_net
     ,sum(case when d_moy = 8
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as aug_net
     ,sum(case when d_moy = 9
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as sep_net
     ,sum(case when d_moy = 10
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as oct_net
     ,sum(case when d_moy = 11
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as nov_net
     ,sum(case when d_moy = 12
         then ws_net_paid_inc_tax * ws_quantity else 0 end) as dec_net
     from
          web_sales_tmp web_sales
         ,warehouse_tmp warehouse
         ,date_dim_tmp date_dim
         ,time_dim_tmp time_dim
         ,ship_mode_tmp ship_mode
     where
            web_sales.ws_warehouse_sk =  warehouse.w_warehouse_sk
        and web_sales.ws_sold_date_sk = date_dim.d_date_sk
        and web_sales.ws_sold_time_sk = time_dim.t_time_sk
     and web_sales.ws_ship_mode_sk = ship_mode.sm_ship_mode_sk
     group by
      w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
       ,d_year
 union all
    select
      w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
     ,concat('DIAMOND', ',', 'AIRBORNE') as ship_carriers
     ,d_year as year
     ,sum(case when d_moy = 1
         then cs_ext_sales_price* cs_quantity else 0 end) as jan_sales
     ,sum(case when d_moy = 2
         then cs_ext_sales_price* cs_quantity else 0 end) as feb_sales
     ,sum(case when d_moy = 3
         then cs_ext_sales_price* cs_quantity else 0 end) as mar_sales
     ,sum(case when d_moy = 4
         then cs_ext_sales_price* cs_quantity else 0 end) as apr_sales
     ,sum(case when d_moy = 5
         then cs_ext_sales_price* cs_quantity else 0 end) as may_sales
     ,sum(case when d_moy = 6
         then cs_ext_sales_price* cs_quantity else 0 end) as jun_sales
     ,sum(case when d_moy = 7
         then cs_ext_sales_price* cs_quantity else 0 end) as jul_sales
     ,sum(case when d_moy = 8
         then cs_ext_sales_price* cs_quantity else 0 end) as aug_sales
     ,sum(case when d_moy = 9
         then cs_ext_sales_price* cs_quantity else 0 end) as sep_sales
     ,sum(case when d_moy = 10
         then cs_ext_sales_price* cs_quantity else 0 end) as oct_sales
     ,sum(case when d_moy = 11
         then cs_ext_sales_price* cs_quantity else 0 end) as nov_sales
     ,sum(case when d_moy = 12
         then cs_ext_sales_price* cs_quantity else 0 end) as dec_sales
     ,sum(case when d_moy = 1
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as jan_net
     ,sum(case when d_moy = 2
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as feb_net
     ,sum(case when d_moy = 3
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as mar_net
     ,sum(case when d_moy = 4
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as apr_net
     ,sum(case when d_moy = 5
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as may_net
     ,sum(case when d_moy = 6
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as jun_net
     ,sum(case when d_moy = 7
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as jul_net
     ,sum(case when d_moy = 8
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as aug_net
     ,sum(case when d_moy = 9
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as sep_net
     ,sum(case when d_moy = 10
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as oct_net
     ,sum(case when d_moy = 11
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as nov_net
     ,sum(case when d_moy = 12
         then cs_net_paid_inc_ship_tax * cs_quantity else 0 end) as dec_net
     from
          catalog_sales_tmp catalog_sales
         ,warehouse_tmp warehouse
         ,date_dim_tmp date_dim
         ,time_dim_tmp time_dim
         ,ship_mode_tmp ship_mode
     where
            catalog_sales.cs_warehouse_sk =  warehouse.w_warehouse_sk
        and catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
        and catalog_sales.cs_sold_time_sk = time_dim.t_time_sk
        and catalog_sales.cs_ship_mode_sk = ship_mode.sm_ship_mode_sk
     group by
      w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
       ,d_year
 ) x
 group by
      w_warehouse_name
     ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
     ,ship_carriers
     ,year
 order by w_warehouse_name
      ,w_warehouse_sq_ft
     ,w_city
     ,w_county
     ,w_state
     ,w_country
     ,ship_carriers
     ,year
     ,jan_sales
     ,feb_sales
     ,mar_sales
     ,apr_sales
     ,may_sales
     ,jun_sales
     ,jul_sales
     ,aug_sales
     ,sep_sales
     ,oct_sales
     ,nov_sales
     ,dec_sales
     ,jan_sales_per_sq_foot
     ,feb_sales_per_sq_foot
     ,mar_sales_per_sq_foot
     ,apr_sales_per_sq_foot
     ,may_sales_per_sq_foot
     ,jun_sales_per_sq_foot
     ,jul_sales_per_sq_foot
     ,aug_sales_per_sq_foot
     ,sep_sales_per_sq_foot
     ,oct_sales_per_sq_foot
     ,nov_sales_per_sq_foot
     ,dec_sales_per_sq_foot
     ,jan_net
     ,feb_net
     ,mar_net
     ,apr_net
     ,may_net
     ,jun_net
     ,jul_net
     ,aug_net
     ,sep_net
     ,oct_net
     ,nov_net
     ,dec_net
limit 100;
--q67 test----
select  *
from (select i_category
            ,i_class
            ,i_brand
            ,i_product_name
            ,d_year
            ,d_qoy
            ,d_moy
            ,s_store_id
            ,sumsales
            ,rank() over (partition by i_category order by sumsales desc) rk
      from (select i_category
                  ,i_class
                  ,i_brand
                  ,i_product_name
                  ,d_year
                  ,d_qoy
                  ,d_moy
                  ,s_store_id
                  ,sum(coalesce(ss_sales_price*ss_quantity,0)) sumsales
            from store_sales_tcpds store_sales
                ,date_dim_tcpds date_dim
                ,store_tcpds store
                ,item_tcpds item
       where  store_sales.ss_sold_date_sk=date_dim.d_date_sk
          and store_sales.ss_item_sk=item.i_item_sk
          and store_sales.ss_store_sk = store.s_store_sk
          and d_month_seq between 1193 and 1193+11
       group by i_category, i_class, i_brand, i_product_name, d_year, d_qoy, d_moy,s_store_id with rollup)dw1) dw2
where rk <= 100
order by i_category
        ,i_class
        ,i_brand
        ,i_product_name
        ,d_year
        ,d_qoy
        ,d_moy
        ,s_store_id
        ,sumsales
        ,rk
limit 100;
----------------------------------------------------------------------------------------------------
with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_sales_price,ss_quantity,ss_sold_date_sk,ss_item_sk,ss_store_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_year,d_qoy,d_moy,d_date_sk,d_month_seq
        from date_dim_tcpydb
        where d_month_seq like '([1193 TO 1204])'
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_store_id,s_store_sk
        from store_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
         /*ydb.pushdown('->')*/
        select i_category,i_class,i_brand,i_product_name,i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    )
select  *
from (select i_category
            ,i_class
            ,i_brand
            ,i_product_name
            ,d_year
            ,d_qoy
            ,d_moy
            ,s_store_id
            ,sumsales
            ,rank() over (partition by i_category order by sumsales desc) rk
      from (select i_category
                  ,i_class
                  ,i_brand
                  ,i_product_name
                  ,d_year
                  ,d_qoy
                  ,d_moy
                  ,s_store_id
                  ,sum(coalesce(ss_sales_price*ss_quantity,0)) sumsales
            from store_sales_tmp store_sales
                ,date_dim_tmp date_dim
                ,store_tmp store
                ,item_tmp item
       where  store_sales.ss_sold_date_sk=date_dim.d_date_sk
          and store_sales.ss_item_sk=item.i_item_sk
          and store_sales.ss_store_sk = store.s_store_sk
       group by i_category, i_class, i_brand, i_product_name, d_year, d_qoy, d_moy,s_store_id with rollup)dw1) dw2
where rk <= 100
order by i_category
        ,i_class
        ,i_brand
        ,i_product_name
        ,d_year
        ,d_qoy
        ,d_moy
        ,s_store_id
        ,sumsales
        ,rk
limit 100;
--q68 test----
select  c_last_name
       ,c_first_name
       ,ca_city
       ,bought_city
       ,ss_ticket_number
       ,extended_price
       ,extended_tax
       ,list_price
 from (select ss_ticket_number
             ,ss_customer_sk
             ,ca_city bought_city
             ,sum(ss_ext_sales_price) extended_price
             ,sum(ss_ext_list_price) list_price
             ,sum(ss_ext_tax) extended_tax
       from store_sales_tcpds store_sales
           ,date_dim_tcpds date_dim
           ,store_tcpds store
           ,household_demographics_tcpds household_demographics
           ,customer_address_tcpds customer_address
       where store_sales.ss_sold_date_sk = date_dim.d_date_sk
         and store_sales.ss_store_sk = store.s_store_sk
        and store_sales.ss_hdemo_sk = household_demographics.hd_demo_sk
        and store_sales.ss_addr_sk = customer_address.ca_address_sk
        and date_dim.d_dom between 1 and 2
        and (household_demographics.hd_dep_count = 4 or
             household_demographics.hd_vehicle_count= 2)
        and date_dim.d_year in (1998,1998+1,1998+2)
        and store.s_city in ('Rosedale','Bethlehem')
       group by ss_ticket_number
               ,ss_customer_sk
               ,ss_addr_sk,ca_city) dn
      ,customer_tcpds customer
      ,customer_address_tcpds current_addr
 where dn.ss_customer_sk = customer.c_customer_sk
   and customer.c_current_addr_sk = current_addr.ca_address_sk
   and current_addr.ca_city <> bought_city
 order by c_last_name
         ,ss_ticket_number
       ,c_first_name
       ,ca_city
       ,bought_city
       ,extended_price
       ,extended_tax
       ,list_price
 limit 100;
----------------------------------------------------------------------------------------------------
 with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ticket_number,ss_customer_sk,ss_ext_sales_price,ss_ext_list_price,ss_ext_tax,ss_sold_date_sk,ss_store_sk,ss_hdemo_sk,ss_addr_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_dom like '([1 TO 2])' and d_year in (1998,1999,2000)
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_store_sk
        from store_tcpydb
        where s_city in ('Rosedale','Bethlehem')
        /*('<-')pushdown.ydb*/
    ),
    household_demographics_tmp as (
        /*ydb.pushdown('->')*/
        select hd_demo_sk
        from household_demographics_tcpydb
        where hd_dep_count = 4 or hd_vehicle_count= 2
        /*('<-')pushdown.ydb*/
    ),
    customer_address_tmp as (
        /*ydb.pushdown('->')*/
        select ca_city,ca_address_sk
        from customer_address_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_tmp as (
        /*ydb.pushdown('->')*/
        select c_last_name,c_first_name,c_customer_sk,c_current_addr_sk
        from customer_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_address_tmp_addr as (
        /*ydb.pushdown('->')*/
        select ca_city,ca_address_sk
        from customer_address_tcpydb
        /*('<-')pushdown.ydb*/
    )
 select  c_last_name
       ,c_first_name
       ,ca_city
       ,bought_city
       ,ss_ticket_number
       ,extended_price
       ,extended_tax
       ,list_price
 from (select ss_ticket_number
             ,ss_customer_sk
             ,ca_city bought_city
             ,sum(ss_ext_sales_price) extended_price
             ,sum(ss_ext_list_price) list_price
             ,sum(ss_ext_tax) extended_tax
       from store_sales_tmp store_sales
           ,date_dim_tmp date_dim
           ,store_tmp store
           ,household_demographics_tmp household_demographics
           ,customer_address_tmp customer_address
       where store_sales.ss_sold_date_sk = date_dim.d_date_sk
         and store_sales.ss_store_sk = store.s_store_sk
        and store_sales.ss_hdemo_sk = household_demographics.hd_demo_sk
        and store_sales.ss_addr_sk = customer_address.ca_address_sk
       group by ss_ticket_number
               ,ss_customer_sk
               ,ss_addr_sk,ca_city) dn
      ,customer_tmp customer
      ,customer_address_tmp_addr current_addr
 where dn.ss_customer_sk = customer.c_customer_sk
   and customer.c_current_addr_sk = current_addr.ca_address_sk
   and current_addr.ca_city <> bought_city
 order by c_last_name
         ,ss_ticket_number
       ,c_first_name
       ,ca_city
       ,bought_city
       ,extended_price
       ,extended_tax
       ,list_price
 limit 100;
--q71 test----
 select i_brand_id brand_id, i_brand brand,t_hour,t_minute,
     sum(ext_price) ext_price
 from item_tcpds item
    JOIN (select ws_ext_sales_price as ext_price,
                        ws_sold_date_sk as sold_date_sk,
                        ws_item_sk as sold_item_sk,
                        ws_sold_time_sk as time_sk
                 from web_sales_tcpds web_sales,date_dim_tcpds date_dim
                 where date_dim.d_date_sk = web_sales.ws_sold_date_sk
                   and d_moy=12
                   and d_year=2001
                 union all
                 select cs_ext_sales_price as ext_price,
                        cs_sold_date_sk as sold_date_sk,
                        cs_item_sk as sold_item_sk,
                        cs_sold_time_sk as time_sk
                 from catalog_sales_tcpds catalog_sales,date_dim_tcpds date_dim
                 where date_dim.d_date_sk = catalog_sales.cs_sold_date_sk
                   and d_moy=12
                   and d_year=2001
                 union all
                 select ss_ext_sales_price as ext_price,
                        ss_sold_date_sk as sold_date_sk,
                        ss_item_sk as sold_item_sk,
                        ss_sold_time_sk as time_sk
                 from store_sales_tcpds store_sales,date_dim_tcpds date_dim
                 where date_dim.d_date_sk = store_sales.ss_sold_date_sk
                   and d_moy=12
                   and d_year=2001
                 ) tmp ON tmp.sold_item_sk = item.i_item_sk
    JOIN time_dim_tcpds time_dim ON tmp.time_sk = time_dim.t_time_sk
 where
       i_manager_id=1
   and (t_meal_time = 'breakfast' or t_meal_time = 'dinner')
 group by i_brand, i_brand_id,t_hour,t_minute
 order by ext_price desc, i_brand_id,
  brand_id, brand,t_hour,t_minute
 ;
----------------------------------------------------------------------------------------------------
 with
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_brand_id,i_brand,i_item_sk
        from item_tcpydb
        where i_manager_id=1
        /*('<-')pushdown.ydb*/
    ),
    web_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ws_ext_sales_price,ws_sold_date_sk,ws_item_sk,ws_sold_time_sk
        from web_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_ext_sales_price,cs_sold_date_sk,cs_item_sk,cs_sold_time_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ext_sales_price,ss_sold_date_sk,ss_item_sk,ss_sold_time_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_moy=12 and d_year=2001
        /*('<-')pushdown.ydb*/
    ),
    time_dim_tmp as (
        /*ydb.pushdown('->')*/
        select t_hour,t_minute,t_time_sk
        from time_dim_tcpydb
        where t_meal_time in ('breakfast', 'dinner')
        /*('<-')pushdown.ydb*/
    )
 select i_brand_id brand_id, i_brand brand,t_hour,t_minute,
     sum(ext_price) ext_price
 from item_tmp item
    JOIN (select ws_ext_sales_price as ext_price,
                        ws_sold_date_sk as sold_date_sk,
                        ws_item_sk as sold_item_sk,
                        ws_sold_time_sk as time_sk
                 from web_sales_tmp web_sales,date_dim_tmp date_dim
                 where date_dim.d_date_sk = web_sales.ws_sold_date_sk
                 union all
                 select cs_ext_sales_price as ext_price,
                        cs_sold_date_sk as sold_date_sk,
                        cs_item_sk as sold_item_sk,
                        cs_sold_time_sk as time_sk
                 from catalog_sales_tmp catalog_sales,date_dim_tmp date_dim
                 where date_dim.d_date_sk = catalog_sales.cs_sold_date_sk
                 union all
                 select ss_ext_sales_price as ext_price,
                        ss_sold_date_sk as sold_date_sk,
                        ss_item_sk as sold_item_sk,
                        ss_sold_time_sk as time_sk
                 from store_sales_tmp store_sales,date_dim_tmp date_dim
                 where date_dim.d_date_sk = store_sales.ss_sold_date_sk
                 ) tmp ON tmp.sold_item_sk = item.i_item_sk
    JOIN time_dim_tmp time_dim ON tmp.time_sk = time_dim.t_time_sk
 group by i_brand, i_brand_id,t_hour,t_minute
 order by ext_price desc, i_brand_id,
   brand_id, brand,t_hour,t_minute
;
--q72 test----
select i_item_desc
      ,w_warehouse_name
      ,d1.d_week_seq
      ,count(case when p_promo_sk is null then 1 else 0 end) no_promo
      ,count(case when p_promo_sk is not null then 1 else 0 end) promo
      ,count(*) total_cnt
from catalog_sales_tcpds catalog_sales
join inventory_tcpds inventory on (catalog_sales.cs_item_sk = inventory.inv_item_sk)
join warehouse_tcpds warehouse on (warehouse.w_warehouse_sk=inventory.inv_warehouse_sk)
join item_tcpds item on (item.i_item_sk = catalog_sales.cs_item_sk)
join customer_demographics_tcpds customer_demographics on (catalog_sales.cs_bill_cdemo_sk = customer_demographics.cd_demo_sk)
join household_demographics_tcpds household_demographics on (catalog_sales.cs_bill_hdemo_sk = household_demographics.hd_demo_sk)
join date_dim_tcpds d1 on (catalog_sales.cs_sold_date_sk = d1.d_date_sk)
join date_dim_tcpds d2 on (inventory.inv_date_sk = d2.d_date_sk)
join date_dim_tcpds d3 on (catalog_sales.cs_ship_date_sk = d3.d_date_sk)
left outer join promotion_tcpds promotion on (catalog_sales.cs_promo_sk=promotion.p_promo_sk)
left outer join catalog_returns_tcpds catalog_returns on (catalog_returns.cr_item_sk = catalog_sales.cs_item_sk and catalog_returns.cr_order_number = catalog_sales.cs_order_number)
where d1.d_week_seq = d2.d_week_seq
  and inv_quantity_on_hand < cs_quantity
  and d3.d_date > d1.d_date + 5
  and hd_buy_potential = '1001-5000'
  and d1.d_year = 2001
  and hd_buy_potential = '1001-5000'
  and cd_marital_status = 'M'
  and d1.d_year = 2001
group by i_item_desc,w_warehouse_name,d1.d_week_seq
order by total_cnt desc, i_item_desc, w_warehouse_name, d_week_seq
      ,no_promo
      ,promo
limit 100;
----------------------------------------------------------------------------------------------------
with
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_item_sk,cs_bill_cdemo_sk,cs_bill_hdemo_sk,cs_sold_date_sk,cs_promo_sk,cs_order_number,cs_quantity,cs_ship_date_sk
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    inventory_tmp as (
        /*ydb.pushdown('->')*/
        select inv_item_sk,inv_date_sk,inv_warehouse_sk,inv_quantity_on_hand
        from inventory_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    warehouse_tmp as (
        /*ydb.pushdown('->')*/
        select w_warehouse_name,w_warehouse_sk
        from warehouse_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_item_desc,i_item_sk
        from item_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    customer_demographics_tmp as (
        /*ydb.pushdown('->')*/
        select cd_demo_sk
        from customer_demographics_tcpydb
        where cd_marital_status = 'M'
        /*('<-')pushdown.ydb*/
    ),
    household_demographics_tmp as (
        /*ydb.pushdown('->')*/
        select hd_demo_sk
        from household_demographics_tcpydb
        where hd_buy_potential = '1001-5000'
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp1 as (
        /*ydb.pushdown('->')*/
        select d_week_seq,d_date_sk,d_date
        from date_dim_tcpydb
        where d_year = 2001
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp2 as (
        /*ydb.pushdown('->')*/
        select d_week_seq,d_date_sk
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp3 as (
        /*ydb.pushdown('->')*/
        select d_date_sk,d_date
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    promotion_tmp as (
        /*ydb.pushdown('->')*/
        select p_promo_sk
        from promotion_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    catalog_returns_tmp as (
        /*ydb.pushdown('->')*/
        select cr_item_sk,cr_order_number
        from catalog_returns_tcpydb
        /*('<-')pushdown.ydb*/
    )
select i_item_desc
      ,w_warehouse_name
      ,d1.d_week_seq
      ,count(case when p_promo_sk is null then 1 else 0 end) no_promo
      ,count(case when p_promo_sk is not null then 1 else 0 end) promo
      ,count(*) total_cnt
from catalog_sales_tmp catalog_sales
join inventory_tmp inventory on (catalog_sales.cs_item_sk = inventory.inv_item_sk)
join warehouse_tmp warehouse on (warehouse.w_warehouse_sk=inventory.inv_warehouse_sk)
join item_tmp item on (item.i_item_sk = catalog_sales.cs_item_sk)
join customer_demographics_tmp customer_demographics on (catalog_sales.cs_bill_cdemo_sk = customer_demographics.cd_demo_sk)
join household_demographics_tmp household_demographics on (catalog_sales.cs_bill_hdemo_sk = household_demographics.hd_demo_sk)
join date_dim_tmp1 d1 on (catalog_sales.cs_sold_date_sk = d1.d_date_sk)
join date_dim_tmp2 d2 on (inventory.inv_date_sk = d2.d_date_sk)
join date_dim_tmp3 d3 on (catalog_sales.cs_ship_date_sk = d3.d_date_sk)
left outer join promotion_tmp promotion on (catalog_sales.cs_promo_sk=promotion.p_promo_sk)
left outer join catalog_returns_tmp catalog_returns on (catalog_returns.cr_item_sk = catalog_sales.cs_item_sk and catalog_returns.cr_order_number = catalog_sales.cs_order_number)
where d1.d_week_seq = d2.d_week_seq
  and inv_quantity_on_hand < cs_quantity
  and d3.d_date > d1.d_date + 5
group by i_item_desc,w_warehouse_name,d1.d_week_seq
order by total_cnt desc, i_item_desc, w_warehouse_name, d_week_seq
      ,no_promo
      ,promo
limit 100;
--q73 test----
select c_last_name
       ,c_first_name
       ,c_salutation
       ,c_preferred_cust_flag
       ,ss_ticket_number
       ,cnt
from
   (select ss_ticket_number
          ,ss_customer_sk
          ,count(*) cnt
    from
         store_sales_tcpds store_sales
        ,date_dim_tcpds date_dim
        ,store_tcpds store
        ,household_demographics_tcpds household_demographics
    where store_sales.ss_sold_date_sk = date_dim.d_date_sk
    and store_sales.ss_store_sk = store.s_store_sk
    and store_sales.ss_hdemo_sk = household_demographics.hd_demo_sk
    and date_dim.d_dom between 1 and 2
    and (household_demographics.hd_buy_potential = '1001-5000' or
         household_demographics.hd_buy_potential = '5001-10000')
    and household_demographics.hd_vehicle_count > 0
    and case when household_demographics.hd_vehicle_count > 0 then
             household_demographics.hd_dep_count/ household_demographics.hd_vehicle_count else null end > 1
    and date_dim.d_year in (1998,1998+1,1998+2)
    and store.s_county in ('Kittitas County','Adams County','Richland County','Furnas County')
    group by ss_ticket_number,ss_customer_sk) dj
    ,customer_tcpds customer
where dj.ss_customer_sk = customer.c_customer_sk
      and cnt between 1 and 5
order by cnt desc
       ,c_last_name
       ,c_first_name
       ,c_salutation
       ,c_preferred_cust_flag
       ,ss_ticket_number
;
----------------------------------------------------------------------------------------------------
with
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_ticket_number,ss_customer_sk,ss_sold_date_sk,ss_store_sk,ss_hdemo_sk
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_date_sk
        from date_dim_tcpydb
        where d_dom like '([1 TO 2])' and d_year in (1998,1999,2000)
        /*('<-')pushdown.ydb*/
    ),
    store_tmp as (
        /*ydb.pushdown('->')*/
        select s_store_sk
        from store_tcpydb
        where s_county in ('Kittitas County','Adams County','Richland County','Furnas County')
        /*('<-')pushdown.ydb*/
    ),
    household_demographics_tmp as (
        /*ydb.pushdown('->')*/
        select hd_demo_sk,hd_vehicle_count,hd_dep_count
        from household_demographics_tcpydb
        where hd_buy_potential in ('1001-5000', '5001-10000')
          and hd_vehicle_count > 0
        /*('<-')pushdown.ydb*/
    ),
    customer_tmp as (
        /*ydb.pushdown('->')*/
        select c_last_name,c_first_name,c_salutation,c_preferred_cust_flag,c_customer_sk
        from customer_tcpydb
        /*('<-')pushdown.ydb*/
    )
select c_last_name
       ,c_first_name
       ,c_salutation
       ,c_preferred_cust_flag
       ,ss_ticket_number
       ,cnt
from
   (select ss_ticket_number
          ,ss_customer_sk
          ,count(*) cnt
    from
         store_sales_tmp store_sales
        ,date_dim_tmp date_dim
        ,store_tmp store
        ,household_demographics_tmp household_demographics
    where store_sales.ss_sold_date_sk = date_dim.d_date_sk
    and store_sales.ss_store_sk = store.s_store_sk
    and store_sales.ss_hdemo_sk = household_demographics.hd_demo_sk
    and case when household_demographics.hd_vehicle_count > 0 then
             household_demographics.hd_dep_count/ household_demographics.hd_vehicle_count else null end > 1
    group by ss_ticket_number,ss_customer_sk) dj
    ,customer_tmp customer
where dj.ss_customer_sk = customer.c_customer_sk
      and cnt between 1 and 5
order by cnt desc
       ,c_last_name
       ,c_first_name
       ,c_salutation
       ,c_preferred_cust_flag
       ,ss_ticket_number
;
--q75 test----
WITH all_sales AS (
 SELECT d_year
       ,i_brand_id
       ,i_class_id
       ,i_category_id
       ,i_manufact_id
       ,SUM(sales_cnt) AS sales_cnt
       ,SUM(sales_amt) AS sales_amt
 FROM (SELECT d_year
             ,i_brand_id
             ,i_class_id
             ,i_category_id
             ,i_manufact_id
             ,cs_quantity - COALESCE(cr_return_quantity,0) AS sales_cnt
             ,cs_ext_sales_price - COALESCE(cr_return_amount,0.0) AS sales_amt
       FROM catalog_sales_tcpds catalog_sales
              JOIN item_tcpds item ON i_item_sk=cs_item_sk
              JOIN date_dim_tcpds date_dim ON d_date_sk=cs_sold_date_sk
              LEFT JOIN catalog_returns_tcpds catalog_returns
                        ON (cs_order_number=cr_order_number
                           AND cs_item_sk=cr_item_sk)
       WHERE i_category='Sports'
       UNION ALL
       SELECT d_year
             ,i_brand_id
             ,i_class_id
             ,i_category_id
             ,i_manufact_id
             ,ss_quantity - COALESCE(sr_return_quantity,0) AS sales_cnt
             ,ss_ext_sales_price - COALESCE(sr_return_amt,0.0) AS sales_amt
       FROM store_sales_tcpds store_sales
            JOIN item_tcpds item ON i_item_sk=ss_item_sk
            JOIN date_dim_tcpds date_dim ON d_date_sk=ss_sold_date_sk
            LEFT JOIN store_returns_tcpds store_returns
                    ON (ss_ticket_number=sr_ticket_number
                        AND ss_item_sk=sr_item_sk)
       WHERE i_category='Sports'
       UNION ALL
       SELECT d_year
             ,i_brand_id
             ,i_class_id
             ,i_category_id
             ,i_manufact_id
             ,ws_quantity - COALESCE(wr_return_quantity,0) AS sales_cnt
             ,ws_ext_sales_price - COALESCE(wr_return_amt,0.0) AS sales_amt
       FROM web_sales_tcpds web_sales
              JOIN item_tcpds item ON i_item_sk=ws_item_sk
              JOIN date_dim_tcpds date_dim ON d_date_sk=ws_sold_date_sk
              LEFT JOIN web_returns_tcpds web_returns
                        ON (ws_order_number=wr_order_number
                            AND ws_item_sk=wr_item_sk)
       WHERE i_category='Sports') sales_detail
 GROUP BY d_year, i_brand_id, i_class_id, i_category_id, i_manufact_id)
 SELECT  prev_yr.d_year AS prev_year
                          ,curr_yr.d_year AS year
                          ,curr_yr.i_brand_id
                          ,curr_yr.i_class_id
                          ,curr_yr.i_category_id
                          ,curr_yr.i_manufact_id
                          ,prev_yr.sales_cnt AS prev_yr_cnt
                          ,curr_yr.sales_cnt AS curr_yr_cnt
                          ,curr_yr.sales_cnt-prev_yr.sales_cnt AS sales_cnt_diff
                          ,curr_yr.sales_amt-prev_yr.sales_amt AS sales_amt_diff
 FROM all_sales curr_yr, all_sales prev_yr
 WHERE curr_yr.i_brand_id=prev_yr.i_brand_id
   AND curr_yr.i_class_id=prev_yr.i_class_id
   AND curr_yr.i_category_id=prev_yr.i_category_id
   AND curr_yr.i_manufact_id=prev_yr.i_manufact_id
   AND curr_yr.d_year=2002
   AND prev_yr.d_year=2002-1
   AND CAST(curr_yr.sales_cnt AS DECIMAL(17,2))/CAST(prev_yr.sales_cnt AS DECIMAL(17,2))<0.9
 ORDER BY sales_cnt_diff,prev_year,year,i_brand_id,i_class_id,i_category_id,i_manufact_id,prev_yr_cnt,curr_yr_cnt,sales_amt_diff
 limit 100;
----------------------------------------------------------------------------------------------------
 WITH
    catalog_sales_tmp as (
        /*ydb.pushdown('->')*/
        select cs_quantity,cs_ext_sales_price,cs_item_sk,cs_sold_date_sk,cs_order_number
        from catalog_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ss_quantity,ss_ext_sales_price,ss_item_sk,ss_sold_date_sk,ss_ticket_number
        from store_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    web_sales_tmp as (
        /*ydb.pushdown('->')*/
        select ws_quantity,ws_ext_sales_price,ws_item_sk,ws_sold_date_sk,ws_order_number
        from web_sales_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    item_tmp as (
        /*ydb.pushdown('->')*/
        select i_brand_id,i_class_id,i_category_id,i_manufact_id,i_item_sk
        from item_tcpydb
        where i_category = 'Sports'
        /*('<-')pushdown.ydb*/
    ),
    date_dim_tmp as (
        /*ydb.pushdown('->')*/
        select d_year,d_date_sk
        from date_dim_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    catalog_returns_tmp as (
        /*ydb.pushdown('->')*/
        select cr_return_quantity,cr_return_amount,cr_order_number,cr_item_sk
        from catalog_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    store_returns_tmp as (
        /*ydb.pushdown('->')*/
        select sr_return_quantity,sr_return_amt,sr_ticket_number,sr_item_sk
        from store_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
    web_returns_tmp as (
        /*ydb.pushdown('->')*/
        select wr_return_quantity,wr_return_amt,wr_order_number,wr_item_sk
        from web_returns_tcpydb
        /*('<-')pushdown.ydb*/
    ),
 all_sales AS (
 SELECT d_year
       ,i_brand_id
       ,i_class_id
       ,i_category_id
       ,i_manufact_id
       ,SUM(sales_cnt) AS sales_cnt
       ,SUM(sales_amt) AS sales_amt
 FROM (SELECT d_year AS d_year
             ,i_brand_id AS i_brand_id
             ,i_class_id AS i_class_id
             ,i_category_id AS i_category_id
             ,i_manufact_id AS i_manufact_id
             ,cs_quantity - COALESCE(cr_return_quantity,0) AS sales_cnt
             ,cs_ext_sales_price - COALESCE(cr_return_amount,0.0) AS sales_amt
       FROM catalog_sales_tmp catalog_sales
              JOIN item_tmp item ON i_item_sk=cs_item_sk
              JOIN date_dim_tmp date_dim ON d_date_sk=cs_sold_date_sk
              LEFT JOIN catalog_returns_tmp catalog_returns
                        ON (cs_order_number=cr_order_number
                           AND cs_item_sk=cr_item_sk)
       UNION ALL
       SELECT d_year AS d_year
             ,i_brand_id AS i_brand_id
             ,i_class_id AS i_class_id
             ,i_category_id AS i_category_id
             ,i_manufact_id AS i_manufact_id
             ,ss_quantity - COALESCE(sr_return_quantity,0) AS sales_cnt
             ,ss_ext_sales_price - COALESCE(sr_return_amt,0.0) AS sales_amt
       FROM store_sales_tmp store_sales
            JOIN item_tmp item ON i_item_sk=ss_item_sk
            JOIN date_dim_tmp date_dim ON d_date_sk=ss_sold_date_sk
            LEFT JOIN store_returns_tmp store_returns
                    ON (ss_ticket_number=sr_ticket_number
                        AND ss_item_sk=sr_item_sk)
       UNION ALL
       SELECT d_year AS d_year
             ,i_brand_id AS i_brand_id
             ,i_class_id AS i_class_id
             ,i_category_id AS i_category_id
             ,i_manufact_id AS i_manufact_id
             ,ws_quantity - COALESCE(wr_return_quantity,0) AS sales_cnt
             ,ws_ext_sales_price - COALESCE(wr_return_amt,0.0) AS sales_amt
       FROM web_sales_tmp web_sales
              JOIN item_tmp item ON i_item_sk=ws_item_sk
              JOIN date_dim_tmp date_dim ON d_date_sk=ws_sold_date_sk
              LEFT JOIN web_returns_tmp web_returns
                        ON (ws_order_number=wr_order_number
                            AND ws_item_sk=wr_item_sk)
       ) sales_detail
 GROUP BY d_year, i_brand_id, i_class_id, i_category_id, i_manufact_id)
 SELECT  prev_yr.d_year AS prev_year
                          ,curr_yr.d_year AS year
                          ,curr_yr.i_brand_id
                          ,curr_yr.i_class_id
                          ,curr_yr.i_category_id
                          ,curr_yr.i_manufact_id
                          ,prev_yr.sales_cnt AS prev_yr_cnt
                          ,curr_yr.sales_cnt AS curr_yr_cnt
                          ,curr_yr.sales_cnt-prev_yr.sales_cnt AS sales_cnt_diff
                          ,curr_yr.sales_amt-prev_yr.sales_amt AS sales_amt_diff
 FROM all_sales curr_yr, all_sales prev_yr
 WHERE curr_yr.i_brand_id=prev_yr.i_brand_id
   AND curr_yr.i_class_id=prev_yr.i_class_id
   AND curr_yr.i_category_id=prev_yr.i_category_id
   AND curr_yr.i_manufact_id=prev_yr.i_manufact_id
   AND curr_yr.d_year=2002
   AND prev_yr.d_year=2002-1
   AND CAST(curr_yr.sales_cnt AS DECIMAL(17,2))/CAST(prev_yr.sales_cnt AS DECIMAL(17,2))<0.9
 ORDER BY sales_cnt_diff,prev_year,year,i_brand_id,i_class_id,i_category_id,i_manufact_id,prev_yr_cnt,curr_yr_cnt,sales_amt_diff
 limit 100;
--q76 test----
select  channel, col_name, d_year, d_qoy, i_category, COUNT(*) sales_cnt, SUM(ext_sales_price) sales_amt
FROM (
        SELECT 'store' as channel, 'ss_addr_sk' col_name, d_year, d_qoy, i_category, ss_ext_sales_price ext_sales_price
         FROM store_sales_tcpds ss, item_tcpds i, date_dim_tcpds d
         WHERE ss_addr_sk IS NULL
           AND ss.ss_sold_date_sk=d.d_date_sk
           AND ss.ss_item_sk=i.i_item_sk
        UNION ALL
        SELECT 'web' as channel, 'ws_web_page_sk' col_name, d_year, d_qoy, i_category, ws_ext_sales_price ext_sales_price
         FROM web_sales_tcpds ws, item_tcpds i, date_dim_tcpds d
         WHERE ws_web_page_sk IS NULL
           AND ws.ws_sold_date_sk=d.d_date_sk
           AND ws.ws_item_sk=i.i_item_sk
        UNION ALL
        SELECT 'catalog' as channel, 'cs_warehouse_sk' col_name, d_year, d_qoy, i_category, cs_ext_sales_price ext_sales_price
         FROM catalog_sales_tcpds cs, item_tcpds i, date_dim_tcpds d
         WHERE cs_warehouse_sk IS NULL
           AND cs.cs_sold_date_sk=d.d_date_sk
           AND cs.cs_item_sk=i.i_item_sk) foo
GROUP BY channel, col_name, d_year, d_qoy, i_category
ORDER BY channel, col_name, d_year, d_qoy, i_category
   , sales_cnt, sales_amt
limit 100;
----------------------------------------------------------------------------------------------------
with
y_store_sales     as (
/*ydb.pushdown('->')*/
select ss_ext_sales_price,ss_addr_sk ,ss_sold_date_sk,ss_item_sk from store_sales_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),y_web_sales     as (
/*ydb.pushdown('->')*/
select ws_ext_sales_price,ws_web_page_sk ,ws_sold_date_sk,ws_item_sk from web_sales_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),y_catalog_sales     as (
/*ydb.pushdown('->')*/
select cs_ext_sales_price,catalog_sales_tcpds,cs_warehouse_sk,cs_sold_date_sk,cs_item_sk from catalog_sales_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),y_item     as (
/*ydb.pushdown('->')*/
select  i_category,i_item_sk from item_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),y_date_dim     as (
/*ydb.pushdown('->')*/
select d_year,d_qoy,d_date_sk from date_dim_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
)
select  channel, col_name, d_year, d_qoy, i_category, COUNT(*) sales_cnt, SUM(ext_sales_price) sales_amt
FROM (
        SELECT 'store' as channel, 'ss_addr_sk' col_name, d_year, d_qoy, i_category, ss_ext_sales_price ext_sales_price
         FROM store_sales_tcpds ss, item_tcpds i, date_dim_tcpds d
         WHERE ss_addr_sk IS NULL
           AND ss.ss_sold_date_sk=d.d_date_sk
           AND ss.ss_item_sk=i.i_item_sk
        UNION ALL
        SELECT 'web' as channel, 'ws_web_page_sk' col_name, d_year, d_qoy, i_category, ws_ext_sales_price ext_sales_price
         FROM web_sales_tcpds ws, item_tcpds i, date_dim_tcpds d
         WHERE ws_web_page_sk IS NULL
           AND ws.ws_sold_date_sk=d.d_date_sk
           AND ws.ws_item_sk=i.i_item_sk
        UNION ALL
        SELECT 'catalog' as channel, 'cs_warehouse_sk' col_name, d_year, d_qoy, i_category, cs_ext_sales_price ext_sales_price
         FROM catalog_sales_tcpds cs, item_tcpds i, date_dim_tcpds d
         WHERE cs_warehouse_sk IS NULL
           AND cs.cs_sold_date_sk=d.d_date_sk
           AND cs.cs_item_sk=i.i_item_sk) foo
GROUP BY channel, col_name, d_year, d_qoy, i_category
ORDER BY channel, col_name, d_year, d_qoy, i_category
   , sales_cnt, sales_amt
limit 100;
--q79 test----
select
  c_last_name,c_first_name,substr(s_city,1,30) sub,ss_ticket_number,amt,profit
  from
   (select ss_ticket_number
          ,ss_customer_sk
          ,s.s_city
          ,sum(ss_coupon_amt) amt
          ,sum(ss_net_profit) profit
    from store_sales_tcpds ss,date_dim_tcpds d,store_tcpds s,household_demographics_tcpds hd
    where ss.ss_sold_date_sk = d.d_date_sk
    and ss.ss_store_sk = s.s_store_sk
    and ss.ss_hdemo_sk = hd.hd_demo_sk
    and (hd.hd_dep_count = 8 or hd.hd_vehicle_count > 0)
    and d.d_dow = 1
    and d.d_year in (1998,1998+1,1998+2)
    and s.s_number_employees between 200 and 295
    group by ss_ticket_number,ss_customer_sk,ss_addr_sk,s.s_city) ms,customer_tcpds c
    where ms.ss_customer_sk = c.c_customer_sk
 order by c_last_name,c_first_name,sub, profit
    ,ss_ticket_number,amt
limit 100;
----------------------------------------------------------------------------------------------------
with
y_store_sales as (
/*ydb.pushdown('->')*/
select ss_ticket_number,ss_customer_sk,ss_coupon_amt,ss_net_profit,ss_sold_date_sk,ss_store_sk,ss_hdemo_sk,ss_addr_sk from store_sales_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),y_date_dim as (
/*ydb.pushdown('->')*/
select d_date_sk,d_dow,d_year from date_dim_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),y_store as (
/*ydb.pushdown('->')*/
select s_city,s_store_sk,s_number_employees from store_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),y_household_demographics as (
/*ydb.pushdown('->')*/
select hd_demo_sk,hd_vehicle_count,hd_dep_count from household_demographics_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),y_customer as (
/*ydb.pushdown('->')*/
select c_last_name,c_first_name,c_customer_sk from customer_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
)
select
  c_last_name,c_first_name,substr(s_city,1,30) sub,ss_ticket_number,amt,profit
  from
   (select ss_ticket_number
          ,ss_customer_sk
          ,s.s_city
          ,sum(ss_coupon_amt) amt
          ,sum(ss_net_profit) profit
    from y_store_sales  ss,y_date_dim  d,y_store  s,y_household_demographics  hd
   where ss.ss_sold_date_sk = d.d_date_sk
    and ss.ss_store_sk = s.s_store_sk
    and ss.ss_hdemo_sk = hd.hd_demo_sk
    and (hd.hd_dep_count = 8 or hd.hd_vehicle_count > 0)
    and d.d_dow = 1
    and d.d_year in (1998,1998+1,1998+2)
    and s.s_number_employees between 200 and 295
    group by ss_ticket_number,ss_customer_sk,ss_addr_sk,s.s_city) ms,customer_tcpds c
    where ms.ss_customer_sk = c.c_customer_sk
 order by c_last_name,c_first_name,sub, profit
    ,ss_ticket_number,amt
limit 100;
--q80 test----
with ssr as
 (select  s_store_id as store_id, sum(ss_ext_sales_price) as sales, sum(coalesce(sr_return_amt, 0)) as returns,
   sum(ss_net_profit - coalesce(sr_net_loss, 0)) as profit
  from store_sales_tcpds left outer join store_returns_tcpds  on(ss_item_sk = sr_item_sk and ss_ticket_number = sr_ticket_number),
     date_dim_tcpds, store_tcpds,  item_tcpds, promotion_tcpds
 where ss_sold_date_sk = d_date_sk
       and d_date between cast('1998-08-04' as date)  and (cast('1998-09-04' as date))
       and ss_store_sk = s_store_sk
       and ss_item_sk = i_item_sk
       and i_current_price > 50
       and ss_promo_sk = p_promo_sk
       and p_channel_tv = 'N'
 group by s_store_id)
 ,
 csr as
 (select  cp_catalog_page_id as catalog_page_id,  sum(cs_ext_sales_price) as sales,  sum(coalesce(cr_return_amount, 0)) as returns,
          sum(cs_net_profit - coalesce(cr_net_loss, 0)) as profit
  from catalog_sales_tcpds
  left outer join catalog_returns_tcpds
  on (cs_item_sk = cr_item_sk and cs_order_number = cr_order_number),
     date_dim_tcpds, catalog_page_tcpds,item_tcpds,promotion_tcpds
 where cs_sold_date_sk = d_date_sk
       and d_date between cast('1998-08-04' as date) and (cast('1998-09-04' as date))
        and cs_catalog_page_sk = cp_catalog_page_sk
       and cs_item_sk = i_item_sk
       and i_current_price > 50
       and cs_promo_sk = p_promo_sk
       and p_channel_tv = 'N'
group by cp_catalog_page_id)
 ,
 wsr as
 (select  web_site_id,
          sum(ws_ext_sales_price) as sales,
          sum(coalesce(wr_return_amt, 0)) as returns,
          sum(ws_net_profit - coalesce(wr_net_loss, 0)) as profit
  from web_sales_tcpds
  left outer join web_returns_tcpds on
         (ws_item_sk = wr_item_sk and ws_order_number = wr_order_number),
     date_dim_tcpds,
     web_site_tcpds,
     item_tcpds,
     promotion_tcpds
 where ws_sold_date_sk = d_date_sk
       and d_date between cast('1998-08-04' as date) and (cast('1998-09-04' as date))
        and ws_web_site_sk = web_site_sk
       and ws_item_sk = i_item_sk
       and i_current_price > 50
       and ws_promo_sk = p_promo_sk
       and p_channel_tv = 'N'
group by web_site_id)
  select  channel
        , id
        , sum(sales) as sales
        , sum(returns) as returns
        , sum(profit) as profit
 from
 (select 'store channel' as channel
        , concat('store', store_id) as id
        , sales
        , returns
        , profit
 from   ssr
 union all
 select 'catalog channel' as channel
        , concat('catalog_page', catalog_page_id) as id
        , sales
        , returns
        , profit
 from  csr
 union all
 select 'web channel' as channel
        , concat('web_site', web_site_id) as id
        , sales
        , returns
        , profit
 from   wsr
 ) x
 group by channel, id with rollup
 order by channel
         ,id
        ,sales
        ,returns
        ,profit
 limit 100;
----------------------------------------------------------------------------------------------------
with
y_store_sales as (
/*ydb.pushdown('->')*/
select ss_ext_sales_price,ss_net_profit,ss_item_sk,ss_ticket_number,ss_sold_date_sk,ss_store_sk,ss_promo_sk from store_sales_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_store_returns as (
/*ydb.pushdown('->')*/
select sr_return_amt,sr_net_loss,sr_item_sk,sr_ticket_number from store_returns_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_date_dim as (
/*ydb.pushdown('->')*/
select  d_date_sk ,d_date   from date_dim_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_store as (
/*ydb.pushdown('->')*/
select s_store_id , s_store_sk from store_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_item as (
/*ydb.pushdown('->')*/
select i_item_sk,i_current_price  from item_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_promotion as (
/*ydb.pushdown('->')*/
select p_promo_sk, p_channel_tv   from promotion_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_catalog_sales as (
/*ydb.pushdown('->')*/
select cs_ext_sales_price,cs_net_profit,cs_catalog_page_sk,cs_item_sk,cs_order_number,cs_sold_date_sk,cs_promo_sk  from catalog_sales_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_catalog_returns as (
/*ydb.pushdown('->')*/
select cr_return_amount,cr_item_sk,cr_net_loss,cr_order_number from catalog_returns_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_catalog_page as (
/*ydb.pushdown('->')*/
select cp_catalog_page_id,cp_catalog_page_sk from catalog_page_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_web_sales as (
/*ydb.pushdown('->')*/
select ws_ext_sales_price,ws_net_profit,ws_item_sk,ws_promo_sk,ws_order_number,ws_sold_date_sk,ws_web_site_sk from web_sales_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_web_returns as (
/*ydb.pushdown('->')*/
select wr_return_amt,wr_net_loss,wr_item_sk,wr_order_number from web_returns_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_web_site as (
/*ydb.pushdown('->')*/
select web_site_id,web_site_sk from web_site_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
) ,
 ssr as
 (select  s_store_id as store_id, sum(ss_ext_sales_price) as sales, sum(coalesce(sr_return_amt, 0)) as returns,
   sum(ss_net_profit - coalesce(sr_net_loss, 0)) as profit
  from y_store_sales  left outer join y_store_returns on(ss_item_sk = sr_item_sk and ss_ticket_number = sr_ticket_number),
     y_date_dim , y_store ,  y_item , y_promotion
 where ss_sold_date_sk = d_date_sk
       and d_date between cast('1998-08-04' as date)  and (cast('1998-09-04' as date))
       and ss_store_sk = s_store_sk
       and ss_item_sk = i_item_sk
       and i_current_price > 50
       and ss_promo_sk = p_promo_sk
       and p_channel_tv = 'N'
 group by s_store_id)
 ,
 csr as
 (select  cp_catalog_page_id as catalog_page_id,  sum(cs_ext_sales_price) as sales,  sum(coalesce(cr_return_amount, 0)) as returns,
          sum(cs_net_profit - coalesce(cr_net_loss, 0)) as profit
  from y_catalog_sales
  left outer join y_catalog_returns
  on (cs_item_sk = cr_item_sk and cs_order_number = cr_order_number),
     y_date_dim , y_catalog_page ,y_item ,y_promotion
 where cs_sold_date_sk = d_date_sk
       and d_date between cast('1998-08-04' as date) and (cast('1998-09-04' as date))
        and cs_catalog_page_sk = cp_catalog_page_sk
       and cs_item_sk = i_item_sk
       and i_current_price > 50
       and cs_promo_sk = p_promo_sk
       and p_channel_tv = 'N'
group by cp_catalog_page_id)
 ,
 wsr as
 (select  web_site_id,
          sum(ws_ext_sales_price) as sales,
          sum(coalesce(wr_return_amt, 0)) as returns,
          sum(ws_net_profit - coalesce(wr_net_loss, 0)) as profit
  from y_web_sales
  left outer join y_web_returns on
         (ws_item_sk = wr_item_sk and ws_order_number = wr_order_number),
     y_date_dim ,
     y_web_site ,
     y_item ,
     y_promotion
 where ws_sold_date_sk = d_date_sk
       and d_date between cast('1998-08-04' as date) and (cast('1998-09-04' as date))
        and ws_web_site_sk = web_site_sk
       and ws_item_sk = i_item_sk
       and i_current_price > 50
       and ws_promo_sk = p_promo_sk
       and p_channel_tv = 'N'
group by web_site_id)
  select  channel
        , id
        , sum(sales) as sales
        , sum(returns) as returns
        , sum(profit) as profit
 from
 (select 'store channel' as channel
        , concat('store', store_id) as id
        , sales
        , returns
        , profit
 from   ssr
 union all
 select 'catalog channel' as channel
        , concat('catalog_page', catalog_page_id) as id
        , sales
        , returns
        , profit
 from  csr
 union all
 select 'web channel' as channel
        , concat('web_site', web_site_id) as id
        , sales
        , returns
        , profit
 from   wsr
 ) x
 group by channel, id with rollup
 order by channel
         ,id
        ,sales
        ,returns
        ,profit
 limit 100;
--q82 test----
select  i_item_id
       ,i_item_desc
       ,i_current_price
 from item_tcpds, inventory_tcpds, date_dim_tcpds, store_sales_tcpds
 where i_current_price between 30 and 30+30
 and inv_item_sk = i_item_sk
 and d_date_sk=inv_date_sk
 and d_date between '2002-05-30' and '2002-07-30'
 and i_manufact_id in (437,129,727,663)
 and inv_quantity_on_hand between 100 and 500
 and ss_item_sk = i_item_sk
 group by i_item_id,i_item_desc,i_current_price
 order by i_item_id
       ,i_item_desc
       ,i_current_price
 limit 100;
----------------------------------------------------------------------------------------------------
with
y_item  as (
 /*ydb.pushdown('->')*/
select i_item_id,i_item_desc,i_current_price,i_item_sk,i_manufact_id from item_tcpydb where ydbpartion='ydb_default_partion'
 and  i_current_price like'([ 30 TO 60 ])'
/*('<-')pushdown.ydb*/
),
y_inventory  as (
 /*ydb.pushdown('->')*/
select inv_item_sk,inv_date_sk from inventory_tcpydb where  ydbpartion='ydb_default_partion' and inv_quantity_on_hand like'([ 100 TO 500 ])'
/*('<-')pushdown.ydb*/
),
y_date_dim  as (
 /*ydb.pushdown('->')*/
select d_date_sk,d_date from date_dim_tcpydb where  ydbpartion='ydb_default_partion'and d_date like '([ 2002-05-30 TO 2002-07-30 ])'
/*('<-')pushdown.ydb*/
),
y_store_sales  as (
 /*ydb.pushdown('->')*/
select ss_item_sk from store_sales_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
)
select  i_item_id
       ,i_item_desc
       ,i_current_price
 from y_item, y_inventory , y_date_dim , y_store_sales
 where inv_item_sk = i_item_sk
 and d_date_sk=inv_date_sk
  and i_manufact_id in (437,129,727,663)
   and ss_item_sk = i_item_sk
 group by i_item_id,i_item_desc,i_current_price
 order by i_item_id
       ,i_item_desc
       ,i_current_price
 limit 100;
--q84 test----
select  c_customer_id as customer_id
       ,concat(c_last_name, ', ', c_first_name) as customername
 from customer_tcpds c
     ,customer_address_tcpds ca
     ,customer_demographics_tcpds cd
     ,household_demographics_tcpds hd
     ,income_band_tcpds ib
     ,store_returns_tcpds sr
 where ca_city            =  'Hopewell'
   and c.c_current_addr_sk = ca.ca_address_sk
   and ib_lower_bound   >=  32287
   and ib_upper_bound   <=  32287 + 50000
   and ib.ib_income_band_sk = hd.hd_income_band_sk
   and cd.cd_demo_sk = c.c_current_cdemo_sk
   and hd.hd_demo_sk = c.c_current_hdemo_sk
   and sr.sr_cdemo_sk = cd.cd_demo_sk
 order by customer_id
	,customername
 limit 100;
----------------------------------------------------------------------------------------------------
 with y_customer_address as (
 /*ydb.pushdown('->')*/
select ca_city,ca_address_sk from customer_address_tcpydb where  ydbpartion='ydb_default_partion'and ca_city =  'Hopewell'
/*('<-')pushdown.ydb*/
),
y_customer_demographics as (
 /*ydb.pushdown('->')*/
select  cd_demo_sk from customer_demographics_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_household_demographics as (
 /*ydb.pushdown('->')*/
select hd_demo_sk,hd_income_band_sk from household_demographics_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_income_band as (
 /*ydb.pushdown('->')*/
select ib_lower_bound,ib_upper_bound,ib_income_band_sk from   income_band_tcpydb where  ydbpartion='ydb_default_partion'and ib_lower_bound >= 32287 and ib_upper_bound <= 82287
/*('<-')pushdown.ydb*/
),
y_store_returns as (
 /*ydb.pushdown('->')*/
select sr_cdemo_sk from store_returns_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),y_customer  as (
 /*ydb.pushdown('->')*/
select c_customer_id,c_last_name,c_first_name,c_current_addr_sk,c_current_cdemo_sk,c_current_hdemo_sk from customer_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
)
select  c_customer_id as customer_id
       ,concat(c_last_name, ', ', c_first_name) as customername
 from
      y_customer c
     ,y_customer_address ca
     ,y_customer_demographics cd
     ,y_household_demographics hd
     ,y_income_band ib
     ,y_store_returns sr
 where
       c.c_current_addr_sk = ca.ca_address_sk
   and ib.ib_income_band_sk = hd.hd_income_band_sk
   and cd.cd_demo_sk = c.c_current_cdemo_sk
   and hd.hd_demo_sk = c.c_current_hdemo_sk
   and sr.sr_cdemo_sk = cd.cd_demo_sk
 order by customer_id
	,customername
 limit 100;
--q85 test----
select  substr(r_reason_desc,1,20) as rr
       ,avg(ws_quantity) wq
       ,avg(wr_refunded_cash) ref
       ,avg(wr_fee) fee
 from web_sales_tcpds ws, web_returns_tcpds wr, web_page_tcpds wp, customer_demographics_tcpds cd1,
      customer_demographics_tcpds cd2, customer_address_tcpds ca, date_dim_tcpds d, reason_tcpds r
 where ws.ws_web_page_sk = wp.wp_web_page_sk
   and ws.ws_item_sk = wr.wr_item_sk
   and ws.ws_order_number = wr.wr_order_number
   and ws.ws_sold_date_sk = d.d_date_sk
   and d_year = 1998
   and cd1.cd_demo_sk = wr.wr_refunded_cdemo_sk
   and cd2.cd_demo_sk = wr.wr_returning_cdemo_sk
   and ca.ca_address_sk = wr.wr_refunded_addr_sk
   and r.r_reason_sk = wr.wr_reason_sk
   and
   (
    (
     cd1.cd_marital_status = 'M'
     and
     cd1.cd_marital_status = cd2.cd_marital_status
     and
     cd1.cd_education_status = '4 yr Degree'
     and
     cd1.cd_education_status = cd2.cd_education_status
     and
     ws_sales_price between 100.00 and 150.00
    )
   or
    (
     cd1.cd_marital_status = 'D'
     and
     cd1.cd_marital_status = cd2.cd_marital_status
     and
     cd1.cd_education_status = 'Primary'
     and
     cd1.cd_education_status = cd2.cd_education_status
     and
     ws_sales_price between 50.00 and 100.00
    )
   or
    (
     cd1.cd_marital_status = 'U'
     and
     cd1.cd_marital_status = cd2.cd_marital_status
     and
     cd1.cd_education_status = 'Advanced Degree'
     and
     cd1.cd_education_status = cd2.cd_education_status
     and
     ws_sales_price between 150.00 and 200.00
    )
   )
   and
   (
    (
     ca_country = 'United States'
     and
     ca_state in ('KY', 'GA', 'NM')
     and ws_net_profit between 100 and 200
    )
    or
    (
     ca_country = 'United States'
     and
     ca_state in ('MT', 'OR', 'IN')
     and ws_net_profit between 150 and 300
    )
    or
    (
     ca_country = 'United States'
     and
     ca_state in ('WI', 'MO', 'WV')
     and ws_net_profit between 50 and 250
    )
   )
group by r_reason_desc
order by rr, wq, ref, fee
limit 100;
----------------------------------------------------------------------------------------------------
with
y_web_sales as (
/*ydb.pushdown('->')*/
select ws_web_page_sk,ws_item_sk,ws_order_number,ws_sold_date_sk,ws_quantity,ws_sales_price,ws_net_profit from web_sales_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_web_returns as (
/*ydb.pushdown('->')*/
select wr_refunded_cash,wr_fee,wr_item_sk,wr_order_number,wr_refunded_cdemo_sk,wr_returning_cdemo_sk,wr_refunded_addr_sk,wr_reason_sk from  web_returns_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_web_page as (
/*ydb.pushdown('->')*/
select wp_web_page_sk from  web_page_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_customer_demographics as (
/*ydb.pushdown('->')*/
select cd_demo_sk,cd_marital_status,cd_education_status from  customer_demographics_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_customer_address as (
/*ydb.pushdown('->')*/
select ca_address_sk,ca_country,ca_state from customer_address_tcpydb where  ydbpartion='ydb_default_partion'and ca_country = 'United States'
/*('<-')pushdown.ydb*/
),
y_date_dim as (
/*ydb.pushdown('->')*/
select d_date_sk,d_year from  date_dim_tcpydb where  ydbpartion='ydb_default_partion'and d_year = 1998
/*('<-')pushdown.ydb*/
),
y_reason as (
/*ydb.pushdown('->')*/
select r_reason_sk,r_reason_desc from  reason_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
)
select  substr(r_reason_desc,1,20) as rr
       ,avg(ws_quantity) wq
       ,avg(wr_refunded_cash) ref
       ,avg(wr_fee) fee
 from y_web_sales ws, y_web_returns wr, y_web_page wp, y_customer_demographics cd1,
      y_customer_demographics cd2, y_customer_address ca, y_date_dim d, y_reason r
 where ws.ws_web_page_sk = wp.wp_web_page_sk
   and ws.ws_item_sk = wr.wr_item_sk
   and ws.ws_order_number = wr.wr_order_number
   and ws.ws_sold_date_sk = d.d_date_sk
   and cd1.cd_demo_sk = wr.wr_refunded_cdemo_sk
   and cd2.cd_demo_sk = wr.wr_returning_cdemo_sk
   and ca.ca_address_sk = wr.wr_refunded_addr_sk
   and r.r_reason_sk = wr.wr_reason_sk
   and
   (
    (
     cd1.cd_marital_status = 'M'
     and
     cd1.cd_marital_status = cd2.cd_marital_status
     and
     cd1.cd_education_status = '4 yr Degree'
     and
     cd1.cd_education_status = cd2.cd_education_status
     and
     ws_sales_price between 100.00 and 150.00
    )
   or
    (
     cd1.cd_marital_status = 'D'
     and
     cd1.cd_marital_status = cd2.cd_marital_status
     and
     cd1.cd_education_status = 'Primary'
     and
     cd1.cd_education_status = cd2.cd_education_status
     and
     ws_sales_price between 50.00 and 100.00
    )
   or
    (
     cd1.cd_marital_status = 'U'
     and
     cd1.cd_marital_status = cd2.cd_marital_status
     and
     cd1.cd_education_status = 'Advanced Degree'
     and
     cd1.cd_education_status = cd2.cd_education_status
     and
     ws_sales_price between 150.00 and 200.00
    )
   )
   and
   (
    (
     ca_state in ('KY', 'GA', 'NM')
     and ws_net_profit between 100 and 200
    )
    or
    (
     ca_state in ('MT', 'OR', 'IN')
     and ws_net_profit between 150 and 300
    )
    or
    (
     ca_state in ('WI', 'MO', 'WV')
     and ws_net_profit between 50 and 250
    )
   )
group by r_reason_desc
order by rr, wq, ref, fee
limit 100;
--q87 test----
select count(*)
from (select distinct c_last_name as l1, c_first_name as f1, d_date as d1
       from store_sales_tcpds ss
        JOIN date_dim_tcpds d ON ss.ss_sold_date_sk = d.d_date_sk
        JOIN customer_tcpds c ON ss.ss_customer_sk = c.c_customer_sk
       where
         d_month_seq between 1193 and 1193+11
    ) t1
      LEFT OUTER JOIN
      ( select distinct c_last_name as l2, c_first_name as f2, d_date as d2
       from catalog_sales_tcpds cs
        JOIN date_dim_tcpds d ON cs.cs_sold_date_sk = d.d_date_sk
        JOIN customer_tcpds c ON cs.cs_bill_customer_sk = c.c_customer_sk
       where
         d_month_seq between 1193 and 1193+11
    ) t2
      ON t1.l1 = t2.l2 and
       t1.f1 = t2.f2 and
       t1.d1 = t2.d2
      LEFT OUTER JOIN
      (select distinct c_last_name as l3, c_first_name as f3, d_date as d3
       from web_sales_tcpds ws
        JOIN date_dim_tcpds d ON ws.ws_sold_date_sk = d.d_date_sk
        JOIN customer_tcpds c ON ws.ws_bill_customer_sk = c.c_customer_sk
       where
         d_month_seq between 1193 and 1193+11
    ) t3
      ON t1.l1 = t3.l3 and
       t1.f1 = t3.f3 and
       t1.d1 = t3.d3
WHERE
    l2 is null and
    l3 is null ;
----------------------------------------------------------------------------------------------------
with y_store_sales as (
/*ydb.pushdown('->')*/
select ss_sold_date_sk,ss_customer_sk from  store_sales_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_date_dim as (
/*ydb.pushdown('->')*/
select d_date_sk,d_date,d_month_seq from date_dim_tcpydb where   ydbpartion='ydb_default_partion'  and    d_month_seq like '([1193 TO 1204])'
/*('<-')pushdown.ydb*/
),
y_customer  as (
/*ydb.pushdown('->')*/
select c_customer_sk,c_last_name,c_first_name from customer_tcpydb where   ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_web_sales as (
/*ydb.pushdown('->')*/
select ws_sold_date_sk,ws_bill_customer_sk from web_sales_tcpydb where   ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_catalog_sales as (
/*ydb.pushdown('->')*/
select cs_sold_date_sk,cs_bill_customer_sk from catalog_sales_tcpydb where   ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
)
select count(*)
from (select distinct c_last_name as l1, c_first_name as f1, d_date as d1
       from y_store_sales  ss
        JOIN y_date_dim  d ON ss.ss_sold_date_sk = d.d_date_sk
        JOIN y_customer  c ON ss.ss_customer_sk = c.c_customer_sk
    ) t1
      LEFT OUTER JOIN
      ( select distinct c_last_name as l2, c_first_name as f2, d_date as d2
       from y_catalog_sales  cs
        JOIN y_date_dim  d ON cs.cs_sold_date_sk = d.d_date_sk
        JOIN y_customer  c ON cs.cs_bill_customer_sk = c.c_customer_sk
    ) t2
      ON t1.l1 = t2.l2 and
       t1.f1 = t2.f2 and
       t1.d1 = t2.d2
      LEFT OUTER JOIN
      (select distinct c_last_name as l3, c_first_name as f3, d_date as d3
       from y_web_sales  ws
        JOIN y_date_dim  d ON ws.ws_sold_date_sk = d.d_date_sk
        JOIN y_customer  c ON ws.ws_bill_customer_sk = c.c_customer_sk
    ) t3
      ON t1.l1 = t3.l3 and
       t1.f1 = t3.f3 and
       t1.d1 = t3.d3
WHERE
    l2 is null and
    l3 is null ;
--q88 test----
select  *
from
 (select count(*) h8_30_to_9
 from store_sales_tcpds ss, household_demographics_tcpds hd , time_dim_tcpds t, store_tcpds s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 8
     and t.t_minute >= 30
     and ((hd.hd_dep_count = 3 and hd.hd_vehicle_count<=3+2) or
          (hd.hd_dep_count = 0 and hd.hd_vehicle_count<=0+2) or
          (hd.hd_dep_count = 1 and hd.hd_vehicle_count<=1+2))
     and s.s_store_name = 'ese') s1,
 (select count(*) h9_to_9_30
 from store_sales_tcpds ss, household_demographics_tcpds hd , time_dim_tcpds t, store_tcpds s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 9
     and t.t_minute < 30
     and ((hd.hd_dep_count = 3 and hd.hd_vehicle_count<=3+2) or
          (hd.hd_dep_count = 0 and hd.hd_vehicle_count<=0+2) or
          (hd.hd_dep_count = 1 and hd.hd_vehicle_count<=1+2))
     and s.s_store_name = 'ese') s2,
 (select count(*) h9_30_to_10
 from store_sales_tcpds ss, household_demographics_tcpds hd , time_dim_tcpds t, store_tcpds s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 9
     and t.t_minute >= 30
     and ((hd.hd_dep_count = 3 and hd.hd_vehicle_count<=3+2) or
          (hd.hd_dep_count = 0 and hd.hd_vehicle_count<=0+2) or
          (hd.hd_dep_count = 1 and hd.hd_vehicle_count<=1+2))
     and s.s_store_name = 'ese') s3,
 (select count(*) h10_to_10_30
 from store_sales_tcpds ss, household_demographics_tcpds hd , time_dim_tcpds t, store_tcpds s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 10
     and t.t_minute < 30
     and ((hd.hd_dep_count = 3 and hd.hd_vehicle_count<=3+2) or
          (hd.hd_dep_count = 0 and hd.hd_vehicle_count<=0+2) or
          (hd.hd_dep_count = 1 and hd.hd_vehicle_count<=1+2))
     and s.s_store_name = 'ese') s4,
 (select count(*) h10_30_to_11
 from store_sales_tcpds ss, household_demographics_tcpds hd , time_dim_tcpds t, store_tcpds s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 10
     and t.t_minute >= 30
     and ((hd.hd_dep_count = 3 and hd.hd_vehicle_count<=3+2) or
          (hd.hd_dep_count = 0 and hd.hd_vehicle_count<=0+2) or
          (hd.hd_dep_count = 1 and hd.hd_vehicle_count<=1+2))
     and s.s_store_name = 'ese') s5,
 (select count(*) h11_to_11_30
 from store_sales_tcpds ss, household_demographics_tcpds hd , time_dim_tcpds t, store_tcpds s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 11
     and t.t_minute < 30
     and ((hd.hd_dep_count = 3 and hd.hd_vehicle_count<=3+2) or
          (hd.hd_dep_count = 0 and hd.hd_vehicle_count<=0+2) or
          (hd.hd_dep_count = 1 and hd.hd_vehicle_count<=1+2))
     and s.s_store_name = 'ese') s6,
 (select count(*) h11_30_to_12
 from store_sales_tcpds ss, household_demographics_tcpds hd , time_dim_tcpds t, store_tcpds s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 11
     and t.t_minute >= 30
     and ((hd.hd_dep_count = 3 and hd.hd_vehicle_count<=3+2) or
          (hd.hd_dep_count = 0 and hd.hd_vehicle_count<=0+2) or
          (hd.hd_dep_count = 1 and hd.hd_vehicle_count<=1+2))
     and s.s_store_name = 'ese') s7,
 (select count(*) h12_to_12_30
 from store_sales_tcpds ss, household_demographics_tcpds hd , time_dim_tcpds t, store_tcpds s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 12
     and t.t_minute < 30
     and ((hd.hd_dep_count = 3 and hd.hd_vehicle_count<=3+2) or
          (hd.hd_dep_count = 0 and hd.hd_vehicle_count<=0+2) or
          (hd.hd_dep_count = 1 and hd.hd_vehicle_count<=1+2))
     and s.s_store_name = 'ese') s8
;
----------------------------------------------------------------------------------------------------
with  y_store_sales as (
/*ydb.pushdown('->')*/
select ss_sold_time_sk,ss_hdemo_sk,ss_store_sk from store_sales_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_household_demographics as (
/*ydb.pushdown('->')*/
select hd_demo_sk,hd_dep_count,hd_vehicle_count from  household_demographics_tcpydb where  ydbpartion='ydb_default_partion' and ((hd_dep_count = 3 and hd_vehicle_count<=5) or(hd_dep_count = 0 and hd_vehicle_count<=2) or (hd_dep_count = 1 and hd_vehicle_count<=3))
/*('<-')pushdown.ydb*/
),
y_time_dim as (
/*ydb.pushdown('->')*/
select t_time_sk,t_hour,t_minute from time_dim_tcpydb  where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_store as (
/*ydb.pushdown('->')*/
select s_store_name , s_store_sk from store_tcpydb where  ydbpartion='ydb_default_partion'and  s_store_name = 'ese'
/*('<-')pushdown.ydb*/
)
select  *
from
 (select count(*) h8_30_to_9
 from y_store_sales ss, y_household_demographics hd , y_time_dim t, y_store s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 8
     and t.t_minute >= 30
     ) s1,
 (select count(*) h9_to_9_30
 from y_store_sales ss, y_household_demographics hd , y_time_dim t, y_store s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 9
     and t.t_minute < 30
     ) s2,
 (select count(*) h9_30_to_10
 from y_store_sales ss, y_household_demographics hd , y_time_dim t, y_store s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 9
     and t.t_minute >= 30
     ) s3,
 (select count(*) h10_to_10_30
 from y_store_sales ss, y_household_demographics hd , y_time_dim t, y_store s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 10
     and t.t_minute < 30
      ) s4,
 (select count(*) h10_30_to_11
 from y_store_sales ss, y_household_demographics hd , y_time_dim t, y_store s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 10
     and t.t_minute >= 30
      ) s5,
 (select count(*) h11_to_11_30
 from y_store_sales ss, y_household_demographics hd , y_time_dim t, y_store s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 11
     and t.t_minute < 30
      ) s6,
 (select count(*) h11_30_to_12
 from y_store_sales ss, y_household_demographics hd , y_time_dim t, y_store s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 11
     and t.t_minute >= 30
     ) s7,
 (select count(*) h12_to_12_30
 from y_store_sales ss, y_household_demographics hd , y_time_dim t, y_store s
 where ss.ss_sold_time_sk = t.t_time_sk
     and ss.ss_hdemo_sk = hd.hd_demo_sk
     and ss.ss_store_sk = s.s_store_sk
     and t.t_hour = 12
     and t.t_minute < 30
      ) s8
;
--q89 test----
select  *
from(
select i_category, i_class, i_brand,s_store_name, s_company_name,
       d_moy,sum(ss_sales_price) sum_sales,
       avg(sum(ss_sales_price)
       ) over(partition by i_category, i_brand, s_store_name, s_company_name)avg_monthly_sales
from item_tcpds i, store_sales_tcpds ss, date_dim_tcpds d, store_tcpds s
where ss.ss_item_sk = i.i_item_sk and
      ss.ss_sold_date_sk = d.d_date_sk and
      ss.ss_store_sk = s.s_store_sk and
      d.d_year in (2000) and
        ((i_category in ('Home','Books','Electronics') and i_class in ('wallpaper','parenting','musical') )
      or (i_category in ('Shoes','Jewelry','Men') and i_class in ('womens','birdal','pants') ))
group by i_category, i_class, i_brand,
         s_store_name, s_company_name, d_moy) tmp1
where case when (avg_monthly_sales <> 0) then (abs(sum_sales - avg_monthly_sales) / avg_monthly_sales) else null end > 0.1
order by sum_sales - avg_monthly_sales, s_store_name
	   ,i_category, i_class, i_brand,s_company_name
	   ,d_moy, sum_sales
	   ,avg_monthly_sales
limit 100;
----------------------------------------------------------------------------------------------------
with y_item as (
/*ydb.pushdown('->')*/
select   i_item_sk , i_category,  i_class ,i_brand from item_tcpydb where   ydbpartion='ydb_default_partion'and
        ((i_category in ('Home','Books','Electronics') and i_class in ('wallpaper','parenting','musical') )
      or (i_category in ('Shoes','Jewelry','Men') and i_class in ('womens','birdal','pants') ))
/*('<-')pushdown.ydb*/
),
y_store_sales as(
/*ydb.pushdown('->')*/
select  ss_sales_price, ss_item_sk, ss_sold_date_sk,ss_store_sk from store_sales_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_date_dim as (
/*ydb.pushdown('->')*/
select   d_moy, d_date_sk,d_year from date_dim_tcpydb where   ydbpartion='ydb_default_partion'and d_year =2000
/*('<-')pushdown.ydb*/
),
y_store as (
/*ydb.pushdown('->')*/
select  s_company_name ,s_store_name ,s_store_sk from  store_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
)
select  *
from(
select i_category, i_class, i_brand,s_store_name, s_company_name,
       d_moy,sum(ss_sales_price) sum_sales,
       avg(sum(ss_sales_price)
       ) over(partition by i_category, i_brand, s_store_name, s_company_name)avg_monthly_sales
from y_item i, y_store_sales  ss, y_date_dim  d, y_store  s
where ss.ss_item_sk = i.i_item_sk and
      ss.ss_sold_date_sk = d.d_date_sk and
      ss.ss_store_sk = s.s_store_sk
group by i_category, i_class, i_brand,s_store_name, s_company_name, d_moy) tmp1
where case when (avg_monthly_sales <> 0) then (abs(sum_sales - avg_monthly_sales) / avg_monthly_sales) else null end > 0.1
order by sum_sales - avg_monthly_sales, s_store_name
	   ,i_category, i_class, i_brand,s_company_name
	   ,d_moy, sum_sales
	   ,avg_monthly_sales
limit 100;
--q90 test----
select  cast(amc as decimal(15,4))/cast(pmc as decimal(15,4)) am_pm_ratio
 from ( select count(*) amc
       from web_sales_tcpds ws, household_demographics_tcpds hd , time_dim_tcpds t, web_page_tcpds wp
       where ws.ws_sold_time_sk = t.t_time_sk
         and ws.ws_ship_hdemo_sk = hd.hd_demo_sk
         and ws.ws_web_page_sk = wp.wp_web_page_sk
         and t.t_hour between 6 and 6+1
         and hd.hd_dep_count = 8
         and wp.wp_char_count between 5000 and 5200) at,
      ( select count(*) pmc
       from web_sales_tcpds ws, household_demographics_tcpds hd , time_dim_tcpds t, web_page_tcpds wp
       where ws.ws_sold_time_sk = t.t_time_sk
         and ws.ws_ship_hdemo_sk = hd.hd_demo_sk
         and ws.ws_web_page_sk = wp.wp_web_page_sk
         and t.t_hour between 14 and 14+1
         and hd.hd_dep_count = 8
         and wp.wp_char_count between 5000 and 5200) pt
 order by am_pm_ratio
 limit 100;
----------------------------------------------------------------------------------------------------
with y_web_sales as (
/*ydb.pushdown('->')*/
select ws_sold_time_sk ,ws_ship_hdemo_sk ,ws_web_page_sk from web_sales_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_household_demographics as (
/*ydb.pushdown('->')*/
select hd_demo_sk ,hd_dep_count from household_demographics_tcpydb where  ydbpartion='ydb_default_partion'and hd_dep_count = 8
/*('<-')pushdown.ydb*/
),
y_time_dim as (
/*ydb.pushdown('->')*/
select t_time_sk,t_hour from time_dim_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_web_page as (
/*ydb.pushdown('->')*/
select wp_web_page_sk, wp_char_count from web_page_tcpydb where  ydbpartion='ydb_default_partion'and (wp_char_count like'([5000 TO 5200])' )
/*('<-')pushdown.ydb*/
)
select  cast(amc as decimal(15,4))/cast(pmc as decimal(15,4)) am_pm_ratio
 from ( select count(*) amc
       from y_web_sales ws, y_household_demographics hd , y_time_dim t, y_web_page wp
       where ws.ws_sold_time_sk = t.t_time_sk
         and ws.ws_ship_hdemo_sk = hd.hd_demo_sk
         and ws.ws_web_page_sk = wp.wp_web_page_sk
         and t.t_hour between 6 and 6+1
      ) at,
      ( select count(*) pmc
       from y_web_sales ws, y_household_demographics hd , y_time_dim t, y_web_page wp
       where ws.ws_sold_time_sk = t.t_time_sk
         and ws.ws_ship_hdemo_sk = hd.hd_demo_sk
         and ws.ws_web_page_sk = wp.wp_web_page_sk
         and t.t_hour between 14 and 14+1
      ) pt
 order by am_pm_ratio
 limit 100;
--q91 test----
select
        cc_call_center_id Call_Center,
        cc_name Call_Center_Name,
        cc_manager Manager,
        sum(cr_net_loss) Returns_Loss
from
        call_center_tcpds cc,
        catalog_returns_tcpds cr,
        date_dim_tcpds dd,
        customer_tcpds c,
        customer_address_tcpds ca,
        customer_demographics_tcpds cd,
        household_demographics_tcpds hd
where
        cr.cr_call_center_sk       = cc.cc_call_center_sk
and     cr.cr_returned_date_sk     = dd.d_date_sk
and     cr.cr_returning_customer_sk= c.c_customer_sk
and     cd.cd_demo_sk              = c.c_current_cdemo_sk
and     hd.hd_demo_sk              = c.c_current_hdemo_sk
and     ca.ca_address_sk           = c.c_current_addr_sk
and     d_year                  = 1999
and     d_moy                   = 11
and     ( (cd_marital_status       = 'M' and cd_education_status     = 'Unknown')
        or(cd_marital_status       = 'W' and cd_education_status     = 'Advanced Degree'))
and     hd_buy_potential like '0-500%'
and     ca_gmt_offset           = -7
group by cc_call_center_id,cc_name,cc_manager,cd_marital_status,cd_education_status
order by Returns_Loss desc,
		Call_Center,
        Call_Center_Name,
        Manager
;
----------------------------------------------------------------------------------------------------
with y_call_center as(
    /*ydb.pushdown('->')*/
    select cc_call_center_id ,cc_name, cc_manager,cc_call_center_sk from call_center_tcpydb where  ydbpartion='ydb_default_partion'
    /*('<-')pushdown.ydb*/
),
y_catalog_returns as (
/*ydb.pushdown('->')*/
select cr_net_loss,cr_call_center_sk,cr_returned_date_sk,cr_returning_customer_sk from catalog_returns_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_date_dim as (
/*ydb.pushdown('->')*/
select d_date_sk from date_dim_tcpydb where  ydbpartion='ydb_default_partion'and d_year= 1999 and d_moy= 11
/*('<-')pushdown.ydb*/
),
y_customer as (
/*ydb.pushdown('->')*/
select c_customer_sk ,c_current_cdemo_sk ,c_current_hdemo_sk, c_current_addr_sk from customer_tcpydb where   ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_customer_address as (
/*ydb.pushdown('->')*/
select  ca_address_sk from customer_address_tcpydb where  ydbpartion='ydb_default_partion'and  ca_gmt_offset= -7
/*('<-')pushdown.ydb*/
),
y_customer_demographics as (
/*ydb.pushdown('->')*/
select cd_demo_sk,cd_marital_status,cd_education_status from customer_demographics_tcpydb where  ydbpartion='ydb_default_partion'and ( (cd_marital_status = 'M' and cd_education_status = 'Unknown')
 or(cd_marital_status = 'W' and cd_education_status = 'Advanced Degree'))/*('<-')pushdown.ydb*/
),
y_household_demographics  as(
/*ydb.pushdown('->')*/
select hd_demo_sk  from household_demographics_tcpydb where  ydbpartion='ydb_default_partion'and hd_buy_potential like '0-500%'
/*('<-')pushdown.ydb*/
)
select
        cc.cc_call_center_id Call_Center,
        cc.cc_name Call_Center_Name,
        cc.cc_manager Manager,
        sum(cr.cr_net_loss) Returns_Loss
from
        y_call_center cc,
        y_catalog_returns  cr,
        y_date_dim  dd,
        y_customer c,
        y_customer_address  ca,
        y_customer_demographics  cd,
        y_household_demographics  hd
where
        cr.cr_call_center_sk       = cc.cc_call_center_sk
and     cr.cr_returned_date_sk     = dd.d_date_sk
and     cr.cr_returning_customer_sk= c.c_customer_sk
and     cd.cd_demo_sk              = c.c_current_cdemo_sk
and     hd.hd_demo_sk              = c.c_current_hdemo_sk
and     ca.ca_address_sk           = c.c_current_addr_sk
group by cc_call_center_id,cc_name,cc_manager,cd_marital_status,cd_education_status
order by Returns_Loss desc,
		Call_Center,
        Call_Center_Name,
        Manager
;
--q92 test----
SELECT sum(case when ssci.customer_sk is not null and csci.customer_sk is null then 1 else 0 end) as store_only,
       sum(case when ssci.customer_sk is null and csci.customer_sk is not null then 1 else 0 end) as catalog_only,
       sum(case when ssci.customer_sk is not null and csci.customer_sk is not null then 1 else 0 end) as store_and_catalog
FROM (SELECT ss.ss_customer_sk as customer_sk,ss.ss_item_sk as item_sk
    FROM store_sales_tcpds ss
    JOIN date_dim_tcpds d1 ON (ss.ss_sold_date_sk = d1.d_date_sk)
             WHERE d1.d_month_seq >= 1206 and d1.d_month_seq <= 1217
             GROUP BY ss.ss_customer_sk, ss.ss_item_sk) ssci
FULL OUTER JOIN (SELECT cs.cs_bill_customer_sk as customer_sk,cs.cs_item_sk as item_sk
                                   FROM catalog_sales_tcpds cs
                                   JOIN date_dim_tcpds d2 ON (cs.cs_sold_date_sk = d2.d_date_sk)
                                   WHERE d2.d_month_seq >= 1206 and d2.d_month_seq <= 1217
                                   GROUP BY cs.cs_bill_customer_sk, cs.cs_item_sk) csci
ON (ssci.customer_sk=csci.customer_sk and ssci.item_sk = csci.item_sk)
order by store_only, catalog_only, store_and_catalog;
----------------------------------------------------------------------------------------------------
with y_store_sales as (
/*ydb.pushdown('->')*/
select ss_customer_sk,ss_item_sk,ss_sold_date_sk from store_sales_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_date_dim as (
/*ydb.pushdown('->')*/
select d_date_sk, d_month_seq  from date_dim_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_catalog_sales as (
/*ydb.pushdown('->')*/
select  cs_bill_customer_sk, cs_item_sk,cs_sold_date_sk  from catalog_sales_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
)
SELECT sum(case when ssci.customer_sk is not null and csci.customer_sk is null then 1 else 0 end) as store_only,
       sum(case when ssci.customer_sk is null and csci.customer_sk is not null then 1 else 0 end) as catalog_only,
       sum(case when ssci.customer_sk is not null and csci.customer_sk is not null then 1 else 0 end) as store_and_catalog
FROM (SELECT ss.ss_customer_sk as customer_sk,ss.ss_item_sk as item_sk
    FROM y_store_sales ss
    JOIN y_date_dim d1 ON (ss.ss_sold_date_sk = d1.d_date_sk)
             WHERE d1.d_month_seq >= 1206 and d1.d_month_seq <= 1217
             GROUP BY ss.ss_customer_sk, ss.ss_item_sk) ssci
FULL OUTER JOIN (SELECT cs.cs_bill_customer_sk as customer_sk,cs.cs_item_sk as item_sk
                                   FROM y_catalog_sales cs
                                   JOIN y_date_dim d2 ON (cs.cs_sold_date_sk = d2.d_date_sk)
                                   WHERE d2.d_month_seq >= 1206 and d2.d_month_seq <= 1217
                                   GROUP BY cs.cs_bill_customer_sk, cs.cs_item_sk) csci
ON (ssci.customer_sk=csci.customer_sk and ssci.item_sk = csci.item_sk)
order by store_only, catalog_only, store_and_catalog;
--q93 test----
select  ss_customer_sk
            ,sum(act_sales) sumsales
      from (select ss_item_sk
                  ,ss_ticket_number
                  ,ss_customer_sk
                  ,case when sr_return_quantity is not null then (ss_quantity-sr_return_quantity)*ss_sales_price
                                                            else (ss_quantity*ss_sales_price) end act_sales
            from store_sales_tcpds left outer join store_returns_tcpds on (store_returns_tcpds.sr_item_sk = store_sales_tcpds.ss_item_sk
                                                               and store_returns_tcpds.sr_ticket_number = store_sales_tcpds.ss_ticket_number)
                ,reason_tcpds
            where store_returns_tcpds.sr_reason_sk = reason_tcpds.r_reason_sk
              and r_reason_desc = 'Did not like the warranty') t
      group by ss_customer_sk
      order by sumsales, ss_customer_sk
limit 100;
----------------------------------------------------------------------------------------------------
with y_store_sales as(
/*ydb.pushdown('->')*/
select ss_item_sk,ss_ticket_number,ss_customer_sk,ss_quantity,ss_sales_price from store_sales_tcpydb where   ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_reason as (
/*ydb.pushdown('->')*/
select r_reason_sk,r_reason_desc from reason_tcpydb where  ydbpartion='ydb_default_partion'and  r_reason_desc = 'Did not like the warranty'
/*('<-')pushdown.ydb*/
),
y_store_returns as(
/*ydb.pushdown('->')*/
select sr_return_quantity,sr_item_sk,sr_ticket_number,sr_reason_sk from store_returns_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
)
select  t.customer_sk
            ,sum(act_sales) sumsales
      from (select ss.ss_item_sk
                  ,ss.ss_ticket_number
                  ,ss.ss_customer_sk as  customer_sk
                  ,case when sr.sr_return_quantity is not null then (ss.ss_quantity-sr.sr_return_quantity)*ss.ss_sales_price
                                                            else (ss.ss_quantity*ss.ss_sales_price) end act_sales
            from y_store_sales ss left outer join y_store_returns sr on (sr.sr_item_sk = ss.ss_item_sk
                                                               and sr.sr_ticket_number = ss.ss_ticket_number)
                ,y_reason r
            where sr.sr_reason_sk = r.r_reason_sk
           )t
      group by t.customer_sk
      order by sumsales, t.customer_sk
limit 100;
--q94 test----
SELECT count(distinct ws_order_number) as order_count,
               sum(ws_ext_ship_cost) as total_shipping_cost,
               sum(ws_net_profit) as total_net_profit
FROM web_sales_tcpds ws1
JOIN customer_address_tcpds ca ON (ws1.ws_ship_addr_sk = ca.ca_address_sk)
JOIN web_site_tcpds s ON (ws1.ws_web_site_sk = s.web_site_sk)
JOIN date_dim_tcpds d ON (ws1.ws_ship_date_sk = d.d_date_sk)
LEFT SEMI JOIN (SELECT ws2.ws_order_number as ws_order_number
                               FROM web_sales_tcpds ws2 JOIN web_sales_tcpds ws3
                               ON (ws2.ws_order_number = ws3.ws_order_number)
                               WHERE ws2.ws_warehouse_sk <> ws3.ws_warehouse_sk
            ) ws_wh1
ON (ws1.ws_order_number = ws_wh1.ws_order_number)
LEFT OUTER JOIN web_returns_tcpds wr1 ON (ws1.ws_order_number = wr1.wr_order_number)
WHERE d.d_date between '1999-05-01' and '1999-07-01' and
               ca.ca_state = 'TX' and
               s.web_company_name = 'pri' and
               wr1.wr_order_number is null
order by order_count, total_shipping_cost, total_net_profit
limit 100;
----------------------------------------------------------------------------------------------------
with y_web_sales as(
/*ydb.pushdown('->')*/
select ws_ship_addr_sk,ws_web_site_sk,ws_ship_date_sk,ws_order_number,ws_ext_ship_cost,ws_net_profit,ws_warehouse_sk from web_sales_tcpydb where   ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_customer_address as(
/*ydb.pushdown('->')*/
select ca_address_sk,ca_state from customer_address_tcpydb where   ydbpartion='ydb_default_partion'and ca_state = 'TX'
/*('<-')pushdown.ydb*/
),
y_web_site as(
/*ydb.pushdown('->')*/
select web_site_sk,web_company_name from web_site_tcpydb where   ydbpartion='ydb_default_partion'and web_company_name = 'pri'
/*('<-')pushdown.ydb*/
),
y_date_dim as (
/*ydb.pushdown('->')*/
select d_date_sk from date_dim_tcpydb  where   ydbpartion='ydb_default_partion'and d_date like '([1999-05-01 TO 1999-07-01] )'
/*('<-')pushdown.ydb*/
),
y_web_returns as (
/*ydb.pushdown('->')*/
select wr_order_number from web_returns_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
)
SELECT count(distinct ws.ws_order_number) as order_count,
               sum(ws.ws_ext_ship_cost) as total_shipping_cost,
               sum(ws.ws_net_profit) as total_net_profit
FROM y_web_sales ws
JOIN y_customer_address ca ON (ws.ws_ship_addr_sk = ca.ca_address_sk)
JOIN y_web_site s ON (ws.ws_web_site_sk = s.web_site_sk)
JOIN y_date_dim  d ON (ws.ws_ship_date_sk = d.d_date_sk)
LEFT SEMI JOIN (SELECT ws2.ws_order_number as ws_order_number
                               FROM y_web_sales ws2 JOIN y_web_sales ws3
                               ON (ws2.ws_order_number = ws3.ws_order_number)
                               WHERE ws2.ws_warehouse_sk <> ws3.ws_warehouse_sk
            ) ws_wh1
ON (ws.ws_order_number = ws_wh1.ws_order_number)
LEFT OUTER JOIN y_web_returns wr1 ON (ws.ws_order_number = wr1.wr_order_number)
where wr1.wr_order_number is null
order by order_count, total_shipping_cost, total_net_profit
limit 100;
--q95 test----
SELECT count(distinct ws1.ws_order_number) as order_count,
               sum(ws1.ws_ext_ship_cost) as total_shipping_cost,
               sum(ws1.ws_net_profit) as total_net_profit
FROM web_sales_tcpds ws1
JOIN customer_address_tcpds ca ON (ws1.ws_ship_addr_sk = ca.ca_address_sk)
JOIN web_site_tcpds s ON (ws1.ws_web_site_sk = s.web_site_sk)
JOIN date_dim_tcpds d ON (ws1.ws_ship_date_sk = d.d_date_sk)
LEFT SEMI JOIN (SELECT ws2.ws_order_number as ws_order_number
                               FROM web_sales_tcpds ws2 JOIN web_sales_tcpds ws3
                               ON (ws2.ws_order_number = ws3.ws_order_number)
                               WHERE ws2.ws_warehouse_sk <> ws3.ws_warehouse_sk
            ) ws_wh1
ON (ws1.ws_order_number = ws_wh1.ws_order_number)
LEFT SEMI JOIN (SELECT wr_order_number
                               FROM web_returns_tcpds wr
                               JOIN (SELECT ws4.ws_order_number as ws_order_number
                                          FROM web_sales_tcpds ws4 JOIN web_sales_tcpds ws5
                                          ON (ws4.ws_order_number = ws5.ws_order_number)
                                         WHERE ws4.ws_warehouse_sk <> ws5.ws_warehouse_sk
                ) ws_wh2
                               ON (wr.wr_order_number = ws_wh2.ws_order_number)) tmp1
ON (ws1.ws_order_number = tmp1.wr_order_number)
WHERE d.d_date between '2002-05-01' and '2002-06-30' and
               ca.ca_state = 'GA' and
               s.web_company_name = 'pri'
order by order_count, total_shipping_cost, total_net_profit
;
----------------------------------------------------------------------------------------------------
  with y_web_sales as(
/*ydb.pushdown('->')*/
select ws_order_number,ws_ext_ship_cost,ws_net_profit,ws_ship_addr_sk,ws_web_site_sk,ws_ship_date_sk,ws_warehouse_sk from web_sales_tcpydb where   ydbpartion='ydb_default_partion'
  /*('<-')pushdown.ydb*/
),
y_customer_address as (
/*ydb.pushdown('->')*/
select ca_address_sk,  ca_state from customer_address_tcpydb where  ydbpartion='ydb_default_partion'and  ca_state = 'GA'
  /*('<-')pushdown.ydb*/
),
y_web_site as (
/*ydb.pushdown('->')*/
  select  web_site_sk, web_company_name from  web_site_tcpydb where  ydbpartion='ydb_default_partion'and  web_company_name = 'pri'
  /*('<-')pushdown.ydb*/
),
y_date_dim as (
/*ydb.pushdown('->')*/
select d_date_sk,d_date from date_dim_tcpydb where  ydbpartion='ydb_default_partion' and  (d_date like '([ 2002-05-01 TO 2002-06-30] )')
 /*('<-')pushdown.ydb*/
),
y_web_returns as (
/*ydb.pushdown('->')*/
select wr_order_number from web_returns_tcpydb where  ydbpartion='ydb_default_partion'
 /*('<-')pushdown.ydb*/
)
SELECT count(distinct ws.ws_order_number) as order_count,
               sum(ws.ws_ext_ship_cost) as total_shipping_cost,
               sum(ws.ws_net_profit) as total_net_profit
FROM y_web_sales ws
JOIN y_customer_address ca ON (ws.ws_ship_addr_sk = ca.ca_address_sk)
JOIN y_web_site s ON (ws.ws_web_site_sk = s.web_site_sk)
JOIN y_date_dim d ON (ws.ws_ship_date_sk = d.d_date_sk)
LEFT SEMI JOIN (SELECT ws2.ws_order_number as ws_order_number
                               FROM y_web_sales ws2 JOIN y_web_sales ws3
                               ON (ws2.ws_order_number = ws3.ws_order_number)
                               WHERE ws2.ws_warehouse_sk <> ws3.ws_warehouse_sk
            ) ws_wh1
ON (ws.ws_order_number = ws_wh1.ws_order_number)
LEFT SEMI JOIN (SELECT wr_order_number
                               FROM y_web_returns wr
                               JOIN (SELECT ws4.ws_order_number as ws_order_number
                                          FROM y_web_sales ws4 JOIN y_web_sales ws5
                                          ON (ws4.ws_order_number = ws5.ws_order_number)
                                         WHERE ws4.ws_warehouse_sk <> ws5.ws_warehouse_sk
                ) ws_wh2
                               ON (wr.wr_order_number = ws_wh2.ws_order_number)) tmp1
ON (ws.ws_order_number = tmp1.wr_order_number)
order by order_count, total_shipping_cost, total_net_profit
;
--q96 test----
select  count(*) as c
from store_sales_tcpds
    ,household_demographics_tcpds
    ,time_dim_tcpds, store_tcpds
where store_sales_tcpds.ss_sold_time_sk = time_dim_tcpds.t_time_sk
    and store_sales_tcpds.ss_hdemo_sk = household_demographics_tcpds.hd_demo_sk
    and store_sales_tcpds.ss_store_sk = store_tcpds.s_store_sk
    and time_dim_tcpds.t_hour = 8
    and time_dim_tcpds.t_minute >= 30
    and household_demographics_tcpds.hd_dep_count = 5
    and store_tcpds.s_store_name = 'ese'
order by c
limit 100;
----------------------------------------------------------------------------------------------------
with y_store_sales as(
/*ydb.pushdown('->')*/
select ss_sold_time_sk,ss_hdemo_sk,ss_store_sk  from store_sales_tcpydb where  ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
y_household_demographics as(
/*ydb.pushdown('->')*/
select hd_demo_sk,hd_dep_count  from household_demographics_tcpydb where  ydbpartion='ydb_default_partion'and hd_dep_count=5
/*('<-')pushdown.ydb*/
),
y_time_dim as (
/*ydb.pushdown('->')*/
select t_time_sk,t_hour,t_minute from time_dim_tcpydb where  ydbpartion='ydb_default_partion'and t_hour = 8 and t_minute >= 30
/*('<-')pushdown.ydb*/
),
y_store as (
/*ydb.pushdown('->')*/
select s_store_sk,s_store_name  from store_tcpydb where  ydbpartion='ydb_default_partion'and s_store_name = 'ese'
/*('<-')pushdown.ydb*/
)
select count (*) as c
from y_store_sales ss ,y_household_demographics hd,y_time_dim td,y_store s
where ss.ss_sold_time_sk = td.t_time_sk
    and ss.ss_hdemo_sk = hd.hd_demo_sk
    and ss.ss_store_sk = s.s_store_sk
order by c
limit 100;
--q97 test----
select sum(case when ssci.customer_sk is not null and csci.customer_sk is null then 1 else 0 end) store_only
      ,sum(case when ssci.customer_sk is null and csci.customer_sk is not null then 1 else 0 end) catalog_only
      ,sum(case when ssci.customer_sk is not null and csci.customer_sk is not null then 1 else 0 end) store_and_catalog
from 
( select ss_customer_sk customer_sk
      ,ss_item_sk item_sk
from store_sales_tcpds
JOIN date_dim_tcpds ON store_sales_tcpds.ss_sold_date_sk = date_dim_tcpds.d_date_sk
where
  d_month_seq between 1193 and 1193 + 11
group by ss_customer_sk ,ss_item_sk) ssci
full outer join
( select cs_bill_customer_sk customer_sk
      ,cs_item_sk item_sk
from catalog_sales_tcpds
JOIN date_dim_tcpds ON catalog_sales_tcpds.cs_sold_date_sk = date_dim_tcpds.d_date_sk
where
  d_month_seq between 1193 and 1193 + 11
group by cs_bill_customer_sk ,cs_item_sk) csci
on (ssci.customer_sk=csci.customer_sk and ssci.item_sk = csci.item_sk)
order by store_only, catalog_only, store_and_catalog
limit 100;
----------------------------------------------------------------------------------------------------
with y_store_sales as(
/*ydb.pushdown('->')*/
select ss_customer_sk,ss_item_sk,ss_sold_date_sk from store_sales_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/    
    
),
y_date_dim as(
/*ydb.pushdown('->')*/
select d_date_sk from date_dim_tcpydb where   d_month_seq like '([1193 TO 1204] )' and   ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/    
),
y_catalog_sales as(
/*ydb.pushdown('->')*/
select cs_bill_customer_sk,cs_item_sk,cs_sold_date_sk  from catalog_sales_tcpydb where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/
),
tmp1 as(
select s.ss_customer_sk as customer_sk ,s.ss_item_sk as item_sk from y_store_sales s JOIN y_date_dim d 
ON s.ss_sold_date_sk=d.d_date_sk 
group by ss_customer_sk ,ss_item_sk
),
tmp2 as(
select c.cs_bill_customer_sk as customer_sk,c.cs_item_sk as item_sk  from y_catalog_sales c JOIN y_date_dim d
ON c.cs_sold_date_sk = d.d_date_sk 
group by c.cs_bill_customer_sk ,c.cs_item_sk
)
select sum(case when tmp1.customer_sk is not null and tmp2.customer_sk is null then 1 else 0 end) store_only
      ,sum(case when tmp1.customer_sk is null and tmp2.customer_sk is not null then 1 else 0 end) catalog_only
      ,sum(case when tmp1.customer_sk is not null and tmp2.customer_sk is not null then 1 else 0 end) store_and_catalog
from tmp1 full outer join tmp2
on (tmp1.customer_sk=tmp2.customer_sk and tmp1.item_sk = tmp2.item_sk)
order by store_only, catalog_only, store_and_catalog
limit 100;
--q98 test----
select i_item_desc 
      ,i_category 
      ,i_class 
      ,i_current_price
      ,i_item_id
      ,sum(ss_ext_sales_price) as itemrevenue 
      ,sum(ss_ext_sales_price)*100/sum(sum(ss_ext_sales_price)) over
          (partition by i_class) as revenueratio
from    
    store_sales_tcpds
        ,item_tcpds 
        ,date_dim_tcpds
where 
    store_sales_tcpds.ss_item_sk = item_tcpds.i_item_sk 
      and i_category in ('Jewelry', 'Sports', 'Books')
      and store_sales_tcpds.ss_sold_date_sk = date_dim_tcpds.d_date_sk
    and d_date between cast('2001-01-12' as date) 
                and (cast('2001-02-11' as date))
group by 
    i_item_id
        ,i_item_desc 
        ,i_category
        ,i_class
        ,i_current_price
order by 
    i_category
        ,i_class
        ,i_item_id
        ,i_item_desc
        ,revenueratio
      ,i_current_price
      ,itemrevenue
        limit 100;
----------------------------------------------------------------------------------------------------
with y_item as(
/*ydb.pushdown('->')*/
select i_item_desc,i_category,i_class,i_current_price,i_item_id,i_item_sk from item_tcpydb where i_category in ('Jewelry', 'Sports', 'Books') and ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/    
 ),
 y_store_sales as(
/*ydb.pushdown('->')*/
select ss_ext_sales_price,ss_sold_date_sk,ss_item_sk from store_sales_tcpydb  where ydbpartion='ydb_default_partion'
/*('<-')pushdown.ydb*/    
 ),
 y_date_dim as(
 /*ydb.pushdown('->')*/
 select d_date_sk,d_date from date_dim_tcpydb where ydbpartion='ydb_default_partion'
 /*('<-')pushdown.ydb*/    
 )
select i.i_item_desc,i.i_category,i.i_class,i.i_current_price,i.i_item_id,sum(s.ss_ext_sales_price) as itemrevenue ,sum(s.ss_ext_sales_price)*100/sum(sum(s.ss_ext_sales_price)) over(partition by i.i_class) as revenueratio
      from  y_item i , y_store_sales s,  y_date_dim d
where s.ss_item_sk = i.i_item_sk                  
and s.ss_sold_date_sk = d.d_date_sk  and  d.d_date between cast('2001-01-12' as date) 
                and (cast('2001-02-11' as date))
group by 
    i.i_item_id
        ,i.i_item_desc 
        ,i.i_category
        ,i.i_class
        ,i.i_current_price
order by 
    i.i_category
        ,i.i_class
        ,i.i_item_id
        ,i.i_item_desc
        ,revenueratio
      ,i_current_price
      ,itemrevenue
        limit 100;
