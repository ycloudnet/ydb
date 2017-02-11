

/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, ydb_consume order by amt desc,cnt, ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by amt desc,cnt, ydb_prefer, ydb_consume limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, ydb_consume order by amt desc,cnt, ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by amt desc,cnt, ydb_prefer, ydb_consume limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, ydb_consume order by amt desc,cnt, ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by amt desc,cnt, ydb_prefer, ydb_consume limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, ydb_consume order by amt desc,cnt, ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by amt desc,cnt, ydb_prefer, ydb_consume limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, ydb_consume order by amt desc,cnt, ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by amt desc,cnt, ydb_prefer, ydb_consume limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, ydb_consume order by amt desc,cnt, ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by amt desc,cnt, ydb_prefer, ydb_consume limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, yasname order by amt desc,cnt, ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume   order by amt desc,cnt, ydb_prefer,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, yasname order by amt desc,cnt, ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by amt desc,cnt, ydb_prefer,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, yasname order by amt desc,cnt, ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by amt desc,cnt, ydb_prefer,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, yasname order by amt desc,cnt, ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by amt desc,cnt, ydb_prefer,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, yasname order by amt desc,cnt, ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by amt desc,cnt, ydb_prefer,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, yasname order by amt desc,cnt, ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by amt desc,cnt, ydb_prefer,yasname limit 2000 ;





/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, yasname order by cnt, ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by cnt, ydb_prefer,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, yasname order by cnt, ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by cnt, ydb_prefer,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, yasname order by cnt, ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by cnt, ydb_prefer,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, yasname order by cnt, ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by cnt, ydb_prefer,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, yasname order by cnt, ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by cnt, ydb_prefer,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, yasname order by cnt, ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by cnt, ydb_prefer,yasname limit 2000 ;







/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, ydb_consume order by amt, ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by amt, ydb_prefer, ydb_consume limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, ydb_consume order by amt, ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by amt, ydb_prefer, ydb_consume limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, ydb_consume order by amt, ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by amt, ydb_prefer, ydb_consume limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, ydb_consume order by amt, ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by amt, ydb_prefer, ydb_consume limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, ydb_consume order by amt, ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by amt, ydb_prefer, ydb_consume limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, ydb_consume order by amt, ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by amt, ydb_prefer, ydb_consume limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, yasname order by amt, ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by amt, ydb_prefer,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, yasname order by amt, ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by amt, ydb_prefer,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, yasname order by amt, ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by amt, ydb_prefer,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, yasname order by amt, ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by amt, ydb_prefer,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, yasname order by amt, ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by amt, ydb_prefer,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, yasname order by amt, ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by amt, ydb_prefer,yasname limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) as cnt  from ydb_import_txt  group by ydb_prefer, ydb_consume order by cnt, ydb_prefer, ydb_consume limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, yasname order by cnt, ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by cnt, ydb_prefer,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, yasname order by cnt, ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by cnt, ydb_prefer,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, yasname order by cnt, ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by cnt, ydb_prefer,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, yasname order by cnt, ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by cnt, ydb_prefer,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, yasname order by cnt, ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by cnt, ydb_prefer,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, yasname order by cnt, ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) as cnt  from ydb_import_txt  group by ydb_prefer, ydb_consume  order by cnt, ydb_prefer,yasname limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume order by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume order by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume order by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume order by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume order by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume order by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume order by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume order by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume order by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume order by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume order by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume order by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname order by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume  order by ydb_grade,ydb_province,ydb_sex,ydb_blood,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname order by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume  order by ydb_grade,ydb_province,ydb_sex,ydb_blood,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname order by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume  order by ydb_grade,ydb_province,ydb_sex,ydb_blood,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname order by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume  order by ydb_grade,ydb_province,ydb_sex,ydb_blood,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname order by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume  order by ydb_grade,ydb_province,ydb_sex,ydb_blood,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname order by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, ydb_consume  order by ydb_grade,ydb_province,ydb_sex,ydb_blood,yasname limit 2000 ;





/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, ydb_consume order by ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_consume order by ydb_prefer, ydb_consume limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, ydb_consume order by ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_consume order by ydb_prefer, ydb_consume limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, ydb_consume order by ydb_prefer, ydb_consume limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_consume order by ydb_prefer, ydb_consume limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, ydb_consume order by ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_consume order by ydb_prefer, ydb_consume limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, ydb_consume order by ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_consume order by ydb_prefer, ydb_consume limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, ydb_consume order by ydb_prefer, ydb_consume limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_consume order by ydb_prefer, ydb_consume limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, yasname order by ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_consume  order by ydb_prefer,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, yasname order by ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_consume  order by ydb_prefer,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, yasname order by ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_consume  order by ydb_prefer,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, yasname order by ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_consume  order by ydb_prefer,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, yasname order by ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_consume  order by ydb_prefer,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_consume as yasname ,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, yasname order by ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_consume as yasname ,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_consume  order by ydb_prefer,yasname limit 2000 ;





/*ydb.pushdown('->')*/ 
select ydb_day,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, ydb_day order by ydb_prefer, ydb_day limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_day order by ydb_prefer, ydb_day limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_day,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, ydb_day order by ydb_prefer, ydb_day limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_day order by ydb_prefer, ydb_day limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_day,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, ydb_day order by ydb_prefer, ydb_day limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_day order by ydb_prefer, ydb_day limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_day,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, ydb_day order by ydb_prefer, ydb_day limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_day order by ydb_prefer, ydb_day limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_day,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, ydb_day order by ydb_prefer, ydb_day limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_day order by ydb_prefer, ydb_day limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_day,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, ydb_day order by ydb_prefer, ydb_day limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_day order by ydb_prefer, ydb_day limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, yasname order by ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_day  order by ydb_prefer,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, yasname order by ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_day  order by ydb_prefer,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, yasname order by ydb_prefer, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_day  order by ydb_prefer,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_prefer, yasname order by ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_day  order by ydb_prefer,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_prefer, yasname order by ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_day  order by ydb_prefer,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,ydb_prefer,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_prefer, yasname order by ydb_prefer, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,ydb_prefer,count(*) from ydb_import_txt  group by ydb_prefer, ydb_day  order by ydb_prefer,yasname limit 2000 ;






/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, amtlong order by amt desc,cnt, usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by amt desc,cnt, usernick, amtlong limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, amtlong order by amt desc,cnt, usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by amt desc,cnt, usernick, amtlong limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, amtlong order by amt desc,cnt, usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by amt desc,cnt, usernick, amtlong limit 200 ;





/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, amtlong order by amt desc,cnt, usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by amt desc,cnt, usernick, amtlong limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, amtlong order by amt desc,cnt, usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by amt desc,cnt, usernick, amtlong limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, amtlong order by amt desc,cnt, usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by amt desc,cnt, usernick, amtlong limit 2000 ;






/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, yasname order by amt desc,cnt, usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by amt desc,cnt, usernick,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, yasname order by amt desc,cnt, usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by amt desc,cnt, usernick,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, yasname order by amt desc,cnt, usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by amt desc,cnt, usernick,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, yasname order by amt desc,cnt, usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by amt desc,cnt, usernick,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, yasname order by amt desc,cnt, usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by amt desc,cnt, usernick,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, yasname order by amt desc,cnt, usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by amt desc,cnt, usernick,yasname limit 2000 ;





/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, amtlong order by cnt, usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by cnt, usernick, amtlong limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, amtlong order by cnt, usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by cnt, usernick, amtlong limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, amtlong order by cnt, usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by cnt, usernick, amtlong limit 200 ;





/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, amtlong order by cnt, usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by cnt, usernick, amtlong limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, amtlong order by cnt, usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by cnt, usernick, amtlong limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, amtlong order by cnt, usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by cnt, usernick, amtlong limit 2000 ;






