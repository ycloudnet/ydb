
/*ydb.pushdown('->')*/ 
select tradetime, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900'
 order by tradetime,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select tradetime, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:tradetime'  and 
    ydbkv='blocksort.desc:false' and 
    ydbkv='blocksort.limit:1000'
     order by tradetime,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select tradetime, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by tradetime desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select tradetime, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:tradetime'  and 
    ydbkv='blocksort.desc:true' and 
    ydbkv='blocksort.limit:1000'
     order by tradetime desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


--tint

/*ydb.pushdown('->')*/ 
select amtint, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtint,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtint, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtint'  and 
    ydbkv='blocksort.desc:false' and 
    ydbkv='blocksort.limit:1000'
     order by amtint,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select amtint, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtint desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtint, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtint'  and 
    ydbkv='blocksort.desc:true' and 
    ydbkv='blocksort.limit:1000'
     order by amtint desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


--tdouble


/*ydb.pushdown('->')*/ 
select amtdouble, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtdouble,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtdouble, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtdouble'  and 
    ydbkv='blocksort.desc:false' and 
    ydbkv='blocksort.limit:1000'
     order by amtdouble,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select amtdouble, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtdouble desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtdouble, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtdouble'  and 
    ydbkv='blocksort.desc:true' and 
    ydbkv='blocksort.limit:1000'
     order by amtdouble desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;



--tfloat


/*ydb.pushdown('->')*/ 
select amtfloat, tradetime from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtfloat,tradetime limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtfloat, tradetime from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtfloat'  and 
    ydbkv='blocksort.desc:false' and 
    ydbkv='blocksort.limit:1000'
     order by amtfloat,tradetime limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select amtfloat, tradetime from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtfloat desc,tradetime limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtfloat, tradetime from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtfloat'  and 
    ydbkv='blocksort.desc:true' and 
    ydbkv='blocksort.limit:1000'
     order by amtfloat desc,tradetime limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select tradetime, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900'
 order by tradetime,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select tradetime, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:tradetime'  and 
    ydbkv='blocksort.desc:false' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
     order by tradetime,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select tradetime, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by tradetime desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select tradetime, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:tradetime'  and 
    ydbkv='blocksort.desc:true' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
     order by tradetime desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


--tint

/*ydb.pushdown('->')*/ 
select amtint, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtint,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtint, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtint'  and 
    ydbkv='blocksort.desc:false' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
     order by amtint,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select amtint, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtint desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtint, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtint'  and 
    ydbkv='blocksort.desc:true' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
     order by amtint desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


--tdouble


/*ydb.pushdown('->')*/ 
select amtdouble, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtdouble,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtdouble, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtdouble'  and 
    ydbkv='blocksort.desc:false' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
     order by amtdouble,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select amtdouble, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtdouble desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtdouble, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtdouble'  and 
    ydbkv='blocksort.desc:true' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
     order by amtdouble desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;



--tfloat


/*ydb.pushdown('->')*/ 
select amtfloat, tradetime from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtfloat,tradetime limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtfloat, tradetime from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtfloat'  and 
    ydbkv='blocksort.desc:false' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
     order by amtfloat,tradetime limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select amtfloat, tradetime from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtfloat desc,tradetime limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtfloat, tradetime from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtfloat'  and 
    ydbkv='blocksort.desc:true' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark'
     order by amtfloat desc,tradetime limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select tradetime, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900'
 order by tradetime,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select tradetime, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:tradetime'  and 
    ydbkv='blocksort.desc:false' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
     order by tradetime,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select tradetime, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by tradetime desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select tradetime, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:tradetime'  and 
    ydbkv='blocksort.desc:true' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
     order by tradetime desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


--tint

/*ydb.pushdown('->')*/ 
select amtint, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtint,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtint, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtint'  and 
    ydbkv='blocksort.desc:false' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
     order by amtint,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select amtint, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtint desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtint, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtint'  and 
    ydbkv='blocksort.desc:true' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
     order by amtint desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


--tdouble


/*ydb.pushdown('->')*/ 
select amtdouble, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtdouble,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtdouble, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtdouble'  and 
    ydbkv='blocksort.desc:false' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
     order by amtdouble,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select amtdouble, amtfloat from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtdouble desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtdouble, amtfloat from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtdouble'  and 
    ydbkv='blocksort.desc:true' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
     order by amtdouble desc,amtfloat limit 1000 
/*('<-')pushdown.ydb*/;



--tfloat


/*ydb.pushdown('->')*/ 
select amtfloat, tradetime from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtfloat,tradetime limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtfloat, tradetime from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtfloat'  and 
    ydbkv='blocksort.desc:false' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
     order by amtfloat,tradetime limit 1000 
/*('<-')pushdown.ydb*/;



/*ydb.pushdown('->')*/ 
select amtfloat, tradetime from blocksort_ydb  where amtfloat>='300' and amtfloat<='900' 
 order by amtfloat desc,tradetime limit 1000 
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/ 
select amtfloat, tradetime from blocksort_ydb where amtfloat>='300' and amtfloat<='900' and  
    ydbkv='blocksort.field:amtfloat'  and 
    ydbkv='blocksort.desc:true' and 
    ydbkv='blocksort.limit:1000' and ydbkv='mdrill.force:ydb_force_to_spark_mark'
     order by amtfloat desc,tradetime limit 1000 
/*('<-')pushdown.ydb*/;
