
/*ydb.pushdown('->')*/
create table ydb_example_shu(
phonenum haoma,
usernick string,
ydb_sex string,
ydb_province string,
ydb_grade string,
ydb_age string,
ydb_blood string,
ydb_zhiye string,
ydb_earn string,
ydb_prefer string,
ydb_consume string,
ydb_day string,
amtdouble tdouble,
amtlong tlong,
content simpletext
)
/*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/     
    create table blocksort_ydb(
     amtdouble tdouble,
     amtfloat tfloat,
     tradetime tlong,
     amtint tint
    )
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/
create table ydb_example_ads(
 phonenum long,
 usernick string,
 ydb_sex string,
 ydb_province string,
 ydb_grade string,
 ydb_age string,
 ydb_blood string,
 ydb_zhiye string,
 ydb_earn string,
 ydb_prefer string,
 ydb_consume string,
 content simpletext
       
)
/*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/
create table ydb_all_type(
c1_byte tint,c2_byte tint,c1_short tint,c2_short tint,c1_int tint,c2_int tint,c3_int tint,c4_int tint,c1_long tlong,c2_long tlong,c3_long tlong,c4_long tlong,c1_float tfloat,c2_float tfloat,c3_float tfloat,c4_float tfloat,c1_double tdouble,c2_double tdouble,c3_double tdouble,c4_double tdouble,c1_string string,c2_string simpletext,c3_string string,c4_string string
,d1_byte tint,d2_byte tint,d1_short tint,d2_short tint,d1_int tint,d2_int tint,d3_int tint,d4_int tint,d1_long tlong,d2_long tlong,d3_long tlong,d4_long tlong,d1_float tfloat,d2_float tfloat,d3_float tfloat,d4_float tfloat,d1_double tdouble,d2_double tdouble,d3_double tdouble,d4_double tdouble,d1_string string,d2_string simpletext,d3_string string,d4_string string
)
/*('<-')pushdown.ydb*/;

 
 /*ydb.pushdown('->')*/
create table ydb_example_trade(
 tradeid haoma,
 nickname string,
 province string,
 tradetype string,
 tradenum string,
 tradetime string,
 cardnum string,
 amt bigint,
 bank string,
 content simpletext
)
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/
create table vehiclepass(
tollCode long,
vehiclePlate string
)
/*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/
create table lonlattable_test(
lon tdouble,
lat tdouble,
mortonhash geopoint
)
/*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/
create table ydb_example_shu_positon(
phonenum charlike,
phonenum_chepai pchepai,
content wordlike,
content_pyy pyy
)
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/
create table ydb_example_shu_multyvalue(
phonenum haoma,
usernick string,
ydb_sex string,
ydb_province string,
ydb_grade string,
ydb_age string,
ydb_blood string,
ydb_zhiye string,
ydb_earn string,
ydb_prefer string,
ydb_consume string,
ydb_day string,
amtdouble tdouble,
amtlong tlong,
content simpletext,
multyvalue_string mt_syn,
multyvalue_tlong mt_tlyn,
multyvalue_long mt_lyn,
multyvalue_tdouble mt_tdyn,
multyvalue_double mt_dyn
)
/*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/
 create table ydb_oribit(
	CLXXBH String,
	KKBH bigint,
	JKSBBH string,
	JGSJ bigint,
	JGSK bigint,
	XSFX string,
	CDBH string,
	HPHM string,
	HPYS string,
	ZPSL bigint,
	CLSD bigint,
XSZT string,
	CLPP1 string,
CLPP2 string,
CWKC bigint,
CSYS  string,
YSSQ string,
CLLX string,
HPZL string,
CLBJ string,
CRSJ bigint,
SJCZSJ bigint,
LON tdouble,
LAT tdouble
)
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/
create table ydb_example_shu_ik(
phonenum haoma,
usernick string,
ydb_sex string,
ydb_province string,
ydb_grade string,
ydb_age string,
ydb_blood string,
ydb_zhiye string,
ydb_earn string,
ydb_prefer string,
ydb_consume string,
ydb_day string,
amtdouble tdouble,
amtlong tlong,
content textik
)
/*('<-')pushdown.ydb*/;