/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, yasname order by cnt, usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by cnt, usernick,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, yasname order by cnt, usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by cnt, usernick,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, yasname order by cnt, usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by cnt, usernick,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, yasname order by cnt, usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by cnt, usernick,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, yasname order by cnt, usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by cnt, usernick,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, yasname order by cnt, usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by cnt, usernick,yasname limit 2000 ;







/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, amtlong order by amt, usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by amt, usernick, amtlong limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, amtlong order by amt, usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by amt, usernick, amtlong limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, amtlong order by amt, usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by amt, usernick, amtlong limit 200 ;





/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, amtlong order by amt, usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by amt, usernick, amtlong limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, amtlong order by amt, usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by amt, usernick, amtlong limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, amtlong order by amt, usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong order by amt, usernick, amtlong limit 2000 ;






/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, yasname order by amt, usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by amt, usernick,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, yasname order by amt, usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by amt, usernick,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, yasname order by amt, usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by amt, usernick,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, yasname order by amt, usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by amt, usernick,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, yasname order by amt, usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by amt, usernick,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, yasname order by amt, usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt,sum(amtdouble) as amt  from ydb_import_txt  group by usernick, amtlong  order by amt, usernick,yasname limit 2000 ;






/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, amtlong order by cnt, usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt  from ydb_import_txt  group by usernick, amtlong order by cnt, usernick, amtlong limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, amtlong order by cnt, usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt  from ydb_import_txt  group by usernick, amtlong order by cnt, usernick, amtlong limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, amtlong order by cnt, usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt  from ydb_import_txt  group by usernick, amtlong order by cnt, usernick, amtlong limit 200 ;





/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, amtlong order by cnt, usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt  from ydb_import_txt  group by usernick, amtlong order by cnt, usernick, amtlong limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, amtlong order by cnt, usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt  from ydb_import_txt  group by usernick, amtlong order by cnt, usernick, amtlong limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, amtlong order by cnt, usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) as cnt  from ydb_import_txt  group by usernick, amtlong order by cnt, usernick, amtlong limit 2000 ;






/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, yasname order by cnt, usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt  from ydb_import_txt  group by usernick, amtlong  order by cnt, usernick,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, yasname order by cnt, usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt  from ydb_import_txt  group by usernick, amtlong  order by cnt, usernick,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, yasname order by cnt, usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt  from ydb_import_txt  group by usernick, amtlong  order by cnt, usernick,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, yasname order by cnt, usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt  from ydb_import_txt  group by usernick, amtlong  order by cnt, usernick,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, yasname order by cnt, usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt  from ydb_import_txt  group by usernick, amtlong  order by cnt, usernick,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) as cnt  from ydb_example_shu where ydbpartion='3000w'  group by usernick, yasname order by cnt, usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) as cnt  from ydb_import_txt  group by usernick, amtlong  order by cnt, usernick,yasname limit 2000 ;






/*ydb.pushdown('->')*/ 
select amtlong,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong order by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong order by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong order by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong order by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong order by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong order by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong limit 200 ;





/*ydb.pushdown('->')*/ 
select amtlong,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong order by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong order by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong order by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong order by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong order by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong order by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong limit 2000 ;






/*ydb.pushdown('->')*/ 
select amtlong as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname order by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong  order by ydb_grade,ydb_province,ydb_sex,ydb_blood,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname order by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong  order by ydb_grade,ydb_province,ydb_sex,ydb_blood,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname order by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong  order by ydb_grade,ydb_province,ydb_sex,ydb_blood,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select amtlong as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname order by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong  order by ydb_grade,ydb_province,ydb_sex,ydb_blood,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname order by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong  order by ydb_grade,ydb_province,ydb_sex,ydb_blood,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname order by ydb_grade,ydb_province,ydb_sex,ydb_blood, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,ydb_grade,ydb_province,ydb_sex,ydb_blood,count(*) from ydb_import_txt  group by ydb_grade,ydb_province,ydb_sex,ydb_blood, amtlong  order by ydb_grade,ydb_province,ydb_sex,ydb_blood,yasname limit 2000 ;





/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, amtlong order by usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) from ydb_import_txt  group by usernick, amtlong order by usernick, amtlong limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, amtlong order by usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) from ydb_import_txt  group by usernick, amtlong order by usernick, amtlong limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) from ydb_example_shu where ydbpartion='3000w'  group by usernick, amtlong order by usernick, amtlong limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) from ydb_import_txt  group by usernick, amtlong order by usernick, amtlong limit 200 ;





/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, amtlong order by usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) from ydb_import_txt  group by usernick, amtlong order by usernick, amtlong limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, amtlong order by usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) from ydb_import_txt  group by usernick, amtlong order by usernick, amtlong limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong,usernick,count(*) from ydb_example_shu where ydbpartion='3000w'  group by usernick, amtlong order by usernick, amtlong limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong,usernick,count(*) from ydb_import_txt  group by usernick, amtlong order by usernick, amtlong limit 2000 ;






/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, yasname order by usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) from ydb_import_txt  group by usernick, amtlong  order by usernick,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, yasname order by usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) from ydb_import_txt  group by usernick, amtlong  order by usernick,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) from ydb_example_shu where ydbpartion='3000w'  group by usernick, yasname order by usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) from ydb_import_txt  group by usernick, amtlong  order by usernick,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, yasname order by usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) from ydb_import_txt  group by usernick, amtlong  order by usernick,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, yasname order by usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) from ydb_import_txt  group by usernick, amtlong  order by usernick,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select amtlong as yasname ,usernick,count(*) from ydb_example_shu where ydbpartion='3000w'  group by usernick, yasname order by usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select amtlong as yasname ,usernick,count(*) from ydb_import_txt  group by usernick, amtlong  order by usernick,yasname limit 2000 ;





/*ydb.pushdown('->')*/ 
select ydb_day,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, ydb_day order by usernick, ydb_day limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day,usernick,count(*) from ydb_import_txt  group by usernick, ydb_day order by usernick, ydb_day limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_day,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, ydb_day order by usernick, ydb_day limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day,usernick,count(*) from ydb_import_txt  group by usernick, ydb_day order by usernick, ydb_day limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_day,usernick,count(*) from ydb_example_shu where ydbpartion='3000w'  group by usernick, ydb_day order by usernick, ydb_day limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day,usernick,count(*) from ydb_import_txt  group by usernick, ydb_day order by usernick, ydb_day limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_day,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, ydb_day order by usernick, ydb_day limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day,usernick,count(*) from ydb_import_txt  group by usernick, ydb_day order by usernick, ydb_day limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_day,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, ydb_day order by usernick, ydb_day limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day,usernick,count(*) from ydb_import_txt  group by usernick, ydb_day order by usernick, ydb_day limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_day,usernick,count(*) from ydb_example_shu where ydbpartion='3000w'  group by usernick, ydb_day order by usernick, ydb_day limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day,usernick,count(*) from ydb_import_txt  group by usernick, ydb_day order by usernick, ydb_day limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, yasname order by usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,usernick,count(*) from ydb_import_txt  group by usernick, ydb_day  order by usernick,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, yasname order by usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,usernick,count(*) from ydb_import_txt  group by usernick, ydb_day  order by usernick,yasname limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,usernick,count(*) from ydb_example_shu where ydbpartion='3000w'  group by usernick, yasname order by usernick, yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,usernick,count(*) from ydb_import_txt  group by usernick, ydb_day  order by usernick,yasname limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick, yasname order by usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,usernick,count(*) from ydb_import_txt  group by usernick, ydb_day  order by usernick,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick, yasname order by usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,usernick,count(*) from ydb_import_txt  group by usernick, ydb_day  order by usernick,yasname limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,usernick,count(*) from ydb_example_shu where ydbpartion='3000w'  group by usernick, yasname order by usernick, yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,usernick,count(*) from ydb_import_txt  group by usernick, ydb_day  order by usernick,yasname limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_day,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_day order by ydb_day limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day,count(*) from ydb_import_txt  group by ydb_day order by ydb_day limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_day,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_day order by ydb_day limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day,count(*) from ydb_import_txt  group by ydb_day order by ydb_day limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_day,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_day order by ydb_day limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day,count(*) from ydb_import_txt  group by ydb_day order by ydb_day limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_day,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_day order by ydb_day limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day,count(*) from ydb_import_txt  group by ydb_day order by ydb_day limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_day,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_day order by ydb_day limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day,count(*) from ydb_import_txt  group by ydb_day order by ydb_day limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_day,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_day order by ydb_day limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day,count(*) from ydb_import_txt  group by ydb_day order by ydb_day limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by yasname order by yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,count(*) from ydb_import_txt  group by ydb_day order by ydb_day limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by yasname order by yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,count(*) from ydb_import_txt  group by ydb_day order by ydb_day limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,count(*) from ydb_example_shu where ydbpartion='3000w'  group by yasname order by yasname limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,count(*) from ydb_import_txt  group by ydb_day order by ydb_day limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by yasname order by yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,count(*) from ydb_import_txt  group by ydb_day order by ydb_day limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by yasname order by yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,count(*) from ydb_import_txt  group by ydb_day order by ydb_day limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_day as yasname ,count(*) from ydb_example_shu where ydbpartion='3000w'  group by yasname order by yasname limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_day as yasname ,count(*) from ydb_import_txt  group by ydb_day order by ydb_day limit 2000 ;






/*ydb.pushdown('->')*/ 
select usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick order by usernick limit 200 
/*('<-')pushdown.ydb*/ ;
select usernick,count(*) from ydb_import_txt  group by usernick order by usernick limit 200 ;


/*ydb.pushdown('->')*/ 
select usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick order by usernick limit 200 
/*('<-')pushdown.ydb*/ ;
select usernick,count(*) from ydb_import_txt  group by usernick order by usernick limit 200 ;


/*ydb.pushdown('->')*/ 
select usernick,count(*) from ydb_example_shu where ydbpartion='3000w'  group by usernick order by usernick limit 200 
/*('<-')pushdown.ydb*/ ;
select usernick,count(*) from ydb_import_txt  group by usernick order by usernick limit 200 ;





/*ydb.pushdown('->')*/ 
select usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by usernick order by usernick limit 2000 
/*('<-')pushdown.ydb*/ ;
select usernick,count(*) from ydb_import_txt  group by usernick order by usernick limit 2000 ;


/*ydb.pushdown('->')*/ 
select usernick,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by usernick order by usernick limit 2000 
/*('<-')pushdown.ydb*/ ;
select usernick,count(*) from ydb_import_txt  group by usernick order by usernick limit 2000 ;


/*ydb.pushdown('->')*/ 
select usernick,count(*) from ydb_example_shu where ydbpartion='3000w'  group by usernick order by usernick limit 2000 
/*('<-')pushdown.ydb*/ ;
select usernick,count(*) from ydb_import_txt  group by usernick order by usernick limit 2000 ;





/*ydb.pushdown('->')*/ 
select ydb_sex,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_sex order by ydb_sex limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_sex,count(*) from ydb_import_txt  group by ydb_sex order by ydb_sex limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_sex,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_sex order by ydb_sex limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_sex,count(*) from ydb_import_txt  group by ydb_sex order by ydb_sex limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_sex,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_sex order by ydb_sex limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_sex,count(*) from ydb_import_txt  group by ydb_sex order by ydb_sex limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_sex,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ydb_sex order by ydb_sex limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_sex,count(*) from ydb_import_txt  group by ydb_sex order by ydb_sex limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_sex,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ydb_sex order by ydb_sex limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_sex,count(*) from ydb_import_txt  group by ydb_sex order by ydb_sex limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_sex,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ydb_sex order by ydb_sex limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_sex,count(*) from ydb_import_txt  group by ydb_sex order by ydb_sex limit 2000 ;






/*ydb.pushdown('->')*/ 
select ydb_sex as ysex ,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ysex order by ysex limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_sex as ysex ,count(*) from ydb_import_txt  group by ydb_sex order by ydb_sex limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_sex as ysex ,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ysex order by ysex limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_sex as ysex ,count(*) from ydb_import_txt  group by ydb_sex order by ydb_sex limit 200 ;


/*ydb.pushdown('->')*/ 
select ydb_sex as ysex ,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ysex order by ysex limit 200 
/*('<-')pushdown.ydb*/ ;
select ydb_sex as ysex ,count(*) from ydb_import_txt  group by ydb_sex order by ydb_sex limit 200 ;





/*ydb.pushdown('->')*/ 
select ydb_sex as ysex ,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by ysex order by ysex limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_sex as ysex ,count(*) from ydb_import_txt  group by ydb_sex order by ydb_sex limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_sex as ysex ,count(*) from ydb_example_shu where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by ysex order by ysex limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_sex as ysex ,count(*) from ydb_import_txt  group by ydb_sex order by ydb_sex limit 2000 ;


/*ydb.pushdown('->')*/ 
select ydb_sex as ysex ,count(*) from ydb_example_shu where ydbpartion='3000w'  group by ysex order by ysex limit 2000 
/*('<-')pushdown.ydb*/ ;
select ydb_sex as ysex ,count(*) from ydb_import_txt  group by ydb_sex order by ydb_sex limit 2000 ;






/*ydb.pushdown('->')*/ select tollCode,vehiclePlate from vehiclepass where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' order by tollCode,vehiclePlate limit 10 /*('<-')pushdown.ydb*/ ;
/*ydb.pushdown('->')*/ select tollCode,vehiclePlate from vehiclepass where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' order by tollCode,vehiclePlate limit 10 /*('<-')pushdown.ydb*/ ;


/*ydb.pushdown('->')*/ select * from vehiclepass where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' order by tollCode,vehiclePlate limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/ select * from vehiclepass where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' order by tollCode,vehiclePlate limit 10 /*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' /*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' order by usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' order by usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong limit 10 /*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' order by amtdouble desc,amtlong,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' order by amtdouble desc,amtlong,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day limit 10 /*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/select usernick as nick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' order by nick limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select usernick as nick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' order by nick  limit 10 /*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/select usernick as nick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' order by nick limit 10 /*('<-')pushdown.ydb*/;
select usernick as nick from ydb_example_shu where content like '%王老吉%' order by nick limit 10 ;
/*ydb.pushdown('->')*/select usernick as nick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' order by nick  limit 10 /*('<-')pushdown.ydb*/;
select usernick as nick from ydb_example_shu where content like '%王老吉%' order by nick limit 10 ;

/*ydb.pushdown('->')*/select usernick  from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' order by usernick limit 10 /*('<-')pushdown.ydb*/;
select usernick  from ydb_example_shu where content like '%王老吉%' order by usernick limit 10 ;
/*ydb.pushdown('->')*/select usernick  from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' order by usernick  limit 10 /*('<-')pushdown.ydb*/;
select usernick  from ydb_example_shu where content like '%王老吉%' order by usernick limit 10 ;



/*ydb.pushdown('->')*/select phonenum as nick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' order by nick limit 10 /*('<-')pushdown.ydb*/;
select phonenum as nick from ydb_example_shu where content like '%王老吉%' order by nick limit 10 ;
/*ydb.pushdown('->')*/select phonenum as nick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' order by nick  limit 10 /*('<-')pushdown.ydb*/;
select phonenum as nick from ydb_example_shu where content like '%王老吉%' order by nick limit 10 ;

/*ydb.pushdown('->')*/select phonenum  from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' order by phonenum limit 10 /*('<-')pushdown.ydb*/;
select phonenum  from ydb_example_shu where content like '%王老吉%' order by phonenum limit 10 ;
/*ydb.pushdown('->')*/select phonenum  from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' order by phonenum  limit 10 /*('<-')pushdown.ydb*/;
select phonenum  from ydb_example_shu where content like '%王老吉%' order by phonenum limit 10 ;


 
/*ydb.pushdown('->')*/select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' group by ydb_sex order by ydb_sex limit 10 /*('<-')pushdown.ydb*/;
 /*ydb.pushdown('->')*/select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' group by ydb_sex order by ydb_sex limit 10 /*('<-')pushdown.ydb*/;

 
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' group by ydb_sex,ydb_province order by cnt desc,ydb_sex,ydb_province limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' group by ydb_sex,ydb_province order by cnt desc,ydb_sex,ydb_province limit 10 /*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' group by ydb_sex,ydb_province order by count(*) desc,ydb_sex,ydb_province limit 10 /*('<-')pushdown.ydb*/; 
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' group by ydb_sex,ydb_province order by count(*) desc,ydb_sex,ydb_province limit 10 /*('<-')pushdown.ydb*/;













select usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex='empty'
/*('<-')pushdown.ydb*/
) tmp order by tmp.usernick,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where tmp.ydb_sex='' order by tmp.usernick,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;




select usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex<>'empty'
/*('<-')pushdown.ydb*/
) tmp order by tmp.usernick,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where (tmp.ydb_sex<>'' or tmp.ydb_sex is null) order by tmp.usernick,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;



select usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex='null'
/*('<-')pushdown.ydb*/
) tmp order by tmp.usernick,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where ( tmp.ydb_sex is null) order by tmp.usernick,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;


select usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex<>'null'
/*('<-')pushdown.ydb*/
) tmp order by tmp.usernick,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where ( tmp.ydb_sex is not null) order by tmp.usernick,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,usernick,amtlong,amtdouble from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,usernick,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮') order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;

select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮') order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex='女' limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女'  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女'  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女'  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,usernick,amtlong,amtdouble from ydb_import_txt where ydb_sex='女' order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,usernick,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;

select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_import_txt where ydb_sex='女' order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;





select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女' /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex<>'女' limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女' /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女'  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女'  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女'  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,usernick,amtlong,amtdouble from ydb_import_txt where ydb_sex<>'女' order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,usernick,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女' order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;

select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_import_txt where ydb_sex<>'女' order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女' order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select ydb_sex,usernick,amtlong,amtdouble from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,usernick,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;

select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,usernick,amtlong,amtdouble from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,usernick,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;

select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;





select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000'))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000'))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000'))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select ydb_sex,usernick,amtlong,amtdouble from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,usernick,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;

select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东' /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东' /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东'  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东'  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东'  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,usernick,amtlong,amtdouble from ydb_import_txt where ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,usernick,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;

select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_import_txt where ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,usernick,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,usernick,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;


select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,usernick,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,usernick,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;


select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;






select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,usernick,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,usernick,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;


select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;





select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,usernick,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,usernick,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;


select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;







select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,usernick,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,usernick,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;

select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10;
/*ydb.pushdown('->')*/ select usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,usernick limit 10 /*('<-')pushdown.ydb*/;
























/*ydb.pushdown('->')*/
select multyvalue_long,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ((multyvalue_long>='70' and multyvalue_long<='80'))  group by multyvalue_long order by cnt desc,multyvalue_long
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_long,count(*) as cnt from (
    select explode(split(tmp.multyvalue_long,' ')) as multyvalue_long from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w'
    and ( (multyvalue_long>='70' and multyvalue_long<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_long order by cnt  desc,multyvalue_long limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tlong,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ( (multyvalue_tlong>='70' and multyvalue_tlong<='80'))  group by multyvalue_tlong order by cnt  desc,multyvalue_tlong
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tlong,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tlong,' ')) as multyvalue_tlong from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w'
    and ( (multyvalue_tlong>='70' and multyvalue_tlong<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tlong order by cnt  desc,multyvalue_tlong limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tdouble,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ( (multyvalue_tdouble>='70' and multyvalue_tdouble<='80'))  group by multyvalue_tdouble order by cnt  desc,multyvalue_tdouble
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tdouble,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tdouble,' ')) as multyvalue_tdouble from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w'
    and ( (multyvalue_tdouble>='70' and multyvalue_tdouble<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tdouble order by cnt  desc,multyvalue_tdouble limit 100;



/*ydb.pushdown('->')*/
select multyvalue_string,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ( (multyvalue_string>='70' and multyvalue_string<='80'))   group by multyvalue_string order by cnt  desc,multyvalue_string
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_string,count(*) as cnt from (
    select explode(split(tmp.multyvalue_string,' ')) as multyvalue_string from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' 
    and 
    ( (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_string order by cnt  desc,multyvalue_string limit 100;











/*ydb.pushdown('->')*/
select multyvalue_long,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))  group by multyvalue_long order by cnt,multyvalue_long
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_long,count(*) as cnt from (
    select explode(split(tmp.multyvalue_long,' ')) as multyvalue_long from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w'
    and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_long order by cnt,multyvalue_long limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tlong,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))  group by multyvalue_tlong order by cnt,multyvalue_tlong
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tlong,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tlong,' ')) as multyvalue_tlong from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w'
    and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tlong order by cnt,multyvalue_tlong limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tdouble,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))  group by multyvalue_tdouble order by cnt,multyvalue_tdouble
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tdouble,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tdouble,' ')) as multyvalue_tdouble from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w'
    and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tdouble order by cnt,multyvalue_tdouble limit 100;



/*ydb.pushdown('->')*/
select multyvalue_string,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))   group by multyvalue_string order by cnt,multyvalue_string
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_string,count(*) as cnt from (
    select explode(split(tmp.multyvalue_string,' ')) as multyvalue_string from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' 
    and 
    ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_string order by cnt,multyvalue_string limit 100;










/*ydb.pushdown('->')*/
select multyvalue_long,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w'  group by multyvalue_long order by cnt,multyvalue_long
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_long,count(*) as cnt from (
    select explode(split(tmp.multyvalue_long,' ')) as multyvalue_long from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w'
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_long order by cnt,multyvalue_long limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tlong,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w'  group by multyvalue_tlong order by cnt,multyvalue_tlong
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tlong,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tlong,' ')) as multyvalue_tlong from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w'
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tlong order by cnt,multyvalue_tlong limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tdouble,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w'  group by multyvalue_tdouble order by cnt,multyvalue_tdouble
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tdouble,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tdouble,' ')) as multyvalue_tdouble from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w'
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tdouble order by cnt,multyvalue_tdouble limit 100;



/*ydb.pushdown('->')*/
select multyvalue_string,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w'  group by multyvalue_string order by cnt,multyvalue_string
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_string,count(*) as cnt from (
    select explode(split(tmp.multyvalue_string,' ')) as multyvalue_string from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w'
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_string order by cnt,multyvalue_string limit 100;







select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w'  and ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=10000'
/*('<-')pushdown.ydb*/
)tmp  order by distance limit 10 ;

select * from (
select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w' 
/*('<-')pushdown.ydb*/
)tmp  

) tmp2 where tmp2.distance <=10000 order by distance
 limit 10 ;
 
 
 
 
 
select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w'  and 
(
ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=10000' 
   or (ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=50000' and lon <=1000 )
   or (ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=50000' and lat <=1000 )

)
/*('<-')pushdown.ydb*/
)tmp  order by distance limit 100 ;

select * from (
select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w' 
/*('<-')pushdown.ydb*/
)tmp  

) tmp2 where (tmp2.distance <=10000 or (tmp2.distance <=50000 and lon<=1000)or (tmp2.distance <=50000 and lat<=1000)) order by distance
 limit 100 ;


 


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@可口*可乐'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%可口%可乐%' order by phonenum desc,content limit 100
;


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@可口可乐'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%可口可乐%' order by phonenum desc,content limit 100
;





select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@600ml*可口*可乐'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%600ml%可口%可乐%' order by phonenum desc,content limit 100
;


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@600ml可口可乐'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%600ml可口可乐%' order by phonenum desc,content limit 100
;



select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@益达木糖醇薄荷饼装40粒'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%益达木糖醇薄荷饼装40粒%' order by phonenum desc,content limit 100
;


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@益达木糖醇*薄荷饼装40粒'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%益达木糖醇%薄荷饼装40粒%' order by phonenum desc,content limit 100
;





select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@益达木糖醇*薄荷饼装*40粒'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%益达木糖醇%薄荷饼装%40粒%' order by phonenum desc,content limit 100
;


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@益*糖醇*荷饼装*40粒'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%益%糖醇%荷饼装%40粒%' order by phonenum desc,content limit 100
;





select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and (content='Ylike@可口可乐' or content='Ylike@益*糖醇*荷饼装*40粒')
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where (tmp.content like '%可口可乐%' or tmp.content like '%益%糖醇%荷饼装%40粒%') order by phonenum desc,content limit 100
;



select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and ((content='Ylike@可口可乐' and phonenum='Ylike@134' ) or (content='Ylike@益*糖醇*荷饼装*40粒'  and phonenum='Ylike@1888' ))
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where (tmp.content like  '%可口可乐%' and tmp.phonenum like '%134%' ) or (tmp.content like '%益%糖醇%荷饼装%40粒%'  and tmp.phonenum like '%1888%' ) order by phonenum desc,content limit 100
;




select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and phonenum='Ylike@1888'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where tmp.phonenum like '%1888%' order by phonenum desc,content limit 100
;




select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and phonenum='Ylike@188*456'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where tmp.phonenum like '%188%456%' order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and phonenum='Ylike@188*45*6'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  
/*('<-')pushdown.ydb*/
) tmp where tmp.phonenum like '%188%45%6%' order by phonenum desc,content limit 100
;




select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex='empty'
/*('<-')pushdown.ydb*/
) tmp order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where tmp.ydb_sex='' order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;




select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex<>'empty'
/*('<-')pushdown.ydb*/
) tmp order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where (tmp.ydb_sex<>'' or tmp.ydb_sex is null) order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;



select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex='null'
/*('<-')pushdown.ydb*/
) tmp order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where ( tmp.ydb_sex is null) order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;


select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex<>'null'
/*('<-')pushdown.ydb*/
) tmp order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where ( tmp.ydb_sex is not null) order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and (content='王老吉' or content='TSUBAKI丝蓓绮') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex='女' limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女'  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女'  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女'  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_sex='女' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_sex='女' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;





select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女' /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex<>'女' limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女' /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女'  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女'  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女'  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_sex<>'女' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_sex<>'女' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydb_sex<>'女' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;





select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000'))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000'))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000'))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东' /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东' /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东'  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东'  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东'  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;






select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;





select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;







select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;








select count(*) from ydb_import_txt limit 10;
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;



select count(*) from ydb_import_txt limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;


select sum(cast(r[0] as bigint)) as sumamtdouble from 
    ydb where YSQL('from','select sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;
select sum(amtdouble) from ydb_import_txt limit 10;


/*ydb.pushdown('->')*/ select sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;
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
        ydb where YSQL('from','select count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w"  ','segment')

)tmp
limit 10;

select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_import_txt limit 10;



/*ydb.pushdown('->')*/ select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;
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
        ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = "3000w"  ','segment')
)tmp
 limit 10;

select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt limit 10;
  



/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;
select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt limit 10;



select 
    r[0] as ydb_sex,
    sum(cast(r[1] as bigint)) as cnt,
    sum(cast(r[2] as bigint)) as cntamt,
    sum(cast(r[3] as double)) as sumamt
from 
    ydb where YSQL('from','select ydb_sex,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" group by ydb_sex  ','segment') 
group by r[0]  order by cnt desc 
limit 10;

select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;




/*ydb.pushdown('->')*/ select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' group by ydb_sex order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;




select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]  order by cnt desc 
limit 10;

select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;



/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' group by ydb_sex,ydb_province order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;




select ydb_sex, phonenum,amtlong,amtdouble from 
(
    select 
        r[0] as ydb_sex,
        r[1] as phonenum,
        cast(r[2] as bigint) as amtlong,
        cast(r[3] as double) as amtdouble 
    from 
        ydb where YSQL('from','select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion="3000w"  order by amtdouble desc ,amtlong limit 10 ','segment')
)tmp 
order by amtdouble desc ,amtlong ,phonenum 
limit 10;

select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,phonenum limit 10;



/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;
select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,phonenum limit 10;


































/*ydb.pushdown('->')*/
select multyvalue_long,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ((multyvalue_long>='70' and multyvalue_long<='80'))  group by multyvalue_long 
order by cnt desc,multyvalue_long
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_long,count(*) as cnt from (
    select explode(split(tmp.multyvalue_long,' ')) as multyvalue_long from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
    and ( (multyvalue_long>='70' and multyvalue_long<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_long order by cnt  desc,multyvalue_long limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tlong,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ( (multyvalue_tlong>='70' and multyvalue_tlong<='80'))  group by multyvalue_tlong order by cnt  desc,multyvalue_tlong
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tlong,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tlong,' ')) as multyvalue_tlong from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
    and ( (multyvalue_tlong>='70' and multyvalue_tlong<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tlong order by cnt  desc,multyvalue_tlong limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tdouble,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ( (multyvalue_tdouble>='70' and multyvalue_tdouble<='80'))  group by multyvalue_tdouble order by cnt  desc,multyvalue_tdouble
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tdouble,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tdouble,' ')) as multyvalue_tdouble from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
    and ( (multyvalue_tdouble>='70' and multyvalue_tdouble<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tdouble order by cnt  desc,multyvalue_tdouble limit 100;



/*ydb.pushdown('->')*/
select multyvalue_string,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ( (multyvalue_string>='70' and multyvalue_string<='80'))   group by multyvalue_string order by cnt  desc,multyvalue_string
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_string,count(*) as cnt from (
    select explode(split(tmp.multyvalue_string,' ')) as multyvalue_string from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' 
    and 
    ( (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_string order by cnt  desc,multyvalue_string limit 100;











/*ydb.pushdown('->')*/
select multyvalue_long,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))  group by multyvalue_long order by cnt,multyvalue_long
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_long,count(*) as cnt from (
    select explode(split(tmp.multyvalue_long,' ')) as multyvalue_long from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
    and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_long order by cnt,multyvalue_long limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tlong,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))  group by multyvalue_tlong order by cnt,multyvalue_tlong
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tlong,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tlong,' ')) as multyvalue_tlong from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
    and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tlong order by cnt,multyvalue_tlong limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tdouble,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))  group by multyvalue_tdouble order by cnt,multyvalue_tdouble
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tdouble,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tdouble,' ')) as multyvalue_tdouble from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
    and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tdouble order by cnt,multyvalue_tdouble limit 100;



/*ydb.pushdown('->')*/
select multyvalue_string,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))   group by multyvalue_string order by cnt,multyvalue_string
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_string,count(*) as cnt from (
    select explode(split(tmp.multyvalue_string,' ')) as multyvalue_string from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' 
    and 
    ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_string order by cnt,multyvalue_string limit 100;










/*ydb.pushdown('->')*/
select multyvalue_long,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by multyvalue_long order by cnt,multyvalue_long
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_long,count(*) as cnt from (
    select explode(split(tmp.multyvalue_long,' ')) as multyvalue_long from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_long order by cnt,multyvalue_long limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tlong,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by multyvalue_tlong order by cnt,multyvalue_tlong
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tlong,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tlong,' ')) as multyvalue_tlong from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tlong order by cnt,multyvalue_tlong limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tdouble,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by multyvalue_tdouble order by cnt,multyvalue_tdouble
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tdouble,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tdouble,' ')) as multyvalue_tdouble from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tdouble order by cnt,multyvalue_tdouble limit 100;



/*ydb.pushdown('->')*/
select multyvalue_string,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  group by multyvalue_string order by cnt,multyvalue_string
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_string,count(*) as cnt from (
    select explode(split(tmp.multyvalue_string,' ')) as multyvalue_string from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_string order by cnt,multyvalue_string limit 100;







select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=10000'
/*('<-')pushdown.ydb*/
)tmp  order by distance limit 10 ;

select * from (
select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' 
/*('<-')pushdown.ydb*/
)tmp  

) tmp2 where tmp2.distance <=10000 order by distance
 limit 10 ;
 
 
 
 
 
select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and 
(
ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=10000' 
   or (ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=50000' and lon <=1000 )
   or (ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=50000' and lat <=1000 )

)
/*('<-')pushdown.ydb*/
)tmp  order by distance limit 100 ;

select * from (
select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' 
/*('<-')pushdown.ydb*/
)tmp  

) tmp2 where (tmp2.distance <=10000 or (tmp2.distance <=50000 and lon<=1000)or (tmp2.distance <=50000 and lat<=1000)) order by distance
 limit 100 ;


 


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and content='Ylike@可口*可乐'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%可口%可乐%' order by phonenum desc,content limit 100
;


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and content='Ylike@可口可乐'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%可口可乐%' order by phonenum desc,content limit 100
;





select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and content='Ylike@600ml*可口*可乐'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%600ml%可口%可乐%' order by phonenum desc,content limit 100
;


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and content='Ylike@600ml可口可乐'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%600ml可口可乐%' order by phonenum desc,content limit 100
;



select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and content='Ylike@益达木糖醇薄荷饼装40粒'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%益达木糖醇薄荷饼装40粒%' order by phonenum desc,content limit 100
;


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and content='Ylike@益达木糖醇*薄荷饼装40粒'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%益达木糖醇%薄荷饼装40粒%' order by phonenum desc,content limit 100
;





select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and content='Ylike@益达木糖醇*薄荷饼装*40粒'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%益达木糖醇%薄荷饼装%40粒%' order by phonenum desc,content limit 100
;


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and content='Ylike@益*糖醇*荷饼装*40粒'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%益%糖醇%荷饼装%40粒%' order by phonenum desc,content limit 100
;





select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and (content='Ylike@可口可乐' or content='Ylike@益*糖醇*荷饼装*40粒')
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where (tmp.content like '%可口可乐%' or tmp.content like '%益%糖醇%荷饼装%40粒%') order by phonenum desc,content limit 100
;



select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and ((content='Ylike@可口可乐' and phonenum='Ylike@134' ) or (content='Ylike@益*糖醇*荷饼装*40粒'  and phonenum='Ylike@1888' ))
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where (tmp.content like  '%可口可乐%' and tmp.phonenum like '%134%' ) or (tmp.content like '%益%糖醇%荷饼装%40粒%'  and tmp.phonenum like '%1888%' ) order by phonenum desc,content limit 100
;




select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and phonenum='Ylike@1888'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.phonenum like '%1888%' order by phonenum desc,content limit 100
;




select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and phonenum='Ylike@188*456'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.phonenum like '%188%456%' order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  and phonenum='Ylike@188*45*6'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.phonenum like '%188%45%6%' order by phonenum desc,content limit 100
;




select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex='empty'
/*('<-')pushdown.ydb*/
) tmp order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where tmp.ydb_sex='' order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;




select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex<>'empty'
/*('<-')pushdown.ydb*/
) tmp order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where (tmp.ydb_sex<>'' or tmp.ydb_sex is null) order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;



select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex='null'
/*('<-')pushdown.ydb*/
) tmp order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where ( tmp.ydb_sex is null) order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;


select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex<>'null'
/*('<-')pushdown.ydb*/
) tmp order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where ( tmp.ydb_sex is not null) order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女' /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex='女' limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女' /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女'  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女'  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女'  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_sex='女' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_sex='女' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;





select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex<>'女' /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex<>'女' limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex<>'女' /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex<>'女'  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex<>'女'  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex<>'女'  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_sex<>'女' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex<>'女' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_sex<>'女' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex<>'女' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_province in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_province in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_province in ('广东','辽宁','香港','黑龙江')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_province in ('广东','辽宁','香港','黑龙江')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_province in ('广东','辽宁','香港','黑龙江')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;





select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000'))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000'))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000'))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女' and ydb_province='广东' /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女' and ydb_province='广东' /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女' and ydb_province='广东'  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女' and ydb_province='广东'  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女' and ydb_province='广东'  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;






select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;





select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;







select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;








select count(*) from ydb_import_txt limit 10;
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;



select count(*) from ydb_import_txt limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' /*('<-')pushdown.ydb*/;


select sum(cast(r[0] as bigint)) as sumamtdouble from 
    ydb where YSQL('from','select sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;
select sum(amtdouble) from ydb_import_txt limit 10;


/*ydb.pushdown('->')*/ select sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' /*('<-')pushdown.ydb*/;
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
        ydb where YSQL('from','select count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w"  ','segment')

)tmp
limit 10;

select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_import_txt limit 10;



/*ydb.pushdown('->')*/ select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' /*('<-')pushdown.ydb*/;
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
        ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = "3000w"  ','segment')
)tmp
 limit 10;

select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt limit 10;
  



/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' /*('<-')pushdown.ydb*/;
select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt limit 10;



select 
    r[0] as ydb_sex,
    sum(cast(r[1] as bigint)) as cnt,
    sum(cast(r[2] as bigint)) as cntamt,
    sum(cast(r[3] as double)) as sumamt
from 
    ydb where YSQL('from','select ydb_sex,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" group by ydb_sex  ','segment') 
group by r[0]  order by cnt desc 
limit 10;

select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;




/*ydb.pushdown('->')*/ select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' group by ydb_sex order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;




select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]  order by cnt desc 
limit 10;

select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;



/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' group by ydb_sex,ydb_province order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;




select ydb_sex, phonenum,amtlong,amtdouble from 
(
    select 
        r[0] as ydb_sex,
        r[1] as phonenum,
        cast(r[2] as bigint) as amtlong,
        cast(r[3] as double) as amtdouble 
    from 
        ydb where YSQL('from','select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion="3000w"  order by amtdouble desc ,amtlong limit 10 ','segment')
)tmp 
order by amtdouble desc ,amtlong ,phonenum 
limit 10;

select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,phonenum limit 10;



/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;
select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,phonenum limit 10;




























/*ydb.pushdown('->')*/
select multyvalue_long,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ((multyvalue_long>='70' and multyvalue_long<='80'))  group by multyvalue_long order by cnt desc,multyvalue_long
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_long,count(*) as cnt from (
    select explode(split(tmp.multyvalue_long,' ')) as multyvalue_long from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
    and ( (multyvalue_long>='70' and multyvalue_long<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_long order by cnt  desc,multyvalue_long limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tlong,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ( (multyvalue_tlong>='70' and multyvalue_tlong<='80'))  group by multyvalue_tlong order by cnt  desc,multyvalue_tlong
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tlong,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tlong,' ')) as multyvalue_tlong from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
    and ( (multyvalue_tlong>='70' and multyvalue_tlong<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tlong order by cnt  desc,multyvalue_tlong limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tdouble,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ( (multyvalue_tdouble>='70' and multyvalue_tdouble<='80'))  group by multyvalue_tdouble order by cnt  desc,multyvalue_tdouble
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tdouble,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tdouble,' ')) as multyvalue_tdouble from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
    and ( (multyvalue_tdouble>='70' and multyvalue_tdouble<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tdouble order by cnt  desc,multyvalue_tdouble limit 100;



/*ydb.pushdown('->')*/
select multyvalue_string,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ( (multyvalue_string>='70' and multyvalue_string<='80'))   group by multyvalue_string order by cnt  desc,multyvalue_string
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_string,count(*) as cnt from (
    select explode(split(tmp.multyvalue_string,' ')) as multyvalue_string from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' 
    and 
    ( (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_string order by cnt  desc,multyvalue_string limit 100;











/*ydb.pushdown('->')*/
select multyvalue_long,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))  group by multyvalue_long order by cnt,multyvalue_long
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_long,count(*) as cnt from (
    select explode(split(tmp.multyvalue_long,' ')) as multyvalue_long from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
    and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_long order by cnt,multyvalue_long limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tlong,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))  group by multyvalue_tlong order by cnt,multyvalue_tlong
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tlong,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tlong,' ')) as multyvalue_tlong from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
    and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tlong order by cnt,multyvalue_tlong limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tdouble,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))  group by multyvalue_tdouble order by cnt,multyvalue_tdouble
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tdouble,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tdouble,' ')) as multyvalue_tdouble from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
    and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tdouble order by cnt,multyvalue_tdouble limit 100;



/*ydb.pushdown('->')*/
select multyvalue_string,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))   group by multyvalue_string order by cnt,multyvalue_string
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_string,count(*) as cnt from (
    select explode(split(tmp.multyvalue_string,' ')) as multyvalue_string from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' 
    and 
    ((multyvalue_tdouble>='10' and multyvalue_tdouble<='20') or (multyvalue_long>='30' and multyvalue_long<='40') or (multyvalue_tlong>='40' and multyvalue_tlong<='50') or (multyvalue_string>='70' and multyvalue_string<='80'))
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_string order by cnt,multyvalue_string limit 100;










/*ydb.pushdown('->')*/
select multyvalue_long,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by multyvalue_long order by cnt,multyvalue_long
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_long,count(*) as cnt from (
    select explode(split(tmp.multyvalue_long,' ')) as multyvalue_long from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_long order by cnt,multyvalue_long limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tlong,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by multyvalue_tlong order by cnt,multyvalue_tlong
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tlong,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tlong,' ')) as multyvalue_tlong from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tlong order by cnt,multyvalue_tlong limit 100;



/*ydb.pushdown('->')*/
select multyvalue_tdouble,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by multyvalue_tdouble order by cnt,multyvalue_tdouble
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_tdouble,count(*) as cnt from (
    select explode(split(tmp.multyvalue_tdouble,' ')) as multyvalue_tdouble from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_tdouble order by cnt,multyvalue_tdouble limit 100;



/*ydb.pushdown('->')*/
select multyvalue_string,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  group by multyvalue_string order by cnt,multyvalue_string
limit 100
/*('<-')pushdown.ydb*/;

select multyvalue_string,count(*) as cnt from (
    select explode(split(tmp.multyvalue_string,' ')) as multyvalue_string from (
    /*ydb.pushdown('->')*/
    select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
    /*('<-')pushdown.ydb*/

    ) as tmp 
)tmp2  group by tmp2.multyvalue_string order by cnt,multyvalue_string limit 100;







select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=10000'
/*('<-')pushdown.ydb*/
)tmp  order by distance limit 10 ;

select * from (
select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' 
/*('<-')pushdown.ydb*/
)tmp  

) tmp2 where tmp2.distance <=10000 order by distance
 limit 10 ;
 
 
 
 
 
select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and 
(
ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=10000' 
   or (ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=50000' and lon <=1000 )
   or (ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=50000' and lat <=1000 )

)
/*('<-')pushdown.ydb*/
)tmp  order by distance limit 100 ;

select * from (
select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' 
/*('<-')pushdown.ydb*/
)tmp  

) tmp2 where (tmp2.distance <=10000 or (tmp2.distance <=50000 and lon<=1000)or (tmp2.distance <=50000 and lat<=1000)) order by distance
 limit 100 ;


 


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and content='Ylike@可口*可乐'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%可口%可乐%' order by phonenum desc,content limit 100
;


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and content='Ylike@可口可乐'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%可口可乐%' order by phonenum desc,content limit 100
;





select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and content='Ylike@600ml*可口*可乐'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%600ml%可口%可乐%' order by phonenum desc,content limit 100
;


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and content='Ylike@600ml可口可乐'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%600ml可口可乐%' order by phonenum desc,content limit 100
;



select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and content='Ylike@益达木糖醇薄荷饼装40粒'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%益达木糖醇薄荷饼装40粒%' order by phonenum desc,content limit 100
;


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and content='Ylike@益达木糖醇*薄荷饼装40粒'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%益达木糖醇%薄荷饼装40粒%' order by phonenum desc,content limit 100
;





select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and content='Ylike@益达木糖醇*薄荷饼装*40粒'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%益达木糖醇%薄荷饼装%40粒%' order by phonenum desc,content limit 100
;


select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and content='Ylike@益*糖醇*荷饼装*40粒'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.content like '%益%糖醇%荷饼装%40粒%' order by phonenum desc,content limit 100
;





select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and (content='Ylike@可口可乐' or content='Ylike@益*糖醇*荷饼装*40粒')
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where (tmp.content like '%可口可乐%' or tmp.content like '%益%糖醇%荷饼装%40粒%') order by phonenum desc,content limit 100
;



select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and ((content='Ylike@可口可乐' and phonenum='Ylike@134' ) or (content='Ylike@益*糖醇*荷饼装*40粒'  and phonenum='Ylike@1888' ))
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where (tmp.content like  '%可口可乐%' and tmp.phonenum like '%134%' ) or (tmp.content like '%益%糖醇%荷饼装%40粒%'  and tmp.phonenum like '%1888%' ) order by phonenum desc,content limit 100
;




select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and phonenum='Ylike@1888'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.phonenum like '%1888%' order by phonenum desc,content limit 100
;




select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and phonenum='Ylike@188*456'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.phonenum like '%188%456%' order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  and phonenum='Ylike@188*45*6'
/*('<-')pushdown.ydb*/
) tmp order by phonenum desc,content limit 100
;

select * from (
 /*ydb.pushdown('->')*/ 
select  content,phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark'  
/*('<-')pushdown.ydb*/
) tmp where tmp.phonenum like '%188%45%6%' order by phonenum desc,content limit 100
;




select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex='empty'
/*('<-')pushdown.ydb*/
) tmp order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where tmp.ydb_sex='' order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;




select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex<>'empty'
/*('<-')pushdown.ydb*/
) tmp order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where (tmp.ydb_sex<>'' or tmp.ydb_sex is null) order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;



select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex='null'
/*('<-')pushdown.ydb*/
) tmp order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where ( tmp.ydb_sex is null) order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;


select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex<>'null'
/*('<-')pushdown.ydb*/
) tmp order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province limit 1000
;

select phonenum,usernick,ydb_sex,ydb_province from (
/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' 
/*('<-')pushdown.ydb*/
) tmp where ( tmp.ydb_sex is not null) order by tmp.phonenum,tmp.usernick,tmp.ydb_sex,tmp.ydb_province  limit 1000
;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (content like '%王老吉%' or content like '%TSUBAKI丝蓓绮%' ) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (content='王老吉' or content='TSUBAKI丝蓓绮') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女' /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex='女' limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女' /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女'  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女'  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女'  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_sex='女' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_sex='女' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;





select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex<>'女' /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex<>'女' limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex<>'女' /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex<>'女'  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex<>'女'  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex<>'女' group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex<>'女'  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_sex<>'女' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex<>'女' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_sex<>'女' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex<>'女' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex not in ('女') and ydb_province not in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;



select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_province in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_province in ('广东','辽宁','香港','黑龙江') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_province in ('广东','辽宁','香港','黑龙江')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_province in ('广东','辽宁','香港','黑龙江')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_province in ('广东','辽宁','香港','黑龙江')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_province in ('广东','辽宁','香港','黑龙江') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;





select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000'))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000'))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000'))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_province in ('广东','辽宁','香港','黑龙江') or  (ydb_province in ('上海','浙江') and amtlong>'100' and amtlong<'1000') or (ydb_province in ('天津','北京') and (ydb_grade='本科' or ydb_grade='博士') and  amtdouble>='100' and amtdouble<='1000')) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女' and ydb_province='广东' /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女' and ydb_province='广东' /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女' and ydb_province='广东'  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女' and ydb_province='广东'  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where ydb_sex='女' and ydb_province='广东' group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女' and ydb_province='广东'  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and ydb_sex='女' and ydb_province='广东' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东') /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东') /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东')  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东')  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东')  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东') order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;




select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;






select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>='100' and amtlong<='1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '([100 TO 1000] )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;





select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;


select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' or ydb_province='广东' or  (amtlong>'100' and amtlong<'1000') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' or ydb_province='广东' or  (amtlong like '({100 TO 1000} )') or (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;







select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),count(amtlong),sum(amtlong),min(amtlong),max(amtlong),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select count(*) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) /*('<-')pushdown.ydb*/;

select ydb_sex,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB')))  group by ydb_sex,ydb_province order by ydb_sex,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select usernick,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select usernick,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB')))  group by usernick,ydb_province order by usernick,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;

select amtlong,ydb_province,count(*) as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100;
/*ydb.pushdown('->')*/ select amtlong,ydb_province,count(*)  as cnt ,avg(amtdouble),count(amtdouble),sum(amtdouble) as amt,min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB')))  group by amtlong,ydb_province order by amtlong,ydb_province,cnt desc,amt desc limit 100 /*('<-')pushdown.ydb*/;


select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_import_txt where (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10;
/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and (ydb_sex='女' and ydb_province='广东' and  (amtlong>='100' and amtlong<='1000') and (ydb_blood in ('O','AB'))) order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;








select count(*) from ydb_import_txt limit 10;
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;



select count(*) from ydb_import_txt limit 10;
/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' /*('<-')pushdown.ydb*/;


select sum(cast(r[0] as bigint)) as sumamtdouble from 
    ydb where YSQL('from','select sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;
select sum(amtdouble) from ydb_import_txt limit 10;


/*ydb.pushdown('->')*/ select sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' /*('<-')pushdown.ydb*/;
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
        ydb where YSQL('from','select count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w"  ','segment')

)tmp
limit 10;

select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_import_txt limit 10;



/*ydb.pushdown('->')*/ select count(amtdouble),sum(amtdouble),avg(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' /*('<-')pushdown.ydb*/;
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
        ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = "3000w"  ','segment')
)tmp
 limit 10;

select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt limit 10;
  



/*ydb.pushdown('->')*/ select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' /*('<-')pushdown.ydb*/;
select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt limit 10;



select 
    r[0] as ydb_sex,
    sum(cast(r[1] as bigint)) as cnt,
    sum(cast(r[2] as bigint)) as cntamt,
    sum(cast(r[3] as double)) as sumamt
from 
    ydb where YSQL('from','select ydb_sex,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" group by ydb_sex  ','segment') 
group by r[0]  order by cnt desc 
limit 10;

select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;




/*ydb.pushdown('->')*/ select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' group by ydb_sex order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;




select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]  order by cnt desc 
limit 10;

select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;



/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' group by ydb_sex,ydb_province order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;




select ydb_sex, phonenum,amtlong,amtdouble from 
(
    select 
        r[0] as ydb_sex,
        r[1] as phonenum,
        cast(r[2] as bigint) as amtlong,
        cast(r[3] as double) as amtdouble 
    from 
        ydb where YSQL('from','select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion="3000w"  order by amtdouble desc ,amtlong limit 10 ','segment')
)tmp 
order by amtdouble desc ,amtlong ,phonenum 
limit 10;

select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,phonenum limit 10;



/*ydb.pushdown('->')*/ select ydb_sex,phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' order by amtdouble desc, amtlong,phonenum limit 10 /*('<-')pushdown.ydb*/;
select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,phonenum limit 10;



















































select count(*) from ydb_import_txt limit 10;
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
limit 10;




select sum(cast(r[0] as bigint)) as sumamtdouble from 
    ydb where YSQL('from','select sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
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
        ydb where YSQL('from','select count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\'  ','segment')

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
        ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\'  ','segment')
)tmp
 limit 10;

select count(*) ,avg(amtdouble),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_import_txt limit 10;
  





select 
    r[0] as ydb_sex,
    sum(cast(r[1] as bigint)) as cnt,
    sum(cast(r[2] as bigint)) as cntamt,
    sum(cast(r[3] as double)) as sumamt
from 
    ydb where YSQL('from','select ydb_sex,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_sex  ','segment') 
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
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_sex,ydb_province  ','segment') 
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
        ydb where YSQL('from','select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion=\'3000w\'  order by amtdouble desc ,amtlong limit 10 ','segment')
)tmp 
order by amtdouble desc ,amtlong  ,phonenum
limit 10;

select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,phonenum limit 10;





















select count(*) from ydb_import_txt limit 10;
select Ycount('*',ya100_pipe) from ydb_example_shu where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe) and Ycombine('ydb_example_shu','*',ya100_pipe) limit 10;


select 
    Ycount('*',ya100_pipe)
    ,Ysum('amtdouble', ya100_pipe) 
    ,Yavg('amtdouble', ya100_pipe) 
    ,Ymin('amtdouble', ya100_pipe) 
    ,Ymax('amtdouble', ya100_pipe) 
    ,Ymaxstring('ydb_province', ya100_pipe)
   ,Yminstring('ydb_province', ya100_pipe) 

from ydb_example_shu
where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe)
and   Ycombine('ydb_example_shu','*,amtdouble,ydb_province',ya100_pipe)
limit 10;

select count(*) ,sum(amtdouble),avg(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_import_txt limit 10;
  





select ydb_sex,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from ydb_example_shu 
where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe)
and   Ycombine('ydb_example_shu','*,amtdouble',ya100_pipe)
group by ydb_sex  order by cnt desc limit 10;

select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex order by cnt desc limit 10;






select ydb_sex, ydb_province,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from ydb_example_shu 
where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe)
and   Ycombine('ydb_example_shu','*,amtdouble',ya100_pipe)
group by ydb_sex, ydb_province  order by cnt desc limit 10;

select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;




select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu 
where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe)
and   Ytop10000('ydb_example_shu','amtdouble desc ,amtlong limit 10',ya100_pipe)
order by amtdouble desc ,amtlong,phonenum  limit 10;
select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,phonenum limit 10;


















set ya100.spark.filter.ydb_example_shu=ydbpartion='3000w'
@session@
set ya100.spark.combine.ydb_example_shu=*
@session@
set ya100.spark.top10000.ydb_example_shu=
@session@
select Ycount('*',ya100_pipe) from ydb_example_shu  limit 10;
select count(*) from ydb_import_txt limit 10;


set ya100.spark.filter.ydb_example_shu=ydbpartion='3000w'
@session@
set ya100.spark.combine.ydb_example_shu=*,amtdouble,ydb_province
@session@
set ya100.spark.top10000.ydb_example_shu=
@session@
select Ycount('*',ya100_pipe) ,Ysum('amtdouble', ya100_pipe),Yavg('amtdouble', ya100_pipe) ,Ymin('amtdouble', ya100_pipe) ,Ymax('amtdouble', ya100_pipe) ,Ymaxstring('ydb_province', ya100_pipe),Yminstring('ydb_province', ya100_pipe) from ydb_example_shu  limit 10;

select count(*) ,sum(amtdouble),avg(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_import_txt limit 10;
  





set ya100.spark.filter.ydb_example_shu=ydbpartion='3000w'
@session@
set ya100.spark.combine.ydb_example_shu=*,amtdouble
@session@
set ya100.spark.top10000.ydb_example_shu=
@session@
select ydb_sex, ydb_province,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from ydb_example_shu   group by ydb_sex, ydb_province  order by cnt desc limit 10;


select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble)  from ydb_import_txt group by ydb_sex,ydb_province order by cnt desc limit 10;




set ya100.spark.filter.ydb_example_shu=ydbpartion='3000w'
@session@
set ya100.spark.combine.ydb_example_shu=
@session@
set ya100.spark.top10000.ydb_example_shu=amtdouble desc ,amtlong limit 10
@session@
select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu  order by amtdouble desc ,amtlong,phonenum  limit 10;

select ydb_sex,phonenum,amtlong,amtdouble from ydb_import_txt order by amtdouble desc, amtlong,phonenum limit 10;















