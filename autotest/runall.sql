/*ydb.pushdown('->')*/ select tollCode,vehiclePlate from vehiclepass where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/ ;
/*ydb.pushdown('->')*/ select * from vehiclepass where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select * from ydb_example_shu where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content,usernick from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content as ctx,usernick as nick from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/ 
select  phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and phonenum='Ylike@188*63*72*76'
 limit 100
/*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' group by ydb_sex limit 10 /*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' group by ydb_sex,ydb_province order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' group by ydb_sex,ydb_province order by count(*) desc limit 10 /*('<-')pushdown.ydb*/;




















/*ydb.pushdown('->')*/ select tollCode,vehiclePlate from vehiclepass where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' limit 10 /*('<-')pushdown.ydb*/ ;
/*ydb.pushdown('->')*/ select * from vehiclepass where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content,usernick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content as ctx,usernick as nick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/
select  phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and phonenum='Ylike@188*63*72*76'
 limit 100
/*('<-')pushdown.ydb*/;
 
/*ydb.pushdown('->')*/select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' group by ydb_sex limit 10 /*('<-')pushdown.ydb*/;
 
 
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' group by ydb_sex,ydb_province order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_mdrill_mark' and content='王老吉' group by ydb_sex,ydb_province order by count(*) desc limit 10 /*('<-')pushdown.ydb*/; 




/*ydb.pushdown('->')*/ select tollCode,vehiclePlate from vehiclepass where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' limit 10 /*('<-')pushdown.ydb*/ ;
/*ydb.pushdown('->')*/ select * from vehiclepass where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select * from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content,usernick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content as ctx,usernick as nick from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/
select  phonenum from ydb_example_shu_positon where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and phonenum='Ylike@188*63*72*76'
 limit 100
/*('<-')pushdown.ydb*/;
 
/*ydb.pushdown('->')*/select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' group by ydb_sex limit 10 /*('<-')pushdown.ydb*/;
 
 
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' group by ydb_sex,ydb_province order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' and ydbkv='mdrill.force:ydb_force_to_spark_mark' and content='王老吉' group by ydb_sex,ydb_province order by count(*) desc limit 10 /*('<-')pushdown.ydb*/;




/*ydb.pushdown('->')*/ select tollCode,vehiclePlate from vehiclepass where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/ ;
/*ydb.pushdown('->')*/ select * from vehiclepass where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/;


select k21.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            /*ydb.pushdown('->')*/ select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1' /*('<-')pushdown.ydb*/ 
    ) k1
    LEFT SEMI JOIN 
   (
       /*ydb.pushdown('->')*/ select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='2' /*('<-')pushdown.ydb*/  
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT SEMI JOIN 
(
   /*ydb.pushdown('->')*/ select vehiclePlate,tollCode from vehiclepass  where ydbpartion = '3000w' and tollCode='3' /*('<-')pushdown.ydb*/ 
 ) k22 on k21.vehiclePlate=k22.vehiclePlate order by k21.vehiclePlate;
 
 
 select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            /*ydb.pushdown('->')*/ select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1'  /*('<-')pushdown.ydb*/
    ) k1
    LEFT JOIN 
   (
         /*ydb.pushdown('->')*/ select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='2' /*('<-')pushdown.ydb*/
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
     /*ydb.pushdown('->')*/ select vehiclePlate,tollCode from vehiclepass  where ydbpartion = '3000w' and tollCode='3'  /*('<-')pushdown.ydb*/
 ) k22 on k21.vehiclePlate=k22.vehiclePlate ;
 
 
 
select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
           /*ydb.pushdown('->')*/select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1' /*('<-')pushdown.ydb*/
    ) k1
    LEFT SEMI JOIN 
   (
        /*ydb.pushdown('->')*/select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='2'  /*('<-')pushdown.ydb*/
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
    /*ydb.pushdown('->')*/select vehiclePlate,tollCode from vehiclepass  where ydbpartion = '3000w' and tollCode='3'  /*('<-')pushdown.ydb*/
 ) k22 on k21.vehiclePlate=k22.vehiclePlate ;

 
   select  k1.vehiclePlate as vehiclePlate from (
           /*ydb.pushdown('->')*/ select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1'  /*('<-')pushdown.ydb*/
    ) k1
    LEFT SEMI JOIN 
   (
       /*ydb.pushdown('->')*/ select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='2'   /*('<-')pushdown.ydb*/
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate);
    
      select  k1.vehiclePlate as vehiclePlate,k2.vehiclePlate from (
            /*ydb.pushdown('->')*/ select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1' /*('<-')pushdown.ydb*/
    ) k1
    LEFT JOIN 
   (
        /*ydb.pushdown('->')*/ select vehiclePlate,tollCode from vehiclepass where ydbpartion = '3000w' and tollCode='1' /*('<-')pushdown.ydb*/
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate);


/*ydb.pushdown('->')*/select HPHM,JGSJ,KKBH from ydb_oribit where ydbpartion = '20160619' and  HPHM='辽G8Y805' /*('<-')pushdown.ydb*/ ;


select tmp.HPHM,count(*) as rows,size(collect_set(tmp.KKBH)) as dist_kkbh,concat_ws('#', sort_array(collect_set(concat_ws(',',tmp.JGSJ,tmp.KKBH)))) as detail
  from (
    /*ydb.pushdown('->')*/
    select HPHM,JGSJ,KKBH from ydb_oribit where ydbpartion = '20160619' and ( (JGSJ>='201604290000'  and JGSJ>='201604290200' and KKBH='10000000') or (JGSJ>='201604290001' and JGSJ<='201604290301'  and KKBH='10000001') or (JGSJ>='201604290002'  and JGSJ<='201604290202' and KKBH='10000002')) 
    /*('<-')pushdown.ydb*/
) tmp group by tmp.HPHM order by dist_kkbh desc;



select sum(cnt) as cnt from 
(

/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/
 
union all
/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion = '300winsert' /*('<-')pushdown.ydb*/

union all
/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion = '300winsert2' /*('<-')pushdown.ydb*/

union all
/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion = '3000w' and content='王老吉'  /*('<-')pushdown.ydb*/

union all
/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion = '20151011' and content='工商银行' /*('<-')pushdown.ydb*/

union all
/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion = '20151011'  /*('<-')pushdown.ydb*/

) tmp limit 10;


select * from 
(
/*ydb.pushdown('->')*/ select amtlong,content from ydb_example_shu where ydbpartion = '3000w' and content='旺旺' order by amtlong desc limit 1 /*('<-')pushdown.ydb*/ 
union all
/*ydb.pushdown('->')*/ select amtlong,content from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' order by amtlong desc limit 1  /*('<-')pushdown.ydb*/ 
union all
/*ydb.pushdown('->')*/ select amtlong,content from ydb_example_shu where ydbpartion = '3000w' and content='汇源' order by amtlong desc limit 1   /*('<-')pushdown.ydb*/
union all
/*ydb.pushdown('->')*/ select amtlong,content from ydb_example_shu where ydbpartion = '3000w' and content='哇哈哈' order by amtlong desc limit 1  /*('<-')pushdown.ydb*/  

) tmp  limit 1000;

/*ydb.pushdown('->')*/
select count(*),count(amtdouble),sum(amtdouble),avg(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where   ydbpartion in (  '3000w0','3000w1' ,'3000w2','3000w3','3000w4','3000w5','3000w6','3000w7','3000w8','3000w9','3000w10' ,'3000w11','3000w12','3000w13','3000w14','3000w15' ,'3000w16'  ,'3000w17','3000w18','3000w19'
,'3000a0','3000a1' ,'3000a2','3000a3','3000a4','3000a5','3000a6','3000a7','3000a8','3000a9','3000a10' ,'3000a11','3000a12','3000a13','3000a14','3000a15' ,'3000a16'  ,'3000a17','3000a18','3000a19' 
,'3000b0','3000b1' ,'3000b2','3000b3','3000b4','3000b5','3000b6','3000b7','3000b8','3000b9','3000b10' ,'3000b11','3000b12','3000b13','3000b14','3000b15' ,'3000b16'  ,'3000b17','3000b18','3000b19' 
)
/*('<-')pushdown.ydb*/
;



/*ydb.pushdown('->')*/
select count(*) from ydb_example_shu where ydbpartion = '3000w' and amtlong in (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047) 
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/
select count(*) from ydb_example_shu where ydbpartion = '3000w' and (amtlong='0' or amtlong='1' or amtlong='2' or amtlong='3' or amtlong='4' or amtlong='5' or amtlong='6' or amtlong='7' or amtlong='8' or amtlong='9' or amtlong='10' or amtlong='11' or amtlong='12' or amtlong='13' or amtlong='14' or amtlong='15' or amtlong='16' or amtlong='17' or amtlong='18' or amtlong='19' or amtlong='20' or amtlong='21' or amtlong='22' or amtlong='23' or amtlong='24' or amtlong='25' or amtlong='26' or amtlong='27' or amtlong='28' or amtlong='29' or amtlong='30' or amtlong='31' or amtlong='32' or amtlong='33' or amtlong='34' or amtlong='35' or amtlong='36' or amtlong='37' or amtlong='38' or amtlong='39' or amtlong='40' or amtlong='41' or amtlong='42' or amtlong='43' or amtlong='44' or amtlong='45' or amtlong='46' or amtlong='47' or amtlong='48' or amtlong='49' or amtlong='50' or amtlong='51' or amtlong='52' or amtlong='53' or amtlong='54' or amtlong='55' or amtlong='56' or amtlong='57' or amtlong='58' or amtlong='59' or amtlong='60' or amtlong='61' or amtlong='62' or amtlong='63' or amtlong='64' or amtlong='65' or amtlong='66' or amtlong='67' or amtlong='68' or amtlong='69' or amtlong='70' or amtlong='71' or amtlong='72' or amtlong='73' or amtlong='74' or amtlong='75' or amtlong='76' or amtlong='77' or amtlong='78' or amtlong='79' or amtlong='80' or amtlong='81' or amtlong='82' or amtlong='83' or amtlong='84' or amtlong='85' or amtlong='86' or amtlong='87' or amtlong='88' or amtlong='89' or amtlong='90' or amtlong='91' or amtlong='92' or amtlong='93' or amtlong='94' or amtlong='95' or amtlong='96' or amtlong='97' or amtlong='98' or amtlong='99' or amtlong='100' or amtlong='101' or amtlong='102' or amtlong='103' or amtlong='104' or amtlong='105' or amtlong='106' or amtlong='107' or amtlong='108' or amtlong='109' or amtlong='110' or amtlong='111' or amtlong='112' or amtlong='113' or amtlong='114' or amtlong='115' or amtlong='116' or amtlong='117' or amtlong='118' or amtlong='119' or amtlong='120' or amtlong='121' or amtlong='122' or amtlong='123' or amtlong='124' or amtlong='125' or amtlong='126' or amtlong='127' or amtlong='128' or amtlong='129' or amtlong='130' or amtlong='131' or amtlong='132' or amtlong='133' or amtlong='134' or amtlong='135' or amtlong='136' or amtlong='137' or amtlong='138' or amtlong='139' or amtlong='140' or amtlong='141' or amtlong='142' or amtlong='143' or amtlong='144' or amtlong='145' or amtlong='146' or amtlong='147' or amtlong='148' or amtlong='149' or amtlong='150' or amtlong='151' or amtlong='152' or amtlong='153' or amtlong='154' or amtlong='155' or amtlong='156' or amtlong='157' or amtlong='158' or amtlong='159' or amtlong='160' or amtlong='161' or amtlong='162' or amtlong='163' or amtlong='164' or amtlong='165' or amtlong='166' or amtlong='167' or amtlong='168' or amtlong='169' or amtlong='170' or amtlong='171' or amtlong='172' or amtlong='173' or amtlong='174' or amtlong='175' or amtlong='176' or amtlong='177' or amtlong='178' or amtlong='179' or amtlong='180' or amtlong='181' or amtlong='182' or amtlong='183' or amtlong='184' or amtlong='185' or amtlong='186' or amtlong='187' or amtlong='188' or amtlong='189' or amtlong='190' or amtlong='191' or amtlong='192' or amtlong='193' or amtlong='194' or amtlong='195' or amtlong='196' or amtlong='197' or amtlong='198' or amtlong='199' or amtlong='200' or amtlong='201' or amtlong='202' or amtlong='203' or amtlong='204' or amtlong='205' or amtlong='206' or amtlong='207' or amtlong='208' or amtlong='209' or amtlong='210' or amtlong='211' or amtlong='212' or amtlong='213' or amtlong='214' or amtlong='215' or amtlong='216' or amtlong='217' or amtlong='218' or amtlong='219' or amtlong='220' or amtlong='221' or amtlong='222' or amtlong='223' or amtlong='224' or amtlong='225' or amtlong='226' or amtlong='227' or amtlong='228' or amtlong='229' or amtlong='230' or amtlong='231' or amtlong='232' or amtlong='233' or amtlong='234' or amtlong='235' or amtlong='236' or amtlong='237' or amtlong='238' or amtlong='239' or amtlong='240' or amtlong='241' or amtlong='242' or amtlong='243' or amtlong='244' or amtlong='245' or amtlong='246' or amtlong='247' or amtlong='248' or amtlong='249' or amtlong='250' or amtlong='251' or amtlong='252' or amtlong='253' or amtlong='254' or amtlong='255' or amtlong='256' or amtlong='257' or amtlong='258' or amtlong='259' or amtlong='260' or amtlong='261' or amtlong='262' or amtlong='263' or amtlong='264' or amtlong='265' or amtlong='266' or amtlong='267' or amtlong='268' or amtlong='269' or amtlong='270' or amtlong='271' or amtlong='272' or amtlong='273' or amtlong='274' or amtlong='275' or amtlong='276' or amtlong='277' or amtlong='278' or amtlong='279' or amtlong='280' or amtlong='281' or amtlong='282' or amtlong='283' or amtlong='284' or amtlong='285' or amtlong='286' or amtlong='287' or amtlong='288' or amtlong='289' or amtlong='290' or amtlong='291' or amtlong='292' or amtlong='293' or amtlong='294' or amtlong='295' or amtlong='296' or amtlong='297' or amtlong='298' or amtlong='299' or amtlong='300' or amtlong='301' or amtlong='302' or amtlong='303' or amtlong='304' or amtlong='305' or amtlong='306' or amtlong='307' or amtlong='308' or amtlong='309' or amtlong='310' or amtlong='311' or amtlong='312' or amtlong='313' or amtlong='314' or amtlong='315' or amtlong='316' or amtlong='317' or amtlong='318' or amtlong='319' or amtlong='320' or amtlong='321' or amtlong='322' or amtlong='323' or amtlong='324' or amtlong='325' or amtlong='326' or amtlong='327' or amtlong='328' or amtlong='329' or amtlong='330' or amtlong='331' or amtlong='332' or amtlong='333' or amtlong='334' or amtlong='335' or amtlong='336' or amtlong='337' or amtlong='338' or amtlong='339' or amtlong='340' or amtlong='341' or amtlong='342' or amtlong='343' or amtlong='344' or amtlong='345' or amtlong='346' or amtlong='347' or amtlong='348' or amtlong='349' or amtlong='350' or amtlong='351' or amtlong='352' or amtlong='353' or amtlong='354' or amtlong='355' or amtlong='356' or amtlong='357' or amtlong='358' or amtlong='359' or amtlong='360' or amtlong='361' or amtlong='362' or amtlong='363' or amtlong='364' or amtlong='365' or amtlong='366' or amtlong='367' or amtlong='368' or amtlong='369' or amtlong='370' or amtlong='371' or amtlong='372' or amtlong='373' or amtlong='374' or amtlong='375' or amtlong='376' or amtlong='377' or amtlong='378' or amtlong='379' or amtlong='380' or amtlong='381' or amtlong='382' or amtlong='383' or amtlong='384' or amtlong='385' or amtlong='386' or amtlong='387' or amtlong='388' or amtlong='389' or amtlong='390' or amtlong='391' or amtlong='392' or amtlong='393' or amtlong='394' or amtlong='395' or amtlong='396' or amtlong='397' or amtlong='398' or amtlong='399' or amtlong='400' or amtlong='401' or amtlong='402' or amtlong='403' or amtlong='404' or amtlong='405' or amtlong='406' or amtlong='407' or amtlong='408' or amtlong='409' or amtlong='410' or amtlong='411' or amtlong='412' or amtlong='413' or amtlong='414' or amtlong='415' or amtlong='416' or amtlong='417' or amtlong='418' or amtlong='419' or amtlong='420' or amtlong='421' or amtlong='422' or amtlong='423' or amtlong='424' or amtlong='425' or amtlong='426' or amtlong='427' or amtlong='428' or amtlong='429' or amtlong='430' or amtlong='431' or amtlong='432' or amtlong='433' or amtlong='434' or amtlong='435' or amtlong='436' or amtlong='437' or amtlong='438' or amtlong='439' or amtlong='440' or amtlong='441' or amtlong='442' or amtlong='443' or amtlong='444' or amtlong='445' or amtlong='446' or amtlong='447' or amtlong='448' or amtlong='449' or amtlong='450' or amtlong='451' or amtlong='452' or amtlong='453' or amtlong='454' or amtlong='455' or amtlong='456' or amtlong='457' or amtlong='458' or amtlong='459' or amtlong='460' or amtlong='461' or amtlong='462' or amtlong='463' or amtlong='464' or amtlong='465' or amtlong='466' or amtlong='467' or amtlong='468' or amtlong='469' or amtlong='470' or amtlong='471' or amtlong='472' or amtlong='473' or amtlong='474' or amtlong='475' or amtlong='476' or amtlong='477' or amtlong='478' or amtlong='479' or amtlong='480' or amtlong='481' or amtlong='482' or amtlong='483' or amtlong='484' or amtlong='485' or amtlong='486' or amtlong='487' or amtlong='488' or amtlong='489' or amtlong='490' or amtlong='491' or amtlong='492' or amtlong='493' or amtlong='494' or amtlong='495' or amtlong='496' or amtlong='497' or amtlong='498' or amtlong='499' or amtlong='500' or amtlong='501' or amtlong='502' or amtlong='503' or amtlong='504' or amtlong='505' or amtlong='506' or amtlong='507' or amtlong='508' or amtlong='509' or amtlong='510' or amtlong='511' or amtlong='512' or amtlong='513' or amtlong='514' or amtlong='515' or amtlong='516' or amtlong='517' or amtlong='518' or amtlong='519' or amtlong='520' or amtlong='521' or amtlong='522' or amtlong='523' or amtlong='524' or amtlong='525' or amtlong='526' or amtlong='527' or amtlong='528' or amtlong='529' or amtlong='530' or amtlong='531' or amtlong='532' or amtlong='533' or amtlong='534' or amtlong='535' or amtlong='536' or amtlong='537' or amtlong='538' or amtlong='539' or amtlong='540' or amtlong='541' or amtlong='542' or amtlong='543' or amtlong='544' or amtlong='545' or amtlong='546' or amtlong='547' or amtlong='548' or amtlong='549' or amtlong='550' or amtlong='551' or amtlong='552' or amtlong='553' or amtlong='554' or amtlong='555' or amtlong='556' or amtlong='557' or amtlong='558' or amtlong='559' or amtlong='560' or amtlong='561' or amtlong='562' or amtlong='563' or amtlong='564' or amtlong='565' or amtlong='566' or amtlong='567' or amtlong='568' or amtlong='569' or amtlong='570' or amtlong='571' or amtlong='572' or amtlong='573' or amtlong='574' or amtlong='575' or amtlong='576' or amtlong='577' or amtlong='578' or amtlong='579' or amtlong='580' or amtlong='581' or amtlong='582' or amtlong='583' or amtlong='584' or amtlong='585' or amtlong='586' or amtlong='587' or amtlong='588' or amtlong='589' or amtlong='590' or amtlong='591' or amtlong='592' or amtlong='593' or amtlong='594' or amtlong='595' or amtlong='596' or amtlong='597' or amtlong='598' or amtlong='599' or amtlong='600' or amtlong='601' or amtlong='602' or amtlong='603' or amtlong='604' or amtlong='605' or amtlong='606' or amtlong='607' or amtlong='608' or amtlong='609' or amtlong='610' or amtlong='611' or amtlong='612' or amtlong='613' or amtlong='614' or amtlong='615' or amtlong='616' or amtlong='617' or amtlong='618' or amtlong='619' or amtlong='620' or amtlong='621' or amtlong='622' or amtlong='623' or amtlong='624' or amtlong='625' or amtlong='626' or amtlong='627' or amtlong='628' or amtlong='629' or amtlong='630' or amtlong='631' or amtlong='632' or amtlong='633' or amtlong='634' or amtlong='635' or amtlong='636' or amtlong='637' or amtlong='638' or amtlong='639' or amtlong='640' or amtlong='641' or amtlong='642' or amtlong='643' or amtlong='644' or amtlong='645' or amtlong='646' or amtlong='647' or amtlong='648' or amtlong='649' or amtlong='650' or amtlong='651' or amtlong='652' or amtlong='653' or amtlong='654' or amtlong='655' or amtlong='656' or amtlong='657' or amtlong='658' or amtlong='659' or amtlong='660' or amtlong='661' or amtlong='662' or amtlong='663' or amtlong='664' or amtlong='665' or amtlong='666' or amtlong='667' or amtlong='668' or amtlong='669' or amtlong='670' or amtlong='671' or amtlong='672' or amtlong='673' or amtlong='674' or amtlong='675' or amtlong='676' or amtlong='677' or amtlong='678' or amtlong='679' or amtlong='680' or amtlong='681' or amtlong='682' or amtlong='683' or amtlong='684' or amtlong='685' or amtlong='686' or amtlong='687' or amtlong='688' or amtlong='689' or amtlong='690' or amtlong='691' or amtlong='692' or amtlong='693' or amtlong='694' or amtlong='695' or amtlong='696' or amtlong='697' or amtlong='698' or amtlong='699' or amtlong='700' or amtlong='701' or amtlong='702' or amtlong='703' or amtlong='704' or amtlong='705' or amtlong='706' or amtlong='707' or amtlong='708' or amtlong='709' or amtlong='710' or amtlong='711' or amtlong='712' or amtlong='713' or amtlong='714' or amtlong='715' or amtlong='716' or amtlong='717' or amtlong='718' or amtlong='719' or amtlong='720' or amtlong='721' or amtlong='722' or amtlong='723' or amtlong='724' or amtlong='725' or amtlong='726' or amtlong='727' or amtlong='728' or amtlong='729' or amtlong='730' or amtlong='731' or amtlong='732' or amtlong='733' or amtlong='734' or amtlong='735' or amtlong='736' or amtlong='737' or amtlong='738' or amtlong='739' or amtlong='740' or amtlong='741' or amtlong='742' or amtlong='743' or amtlong='744' or amtlong='745' or amtlong='746' or amtlong='747' or amtlong='748' or amtlong='749' or amtlong='750' or amtlong='751' or amtlong='752' or amtlong='753' or amtlong='754' or amtlong='755' or amtlong='756' or amtlong='757' or amtlong='758' or amtlong='759' or amtlong='760' or amtlong='761' or amtlong='762' or amtlong='763' or amtlong='764' or amtlong='765' or amtlong='766' or amtlong='767' or amtlong='768' or amtlong='769' or amtlong='770' or amtlong='771' or amtlong='772' or amtlong='773' or amtlong='774' or amtlong='775' or amtlong='776' or amtlong='777' or amtlong='778' or amtlong='779' or amtlong='780' or amtlong='781' or amtlong='782' or amtlong='783' or amtlong='784' or amtlong='785' or amtlong='786' or amtlong='787' or amtlong='788' or amtlong='789' or amtlong='790' or amtlong='791' or amtlong='792' or amtlong='793' or amtlong='794' or amtlong='795' or amtlong='796' or amtlong='797' or amtlong='798' or amtlong='799' or amtlong='800' or amtlong='801' or amtlong='802' or amtlong='803' or amtlong='804' or amtlong='805' or amtlong='806' or amtlong='807' or amtlong='808' or amtlong='809' or amtlong='810' or amtlong='811' or amtlong='812' or amtlong='813' or amtlong='814' or amtlong='815' or amtlong='816' or amtlong='817' or amtlong='818' or amtlong='819' or amtlong='820' or amtlong='821' or amtlong='822' or amtlong='823' or amtlong='824' or amtlong='825' or amtlong='826' or amtlong='827' or amtlong='828' or amtlong='829' or amtlong='830' or amtlong='831' or amtlong='832' or amtlong='833' or amtlong='834' or amtlong='835' or amtlong='836' or amtlong='837' or amtlong='838' or amtlong='839' or amtlong='840' or amtlong='841' or amtlong='842' or amtlong='843' or amtlong='844' or amtlong='845' or amtlong='846' or amtlong='847' or amtlong='848' or amtlong='849' or amtlong='850' or amtlong='851' or amtlong='852' or amtlong='853' or amtlong='854' or amtlong='855' or amtlong='856' or amtlong='857' or amtlong='858' or amtlong='859' or amtlong='860' or amtlong='861' or amtlong='862' or amtlong='863' or amtlong='864' or amtlong='865' or amtlong='866' or amtlong='867' or amtlong='868' or amtlong='869' or amtlong='870' or amtlong='871' or amtlong='872' or amtlong='873' or amtlong='874' or amtlong='875' or amtlong='876' or amtlong='877' or amtlong='878' or amtlong='879' or amtlong='880' or amtlong='881' or amtlong='882' or amtlong='883' or amtlong='884' or amtlong='885' or amtlong='886' or amtlong='887' or amtlong='888' or amtlong='889' or amtlong='890' or amtlong='891' or amtlong='892' or amtlong='893' or amtlong='894' or amtlong='895' or amtlong='896' or amtlong='897' or amtlong='898' or amtlong='899' or amtlong='900' or amtlong='901' or amtlong='902' or amtlong='903' or amtlong='904' or amtlong='905' or amtlong='906' or amtlong='907' or amtlong='908' or amtlong='909' or amtlong='910' or amtlong='911' or amtlong='912' or amtlong='913' or amtlong='914' or amtlong='915' or amtlong='916' or amtlong='917' or amtlong='918' or amtlong='919' or amtlong='920' or amtlong='921' or amtlong='922' or amtlong='923' or amtlong='924' or amtlong='925' or amtlong='926' or amtlong='927' or amtlong='928' or amtlong='929' or amtlong='930' or amtlong='931' or amtlong='932' or amtlong='933' or amtlong='934' or amtlong='935' or amtlong='936' or amtlong='937' or amtlong='938' or amtlong='939' or amtlong='940' or amtlong='941' or amtlong='942' or amtlong='943' or amtlong='944' or amtlong='945' or amtlong='946' or amtlong='947' or amtlong='948' or amtlong='949' or amtlong='950' or amtlong='951' or amtlong='952' or amtlong='953' or amtlong='954' or amtlong='955' or amtlong='956' or amtlong='957' or amtlong='958' or amtlong='959' or amtlong='960' or amtlong='961' or amtlong='962' or amtlong='963' or amtlong='964' or amtlong='965' or amtlong='966' or amtlong='967' or amtlong='968' or amtlong='969' or amtlong='970' or amtlong='971' or amtlong='972' or amtlong='973' or amtlong='974' or amtlong='975' or amtlong='976' or amtlong='977' or amtlong='978' or amtlong='979' or amtlong='980' or amtlong='981' or amtlong='982' or amtlong='983' or amtlong='984' or amtlong='985' or amtlong='986' or amtlong='987' or amtlong='988' or amtlong='989' or amtlong='990' or amtlong='991' or amtlong='992' or amtlong='993' or amtlong='994' or amtlong='995' or amtlong='996' or amtlong='997' or amtlong='998' or amtlong='999' or amtlong='1000' or amtlong='1001' or amtlong='1002' or amtlong='1003' or amtlong='1004' or amtlong='1005' or amtlong='1006' or amtlong='1007' or amtlong='1008' or amtlong='1009' or amtlong='1010' or amtlong='1011' or amtlong='1012' or amtlong='1013' or amtlong='1014' or amtlong='1015' or amtlong='1016' or amtlong='1017' or amtlong='1018' or amtlong='1019' or amtlong='1020' or amtlong='1021' or amtlong='1022' or amtlong='1023' or amtlong='1024' or amtlong='1025' or amtlong='1026' or amtlong='1027' or amtlong='1028' or amtlong='1029' or amtlong='1030' or amtlong='1031' or amtlong='1032' or amtlong='1033' or amtlong='1034' or amtlong='1035' or amtlong='1036' or amtlong='1037' or amtlong='1038' or amtlong='1039' or amtlong='1040' or amtlong='1041' or amtlong='1042' or amtlong='1043' or amtlong='1044' or amtlong='1045' or amtlong='1046' or amtlong='1047' or amtlong='1048' or amtlong='1049' or amtlong='1050' or amtlong='1051' or amtlong='1052' or amtlong='1053' or amtlong='1054' or amtlong='1055' or amtlong='1056' or amtlong='1057' or amtlong='1058' or amtlong='1059' or amtlong='1060' or amtlong='1061' or amtlong='1062' or amtlong='1063' or amtlong='1064' or amtlong='1065' or amtlong='1066' or amtlong='1067' or amtlong='1068' or amtlong='1069' or amtlong='1070' or amtlong='1071' or amtlong='1072' or amtlong='1073' or amtlong='1074' or amtlong='1075' or amtlong='1076' or amtlong='1077' or amtlong='1078' or amtlong='1079' or amtlong='1080' or amtlong='1081' or amtlong='1082' or amtlong='1083' or amtlong='1084' or amtlong='1085' or amtlong='1086' or amtlong='1087' or amtlong='1088' or amtlong='1089' or amtlong='1090' or amtlong='1091' or amtlong='1092' or amtlong='1093' or amtlong='1094' or amtlong='1095' or amtlong='1096' or amtlong='1097' or amtlong='1098' or amtlong='1099' or amtlong='1100' or amtlong='1101' or amtlong='1102' or amtlong='1103' or amtlong='1104' or amtlong='1105' or amtlong='1106' or amtlong='1107' or amtlong='1108' or amtlong='1109' or amtlong='1110' or amtlong='1111' or amtlong='1112' or amtlong='1113' or amtlong='1114' or amtlong='1115' or amtlong='1116' or amtlong='1117' or amtlong='1118' or amtlong='1119' or amtlong='1120' or amtlong='1121' or amtlong='1122' or amtlong='1123' or amtlong='1124' or amtlong='1125' or amtlong='1126' or amtlong='1127' or amtlong='1128' or amtlong='1129' or amtlong='1130' or amtlong='1131' or amtlong='1132' or amtlong='1133' or amtlong='1134' or amtlong='1135' or amtlong='1136' or amtlong='1137' or amtlong='1138' or amtlong='1139' or amtlong='1140' or amtlong='1141' or amtlong='1142' or amtlong='1143' or amtlong='1144' or amtlong='1145' or amtlong='1146' or amtlong='1147' or amtlong='1148' or amtlong='1149' or amtlong='1150' or amtlong='1151' or amtlong='1152' or amtlong='1153' or amtlong='1154' or amtlong='1155' or amtlong='1156' or amtlong='1157' or amtlong='1158' or amtlong='1159' or amtlong='1160' or amtlong='1161' or amtlong='1162' or amtlong='1163' or amtlong='1164' or amtlong='1165' or amtlong='1166' or amtlong='1167' or amtlong='1168' or amtlong='1169' or amtlong='1170' or amtlong='1171' or amtlong='1172' or amtlong='1173' or amtlong='1174' or amtlong='1175' or amtlong='1176' or amtlong='1177' or amtlong='1178' or amtlong='1179' or amtlong='1180' or amtlong='1181' or amtlong='1182' or amtlong='1183' or amtlong='1184' or amtlong='1185' or amtlong='1186' or amtlong='1187' or amtlong='1188' or amtlong='1189' or amtlong='1190' or amtlong='1191' or amtlong='1192' or amtlong='1193' or amtlong='1194' or amtlong='1195' or amtlong='1196' or amtlong='1197' or amtlong='1198' or amtlong='1199' or amtlong='1200' or amtlong='1201' or amtlong='1202' or amtlong='1203' or amtlong='1204' or amtlong='1205' or amtlong='1206' or amtlong='1207' or amtlong='1208' or amtlong='1209' or amtlong='1210' or amtlong='1211' or amtlong='1212' or amtlong='1213' or amtlong='1214' or amtlong='1215' or amtlong='1216' or amtlong='1217' or amtlong='1218' or amtlong='1219' or amtlong='1220' or amtlong='1221' or amtlong='1222' or amtlong='1223' or amtlong='1224' or amtlong='1225' or amtlong='1226' or amtlong='1227' or amtlong='1228' or amtlong='1229' or amtlong='1230' or amtlong='1231' or amtlong='1232' or amtlong='1233' or amtlong='1234' or amtlong='1235' or amtlong='1236' or amtlong='1237' or amtlong='1238' or amtlong='1239' or amtlong='1240' or amtlong='1241' or amtlong='1242' or amtlong='1243' or amtlong='1244' or amtlong='1245' or amtlong='1246' or amtlong='1247' or amtlong='1248' or amtlong='1249' or amtlong='1250' or amtlong='1251' or amtlong='1252' or amtlong='1253' or amtlong='1254' or amtlong='1255' or amtlong='1256' or amtlong='1257' or amtlong='1258' or amtlong='1259' or amtlong='1260' or amtlong='1261' or amtlong='1262' or amtlong='1263' or amtlong='1264' or amtlong='1265' or amtlong='1266' or amtlong='1267' or amtlong='1268' or amtlong='1269' or amtlong='1270' or amtlong='1271' or amtlong='1272' or amtlong='1273' or amtlong='1274' or amtlong='1275' or amtlong='1276' or amtlong='1277' or amtlong='1278' or amtlong='1279' or amtlong='1280' or amtlong='1281' or amtlong='1282' or amtlong='1283' or amtlong='1284' or amtlong='1285' or amtlong='1286' or amtlong='1287' or amtlong='1288' or amtlong='1289' or amtlong='1290' or amtlong='1291' or amtlong='1292' or amtlong='1293' or amtlong='1294' or amtlong='1295' or amtlong='1296' or amtlong='1297' or amtlong='1298' or amtlong='1299' or amtlong='1300' or amtlong='1301' or amtlong='1302' or amtlong='1303' or amtlong='1304' or amtlong='1305' or amtlong='1306' or amtlong='1307' or amtlong='1308' or amtlong='1309' or amtlong='1310' or amtlong='1311' or amtlong='1312' or amtlong='1313' or amtlong='1314' or amtlong='1315' or amtlong='1316' or amtlong='1317' or amtlong='1318' or amtlong='1319' or amtlong='1320' or amtlong='1321' or amtlong='1322' or amtlong='1323' or amtlong='1324' or amtlong='1325' or amtlong='1326' or amtlong='1327' or amtlong='1328' or amtlong='1329' or amtlong='1330' or amtlong='1331' or amtlong='1332' or amtlong='1333' or amtlong='1334' or amtlong='1335' or amtlong='1336' or amtlong='1337' or amtlong='1338' or amtlong='1339' or amtlong='1340' or amtlong='1341' or amtlong='1342' or amtlong='1343' or amtlong='1344' or amtlong='1345' or amtlong='1346' or amtlong='1347' or amtlong='1348' or amtlong='1349' or amtlong='1350' or amtlong='1351' or amtlong='1352' or amtlong='1353' or amtlong='1354' or amtlong='1355' or amtlong='1356' or amtlong='1357' or amtlong='1358' or amtlong='1359' or amtlong='1360' or amtlong='1361' or amtlong='1362' or amtlong='1363' or amtlong='1364' or amtlong='1365' or amtlong='1366' or amtlong='1367' or amtlong='1368' or amtlong='1369' or amtlong='1370' or amtlong='1371' or amtlong='1372' or amtlong='1373' or amtlong='1374' or amtlong='1375' or amtlong='1376' or amtlong='1377' or amtlong='1378' or amtlong='1379' or amtlong='1380' or amtlong='1381' or amtlong='1382' or amtlong='1383' or amtlong='1384' or amtlong='1385' or amtlong='1386' or amtlong='1387' or amtlong='1388' or amtlong='1389' or amtlong='1390' or amtlong='1391' or amtlong='1392' or amtlong='1393' or amtlong='1394' or amtlong='1395' or amtlong='1396' or amtlong='1397' or amtlong='1398' or amtlong='1399' or amtlong='1400' or amtlong='1401' or amtlong='1402' or amtlong='1403' or amtlong='1404' or amtlong='1405' or amtlong='1406' or amtlong='1407' or amtlong='1408' or amtlong='1409' or amtlong='1410' or amtlong='1411' or amtlong='1412' or amtlong='1413' or amtlong='1414' or amtlong='1415' or amtlong='1416' or amtlong='1417' or amtlong='1418' or amtlong='1419' or amtlong='1420' or amtlong='1421' or amtlong='1422' or amtlong='1423' or amtlong='1424' or amtlong='1425' or amtlong='1426' or amtlong='1427' or amtlong='1428' or amtlong='1429' or amtlong='1430' or amtlong='1431' or amtlong='1432' or amtlong='1433' or amtlong='1434' or amtlong='1435' or amtlong='1436' or amtlong='1437' or amtlong='1438' or amtlong='1439' or amtlong='1440' or amtlong='1441' or amtlong='1442' or amtlong='1443' or amtlong='1444' or amtlong='1445' or amtlong='1446' or amtlong='1447' or amtlong='1448' or amtlong='1449' or amtlong='1450' or amtlong='1451' or amtlong='1452' or amtlong='1453' or amtlong='1454' or amtlong='1455' or amtlong='1456' or amtlong='1457' or amtlong='1458' or amtlong='1459' or amtlong='1460' or amtlong='1461' or amtlong='1462' or amtlong='1463' or amtlong='1464' or amtlong='1465' or amtlong='1466' or amtlong='1467' or amtlong='1468' or amtlong='1469' or amtlong='1470' or amtlong='1471' or amtlong='1472' or amtlong='1473' or amtlong='1474' or amtlong='1475' or amtlong='1476' or amtlong='1477' or amtlong='1478' or amtlong='1479' or amtlong='1480' or amtlong='1481' or amtlong='1482' or amtlong='1483' or amtlong='1484' or amtlong='1485' or amtlong='1486' or amtlong='1487' or amtlong='1488' or amtlong='1489' or amtlong='1490' or amtlong='1491' or amtlong='1492' or amtlong='1493' or amtlong='1494' or amtlong='1495' or amtlong='1496' or amtlong='1497' or amtlong='1498' or amtlong='1499' or amtlong='1500' or amtlong='1501' or amtlong='1502' or amtlong='1503' or amtlong='1504' or amtlong='1505' or amtlong='1506' or amtlong='1507' or amtlong='1508' or amtlong='1509' or amtlong='1510' or amtlong='1511' or amtlong='1512' or amtlong='1513' or amtlong='1514' or amtlong='1515' or amtlong='1516' or amtlong='1517' or amtlong='1518' or amtlong='1519' or amtlong='1520' or amtlong='1521' or amtlong='1522' or amtlong='1523' or amtlong='1524' or amtlong='1525' or amtlong='1526' or amtlong='1527' or amtlong='1528' or amtlong='1529' or amtlong='1530' or amtlong='1531' or amtlong='1532' or amtlong='1533' or amtlong='1534' or amtlong='1535' or amtlong='1536' or amtlong='1537' or amtlong='1538' or amtlong='1539' or amtlong='1540' or amtlong='1541' or amtlong='1542' or amtlong='1543' or amtlong='1544' or amtlong='1545' or amtlong='1546' or amtlong='1547' or amtlong='1548' or amtlong='1549' or amtlong='1550' or amtlong='1551' or amtlong='1552' or amtlong='1553' or amtlong='1554' or amtlong='1555' or amtlong='1556' or amtlong='1557' or amtlong='1558' or amtlong='1559' or amtlong='1560' or amtlong='1561' or amtlong='1562' or amtlong='1563' or amtlong='1564' or amtlong='1565' or amtlong='1566' or amtlong='1567' or amtlong='1568' or amtlong='1569' or amtlong='1570' or amtlong='1571' or amtlong='1572' or amtlong='1573' or amtlong='1574' or amtlong='1575' or amtlong='1576' or amtlong='1577' or amtlong='1578' or amtlong='1579' or amtlong='1580' or amtlong='1581' or amtlong='1582' or amtlong='1583' or amtlong='1584' or amtlong='1585' or amtlong='1586' or amtlong='1587' or amtlong='1588' or amtlong='1589' or amtlong='1590' or amtlong='1591' or amtlong='1592' or amtlong='1593' or amtlong='1594' or amtlong='1595' or amtlong='1596' or amtlong='1597' or amtlong='1598' or amtlong='1599' or amtlong='1600' or amtlong='1601' or amtlong='1602' or amtlong='1603' or amtlong='1604' or amtlong='1605' or amtlong='1606' or amtlong='1607' or amtlong='1608' or amtlong='1609' or amtlong='1610' or amtlong='1611' or amtlong='1612' or amtlong='1613' or amtlong='1614' or amtlong='1615' or amtlong='1616' or amtlong='1617' or amtlong='1618' or amtlong='1619' or amtlong='1620' or amtlong='1621' or amtlong='1622' or amtlong='1623' or amtlong='1624' or amtlong='1625' or amtlong='1626' or amtlong='1627' or amtlong='1628' or amtlong='1629' or amtlong='1630' or amtlong='1631' or amtlong='1632' or amtlong='1633' or amtlong='1634' or amtlong='1635' or amtlong='1636' or amtlong='1637' or amtlong='1638' or amtlong='1639' or amtlong='1640' or amtlong='1641' or amtlong='1642' or amtlong='1643' or amtlong='1644' or amtlong='1645' or amtlong='1646' or amtlong='1647' or amtlong='1648' or amtlong='1649' or amtlong='1650' or amtlong='1651' or amtlong='1652' or amtlong='1653' or amtlong='1654' or amtlong='1655' or amtlong='1656' or amtlong='1657' or amtlong='1658' or amtlong='1659' or amtlong='1660' or amtlong='1661' or amtlong='1662' or amtlong='1663' or amtlong='1664' or amtlong='1665' or amtlong='1666' or amtlong='1667' or amtlong='1668' or amtlong='1669' or amtlong='1670' or amtlong='1671' or amtlong='1672' or amtlong='1673' or amtlong='1674' or amtlong='1675' or amtlong='1676' or amtlong='1677' or amtlong='1678' or amtlong='1679' or amtlong='1680' or amtlong='1681' or amtlong='1682' or amtlong='1683' or amtlong='1684' or amtlong='1685' or amtlong='1686' or amtlong='1687' or amtlong='1688' or amtlong='1689' or amtlong='1690' or amtlong='1691' or amtlong='1692' or amtlong='1693' or amtlong='1694' or amtlong='1695' or amtlong='1696' or amtlong='1697' or amtlong='1698' or amtlong='1699' or amtlong='1700' or amtlong='1701' or amtlong='1702' or amtlong='1703' or amtlong='1704' or amtlong='1705' or amtlong='1706' or amtlong='1707' or amtlong='1708' or amtlong='1709' or amtlong='1710' or amtlong='1711' or amtlong='1712' or amtlong='1713' or amtlong='1714' or amtlong='1715' or amtlong='1716' or amtlong='1717' or amtlong='1718' or amtlong='1719' or amtlong='1720' or amtlong='1721' or amtlong='1722' or amtlong='1723' or amtlong='1724' or amtlong='1725' or amtlong='1726' or amtlong='1727' or amtlong='1728' or amtlong='1729' or amtlong='1730' or amtlong='1731' or amtlong='1732' or amtlong='1733' or amtlong='1734' or amtlong='1735' or amtlong='1736' or amtlong='1737' or amtlong='1738' or amtlong='1739' or amtlong='1740' or amtlong='1741' or amtlong='1742' or amtlong='1743' or amtlong='1744' or amtlong='1745' or amtlong='1746' or amtlong='1747' or amtlong='1748' or amtlong='1749' or amtlong='1750' or amtlong='1751' or amtlong='1752' or amtlong='1753' or amtlong='1754' or amtlong='1755' or amtlong='1756' or amtlong='1757' or amtlong='1758' or amtlong='1759' or amtlong='1760' or amtlong='1761' or amtlong='1762' or amtlong='1763' or amtlong='1764' or amtlong='1765' or amtlong='1766' or amtlong='1767' or amtlong='1768' or amtlong='1769' or amtlong='1770' or amtlong='1771' or amtlong='1772' or amtlong='1773' or amtlong='1774' or amtlong='1775' or amtlong='1776' or amtlong='1777' or amtlong='1778' or amtlong='1779' or amtlong='1780' or amtlong='1781' or amtlong='1782' or amtlong='1783' or amtlong='1784' or amtlong='1785' or amtlong='1786' or amtlong='1787' or amtlong='1788' or amtlong='1789' or amtlong='1790' or amtlong='1791' or amtlong='1792' or amtlong='1793' or amtlong='1794' or amtlong='1795' or amtlong='1796' or amtlong='1797' or amtlong='1798' or amtlong='1799' or amtlong='1800' or amtlong='1801' or amtlong='1802' or amtlong='1803' or amtlong='1804' or amtlong='1805' or amtlong='1806' or amtlong='1807' or amtlong='1808' or amtlong='1809' or amtlong='1810' or amtlong='1811' or amtlong='1812' or amtlong='1813' or amtlong='1814' or amtlong='1815' or amtlong='1816' or amtlong='1817' or amtlong='1818' or amtlong='1819' or amtlong='1820' or amtlong='1821' or amtlong='1822' or amtlong='1823' or amtlong='1824' or amtlong='1825' or amtlong='1826' or amtlong='1827' or amtlong='1828' or amtlong='1829' or amtlong='1830' or amtlong='1831' or amtlong='1832' or amtlong='1833' or amtlong='1834' or amtlong='1835' or amtlong='1836' or amtlong='1837' or amtlong='1838' or amtlong='1839' or amtlong='1840' or amtlong='1841' or amtlong='1842' or amtlong='1843' or amtlong='1844' or amtlong='1845' or amtlong='1846' or amtlong='1847' or amtlong='1848' or amtlong='1849' or amtlong='1850' or amtlong='1851' or amtlong='1852' or amtlong='1853' or amtlong='1854' or amtlong='1855' or amtlong='1856' or amtlong='1857' or amtlong='1858' or amtlong='1859' or amtlong='1860' or amtlong='1861' or amtlong='1862' or amtlong='1863' or amtlong='1864' or amtlong='1865' or amtlong='1866' or amtlong='1867' or amtlong='1868' or amtlong='1869' or amtlong='1870' or amtlong='1871' or amtlong='1872' or amtlong='1873' or amtlong='1874' or amtlong='1875' or amtlong='1876' or amtlong='1877' or amtlong='1878' or amtlong='1879' or amtlong='1880' or amtlong='1881' or amtlong='1882' or amtlong='1883' or amtlong='1884' or amtlong='1885' or amtlong='1886' or amtlong='1887' or amtlong='1888' or amtlong='1889' or amtlong='1890' or amtlong='1891' or amtlong='1892' or amtlong='1893' or amtlong='1894' or amtlong='1895' or amtlong='1896' or amtlong='1897' or amtlong='1898' or amtlong='1899' or amtlong='1900' or amtlong='1901' or amtlong='1902' or amtlong='1903' or amtlong='1904' or amtlong='1905' or amtlong='1906' or amtlong='1907' or amtlong='1908' or amtlong='1909' or amtlong='1910' or amtlong='1911' or amtlong='1912' or amtlong='1913' or amtlong='1914' or amtlong='1915' or amtlong='1916' or amtlong='1917' or amtlong='1918' or amtlong='1919' or amtlong='1920' or amtlong='1921' or amtlong='1922' or amtlong='1923' or amtlong='1924' or amtlong='1925' or amtlong='1926' or amtlong='1927' or amtlong='1928' or amtlong='1929' or amtlong='1930' or amtlong='1931' or amtlong='1932' or amtlong='1933' or amtlong='1934' or amtlong='1935' or amtlong='1936' or amtlong='1937' or amtlong='1938' or amtlong='1939' or amtlong='1940' or amtlong='1941' or amtlong='1942' or amtlong='1943' or amtlong='1944' or amtlong='1945' or amtlong='1946' or amtlong='1947' or amtlong='1948' or amtlong='1949' or amtlong='1950' or amtlong='1951' or amtlong='1952' or amtlong='1953' or amtlong='1954' or amtlong='1955' or amtlong='1956' or amtlong='1957' or amtlong='1958' or amtlong='1959' or amtlong='1960' or amtlong='1961' or amtlong='1962' or amtlong='1963' or amtlong='1964' or amtlong='1965' or amtlong='1966' or amtlong='1967' or amtlong='1968' or amtlong='1969' or amtlong='1970' or amtlong='1971' or amtlong='1972' or amtlong='1973' or amtlong='1974' or amtlong='1975' or amtlong='1976' or amtlong='1977' or amtlong='1978' or amtlong='1979' or amtlong='1980' or amtlong='1981' or amtlong='1982' or amtlong='1983' or amtlong='1984' or amtlong='1985' or amtlong='1986' or amtlong='1987' or amtlong='1988' or amtlong='1989' or amtlong='1990' or amtlong='1991' or amtlong='1992' or amtlong='1993' or amtlong='1994' or amtlong='1995' or amtlong='1996' or amtlong='1997' or amtlong='1998' or amtlong='1999' or amtlong='2000' or amtlong='2001' or amtlong='2002' or amtlong='2003' or amtlong='2004' or amtlong='2005' or amtlong='2006' or amtlong='2007' or amtlong='2008' or amtlong='2009' or amtlong='2010' or amtlong='2011' or amtlong='2012' or amtlong='2013' or amtlong='2014' or amtlong='2015' or amtlong='2016' or amtlong='2017' or amtlong='2018' or amtlong='2019' or amtlong='2020' or amtlong='2021' or amtlong='2022' or amtlong='2023' or amtlong='2024' or amtlong='2025' or amtlong='2026' or amtlong='2027' or amtlong='2028' or amtlong='2029' or amtlong='2030' or amtlong='2031' or amtlong='2032' or amtlong='2033' or amtlong='2034' or amtlong='2035' or amtlong='2036' or amtlong='2037' or amtlong='2038' or amtlong='2039' or amtlong='2040' or amtlong='2041' or amtlong='2042' or amtlong='2043' or amtlong='2044' or amtlong='2045' or amtlong='2046' or amtlong='2047' ) 
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/
select count(*) from ydb_example_shu where ydbpartion = '3000w' and ( content='娃哈哈桂圆莲子八宝粥' or content='500ml娃哈哈非常冰红茶' or content='280ml娃哈哈营养快线原味' or content='280ml娃哈哈营养快线菠萝' or content='500ml娃哈哈营养快线原味' or content='500ml娃哈哈营养快线菠萝' or content='350ml呦呦奶茶原味' or content='350ml呦呦奶茶桂花' or content='350ml呦呦奶茶茉莉' or content='王老吉凉茶' or content='355ml可口可乐' or content='355ml雪碧' or content='355ml醒目苹果' or content='355ml醒目西瓜' or content='600ml雪碧' or content='600ml可口可乐' or content='500ml醒目苹果' or content='可口可乐' or content='雪碧' or content='330ml酷儿橙汁' or content='470ml茶研工坊清研' or content='480ml雀巢冰爽柠檬茶' or content='450ml美汁源果粒橙' or content='美汁源果粒橙' or content='光明橙汁饮料' or content='香派红糖姜茶' or content='雀巢咖啡盒装' or content='雀巢咖啡12' or content='农夫果园100胡萝卜' or content='农夫果园100番茄味' or content='550ml农夫山泉天然水普通型' or content='380ml农夫山泉天然水' or content='600ml农夫果园30橙胡味' or content='600ml农夫果园30菠芒' or content='380ml农夫果园30番莓味' or content='红牛饮料促销' or content='80g香飘飘奶茶原味' or content='80g香飘飘奶茶草莓' or content='80g香飘飘奶茶麦香' or content='80g香飘飘奶茶香芋' or content='70g香飘飘珍珠奶茶香芋' or content='70g香飘飘珍珠奶茶巧克力' or content='70g香飘飘珍珠奶茶原味红茶' or content='72g大好大香约奶茶哈密瓜' or content='22g大好大香约条装奶茶香芋' or content='22g大好大香约条装奶茶草莓' or content='22g大好大香约条装奶茶原味' or content='80g喜之郎优乐美原味' or content='480ml雀巢冰极茶' or content='香派蜂蜜姜茶' or content='雀巢咖啡' or content='雀巢咖啡伴侣' or content='雀巢咖啡杯装' or content='雀巢咖啡1210条装' or content='康师傅橙汁饮品' or content='490ml康师傅冰红茶' or content='500ml康师傅茉莉清茶' or content='500ml康师傅每日C葡萄' or content='340ml康师傅冰红茶' or content='340ml康师傅每日C橙汁' or content='340ml康师傅每日C水晶葡萄' or content='250ml康师傅冰红茶' or content='250ml康师傅橙汁饮料' or content='72g相约奶茶原味' or content='72g相约奶茶麦香' or content='72g相约奶茶咖啡' or content='72g相约奶茶巧克力' or content='72g相约奶茶草莓' or content='80g喜之郎优乐美香芋' or content='80g喜之郎优乐美草莓' or content='80g喜之郎优乐美麦香' or content='500ml娃哈哈营养快线香草' or content='600ml娃哈哈激活柠檬' or content='600ml娃哈哈激活柑橘' or content='500ml娃哈哈龙井绿茶低糖' or content='350ml启力卡布奇诺口味' or content='350ml启力焦糖玛奇朵口味' or content='200ml娃哈哈爽歪歪益生菌' or content='550ml尖叫纤维饮料柠檬味' or content='550ml尖叫运动饮料西柚' or content='550ml尖叫植物饮料复合果味' or content='农夫果园30菠芒味' or content='农夫果园30番莓味' or content='250ML红牛' or content='农夫果园30橙胡味' or content='农夫果园100橙汁' or content='500ml康师傅水晶葡萄' or content='500ml康师傅水蜜桃' or content='500ml康师傅每日C橙汁' or content='500ml康师傅绿茶' or content='480ml原叶冰红茶' or content='480ml原叶绿茶' or content='500ml娃哈哈思慕C香橙味' or content='500ml娃哈哈思慕C桃杏味' or content='500ml娃哈哈思慕C芒果味' or content='250ml娃哈哈营养快线菠萝味' or content='250ml娃哈哈营养快线原味' or content='600ML芬达' or content='500ml醒目西瓜味' or content='470ml茶研工坊清本绿茶' or content='220ml娃哈哈乳娃娃' or content='500ml呦呦奶茶奶味茶桂花' or content='500ml呦呦奶茶奶味茶原味' or content='500ml呦呦奶茶奶味茶茉莉' or content='450ml酷儿橙汁' or content='500ml康师傅每日C水晶葡萄' or content='550ml水森活纯净水' or content='娃哈哈纯净水' or content='596ml娃哈哈纯真年代' or content='娃哈哈纯净水' or content='农夫山泉天然水' or content='农夫山泉天然水' or content='600ml康师傅纯净水' or content='350ml康师傅纯净水' or content='250ml伊利早餐奶麦香' or content='250ml伊利早餐奶鸡蛋' or content='250ml伊利双果奇缘芒果西蕃莲' or content='250ml伊利双果奇缘荔枝梨' or content='250ml伊利双果奇缘哈密瓜猕猴桃' or content='娃哈哈AD钙奶220ml24' or content='250ml伊利优酸乳原味' or content='250ml伊利优酸乳草莓味' or content='250ml伊利双果奇缘菠萝橙味' or content='250ml伊利果之优酸乳原味' or content='250ml伊利果之优酸乳草莓' or content='250ml伊利果之优酸乳菠萝' or content='250ml伊利早餐奶核桃' or content='250ml伊利早餐奶花生味' or content='250ml伊利草莓奶' or content='250ml伊利优酸乳蓝莓味' or content='250ml伊利双果奇缘木瓜杏味' or content='伊利纯牛奶' or content='伊利营养舒化奶全脂型' or content='伊利营养舒化奶低脂' or content='308g广信大冰糖' or content='80g百诺麦丽素' or content='77g百诺巧克力草莓' or content='85g百诺奶心果仁' or content='37g曼妥思薄荷条装' or content='37g曼妥思青柠条装' or content='35g阿尔卑斯牛奶条装' or content='35g阿尔卑斯草莓条装' or content='阿尔卑斯牛奶' or content='阿尔卑斯鲜橙' or content='69g清嘴含片草莓味' or content='69g清嘴含片柠檬味' or content='绿箭三条装' or content='益达蓝莓单条装' or content='益达木糖醇草莓饼装40粒' or content='益达木糖醇薄荷饼装40粒' or content='瑞士糖草莓味条装' or content='瑞士糖黑加仑子味条装' or content='25g旺仔QQ糖葡萄' or content='25g旺仔QQ糖菠萝' or content='25g旺仔QQ糖草莓' or content='70g旺仔QQ糖水蜜桃' or content='70g旺仔QQ糖荔枝' or content='70g旺仔QQ糖草莓' or content='120g上好佳青苹果硬糖' or content='120g上好佳什锦果糖' or content='120上好佳牛奶软糖' or content='120g上好佳缤纷什锦软糖' or content='王老吉润喉糖' or content='18g旺仔牛奶糖' or content='120g上好佳提子硬糖' or content='大大切切乐泡泡糖蜜瓜味' or content='35g瑞士糖草莓味条装' or content='35g瑞士青苹果味条装' or content='瑞士糖柠檬味条装' or content='瑞士糖香橙味条装' or content='瑞士糖黑加仑子味条装' or content='大大卷切切乐草莓味12卷' or content='大大卷切切乐青柠味12卷' or content='绿箭薄荷糖原味' or content='绿箭薄荷糖茉莉花茶' or content='绿箭瓶装40粒' or content='绿箭三条装' or content='绿箭超强薄荷味单支装' or content='五片绿箭单支装' or content='绿箭分享包' or content='益达蓝莓单条装' or content='益达香浓蜜瓜40粒瓶装' or content='100g喔喔奶糖红豆味' or content='100g喔喔奶糖原味' or content='阿尔卑斯棒棒糖牛奶味' or content='阿尔卑斯棒棒糖草莓味' or content='阿尔卑斯棒棒糖芒果' or content='阿尔卑斯棒棒糖树莓' or content='25g旺仔QQ糖蓝莓' or content='70g旺仔QQ糖菠萝' or content='70g旺仔QQ糖蓝莓' or content='70g旺仔QQ糖葡萄' or content='阿尔卑斯棒棒糖香蕉' or content='阿尔卑斯棒棒糖香草' or content='果然多CC卷菠萝' or content='果然多CC卷草莓' or content='150G金娃维C果冻爽' or content='185G金娃大果肉果冻' or content='218G金娃高钙椰果果冻' or content='90g喜之郎香橙味果冻' or content='200g喜之郎果肉单杯混装' or content='218g喜之郎蜜桃果冻爽' or content='218g喜之郎荔枝果冻爽' or content='150g喜之郎荔枝维C爽' or content='150g喜之郎芒果维C爽' or content='150g喜之郎苹果维C爽' or content='117g喜之郎茶味果冻桶' or content='117g喜之郎咖啡味果冻桶' or content='150G喜之郎菠萝维C爽' or content='150G喜之郎香橙维C爽' or content='150G喜之郎葡萄维C爽' or content='218G喜之朗苹果果冻爽' or content='旺旺咖啡冻' or content='218g喜之郎芒果味果冻爽' or content='18G奇多牛排' or content='18G奇多火鸡' or content='70G奇多牛排' or content='70G奇多火鸡' or content='100G正航梳打奶油饼' or content='100GD正航葱香味薄片饼' or content='100G正航烧烤味薄片饼' or content='120G正航蛋黄饼干' or content='110G正航蛋奶饼干' or content='60G正航快乐熊仔饼' or content='60G正航快乐趣味饼' or content='50G乐事原味' or content='50G乐事烧烤' or content='50G乐事红烩' or content='50G乐事番茄' or content='50G乐事波番茄' or content='50G乐事波烤肋' or content='120G乐事原味' or content='120G乐事烤肉' or content='120G乐事海鲜' or content='120G乐事番茄' or content='18G乐事原味' or content='18G乐事烧烤' or content='18G乐事红烩' or content='18G乐事番茄' or content='125g达能牛奶香脆' or content='130g达能牛奶特浓夹心' or content='130g达能牛奶特浓花生味夹心' or content='45g达能牛奶香脆便利装' or content='100g达能牛奶佳钙夹心牛奶' or content='100g达能牛奶佳钙甜脆饼干' or content='105g达能牛奶佳钙甜酥饼干' or content='达能无限脆饼干玉米味' or content='85g达能王子巧颗粒曲奇星' or content='120g达能王子夹心草莓味' or content='120g达能王子夹心巧克力味' or content='100g达能甜趣' or content='100g达能闲趣' or content='500G福马蛋黄派' or content='小熊维尼灌心饼牛奶味' or content='小熊维尼灌心饼草莓味' or content='小熊灌心饼奶油味' or content='小熊灌心饼草莓味' or content='375G福马蛋黄派' or content='40G福马爱尚非蛋糕香蕉味' or content='40G爱尚非蛋糕草莓味' or content='80G爱尚非蛋糕草莓味' or content='80G爱尚非蛋糕椰香味' or content='160G爱尚非蛋糕草莓味' or content='格里高百力濨白脱味' or content='格力高双层百力滋巧克力味' or content='格力高双层百力滋奶咖味' or content='100g格力高菜园小饼芝麻味' or content='100g格力高菜园小饼烧烤味' or content='18g妙脆角葱香原味' or content='咪咪巧克力棒蛋奶味' or content='18g妙脆角美式茄汁' or content='18g妙脆角魔力炭烧' or content='18g妙脆角香浓辣鸡' or content='40g妙脆角魔力炭烧' or content='40g妙脆角葱香原味' or content='40g妙脆角美式茄汁' or content='200g三辉法式香奶面包' or content='200g三辉日式点心面包' or content='84g旺旺雪饼' or content='52g旺旺仙贝' or content='上好佳天然薯片原味' or content='上好佳天然薯片烤肉口味' or content='上好佳鲜虾片' or content='上好佳朱古力粟米条' or content='上好佳可可甜心香芋味' or content='50g迪士尼牛奶灌心饼' or content='50g迪士尼草莓灌心饼' or content='40g迪士尼后调味红烧牛肉棒' or content='30g迪士尼后牛奶棒' or content='45g迪士尼草莓灌心饼' or content='105g迪士尼葱香味饼' or content='100g正航薄饼奶油味' or content='380g正航快乐乖乖兔饼干' or content='380g正航快乐趣味饼干' or content='500g正航玉米酥饼干' or content='500g正航花生酥' or content='100g正航巧克力薄饼' or content='上好佳天然薯片番茄口味' or content='上好佳鲜虾条' or content='上好佳荷兰豆' or content='上好佳玉米口味' or content='上好佳玉米花果仁奶油' or content='上好佳玉米卷' or content='上好佳草莓栗米条' or content='上好佳番茄薯条' or content='上好佳可可甜心' or content='上好佳日本鱼果海苔味' or content='125g康师傅32甜苏打奶油' or content='125g康师傅32甜苏打柠檬' or content='125g康师傅32甜苏打香巧' or content='125g康师傅32甜苏打蓝莓' or content='125g康师傅32甜苏打咖啡牛奶' or content='100g康师傅32咸苏打葱香味' or content='118g康师傅32酥松奶油' or content='118g康师傅32酥松花生' or content='118g康师傅32酥松巧克力' or content='118g康师傅32酥松草莓' or content='80g康师傅咸酥醇香奶油' or content='80g康师傅咸酥葱香奶油' or content='80g康师傅咸酥火腿芝士' or content='80g康师傅甜酥榛巧' or content='80g康师傅甜酥柠檬' or content='80g康师傅甜酥蓝莓' or content='80g康师傅甜酥酸奶' or content='80g康师傅蛋黄酥酥牛奶' or content='80g康师傅蛋黄酥酥原味' or content='85g康师傅美味酥葱香' or content='85g康师傅美味酥烧烤' or content='85g康师傅美味酥蒜香鸡蓉' or content='85g康师傅美味酥黑胡椒牛排' or content='85g康师傅美味酥海苔' or content='96g康师傅妙芙欧式奶油' or content='96g康师傅妙芙欧式巧克力' or content='96g康师傅妙芙欧式香芋牛奶' or content='96g康师傅妙芙欧式鲜橙牛奶' or content='40g康师傅彩笛卷巧克力' or content='40g康师傅彩笛卷草莓' or content='40g康师傅彩笛卷哈密瓜' or content='60g康师傅乐芙球牛奶' or content='60g康师傅乐芙球巧克力' or content='60g康师傅乐芙球草莓' or content='60g康师傅乐芙球蓝莓' or content='好丽友巧克力派6枚装' or content='好丽友巧克力派2枚装' or content='好丽友好多鱼浓香茄汁' or content='百力滋微辣比萨味' or content='好丽友蘑古力香浓巧克力' or content='好丽友蘑古力红豆巧克力' or content='好丽友注心蛋黄派2枚装' or content='格力高菜园小饼番茄味' or content='达能王子夹心饼干牛奶巧克力' or content='200G咪咪虾条' or content='明治欣欣杯巧克力味' or content='明治欣欣杯香蕉味' or content='明治欣欣杯牛奶味' or content='明治欣欣杯香橙味' or content='明治欣欣杯草莓味' or content='明治欣欣杯香橙味' or content='明治欣欣杯朱古力' or content='明治欣欣杯草莓味' or content='明治欣欣杯香蕉味' or content='150g长鼻王麦烧葱香口味' or content='130g长鼻王麦烧蛋黄夹心' or content='150g长鼻王麦烧海苔芝麻味' or content='150g长鼻王麦烧原味' or content='130g长鼻王麦烧花生夹心' or content='150g长鼻王麦烧蕃茄口味' or content='130g长鼻王麦烧巧克力夹心' or content='160g长鼻王夹心卷蛋黄口味' or content='48g长鼻王夹心卷蛋黄口味' or content='90g卡夫奥利奥威化巧克力5条' or content='75g卡夫奥利奥夹心巧克力饼干' or content='80g凯达e趣夹心饼干奶油味' or content='118g好搭档沙琪玛' or content='绿豆糕' or content='红豆糕' or content='桂花糕' or content='桔红糕' or content='蛋糕' or content='蛋糕' or content='蛋糕' or content='蛋糕' or content='蛋糕' or content='蛋糕' or content='125g鬼脸嘟嘟花生' or content='125g鬼脸嘟嘟草莓' or content='哥俩好沙琪玛促销装' or content='100g太平梳打饼干蔬菜' or content='100g太平梳打饼干奶盐' or content='100g太平梳打饼干香葱' or content='350g康元柠檬卜夹心饼干' or content='80g凯达e趣夹心饼干柠檬味' or content='好多鱼烧烤味' or content='好丽友蛋黄派注心蛋黄' or content='亿合牛奶鸡蛋虾条' or content='亿合原香味虾条' or content='亿合什锦派' or content='亿合原香味虾片' or content='50G乐事芒果味' or content='50G乐事青柠味' or content='50G乐事鸡翅味' or content='50G乐事黄瓜味' or content='旺旺煎饼鸡蛋煎饼' or content='达能王子曲奇星饼干醇香奶油' or content='达能佳钙牛奶夹心饼干巧克力' or content='波力鸡蛋捲' or content='波力香葱捲' or content='福马咪咪虾条' or content='名称' or content='115g恒康青青豆' or content='96g恒康柳香瓜子' or content='105g恒康五香瓜子' or content='100g恒康小京生' or content='68g广信西瓜子' or content='118g香飘飘花生烤鸡味' or content='118g香飘飘花生牛肉味' or content='68g香飘飘花生牛肉味' or content='68g香飘飘花生原味' or content='80g大好大瓜子' or content='120g亿合锅巴烧烤味' or content='120g亿合锅巴麻辣味' or content='138g大好大瓜子奶油味' or content='香飘缘香辣花生鸡汁味' or content='香飘缘脆皮松松果奇味' or content='老酒花生' or content='香飘缘原味香辣花生' or content='大好大水煮花生五香味' or content='大好大水煮花生香辣' or content='香飘飘香辣花生烤鸡味' or content='130g广信台湾甘草梅' or content='128g广信冰糖杨梅' or content='128g广信盐津榄' or content='130g广信正野乌梅' or content='103g广信正宗话梅' or content='128g广信爽口榄' or content='128g广信台湾情人梅' or content='128g广信相思梅' or content='108g广信原味野乌梅' or content='23g洽洽怪怪豆麻辣' or content='23g洽洽怪怪豆番茄' or content='23g洽洽怪怪豆五香' or content='52g洽洽怪怪豆五香' or content='晋禾宫廷无核枣' or content='晋禾阿胶无核枣' or content='85g亨仕利袋装话梅皇' or content='55g亨仕利袋装清香芒果' or content='40g亨仕利袋装广式话梅' or content='70g亨仕利袋装盐津山楂' or content='85g亨仕利袋装话梅肉' or content='85g亨仕利袋装话梅桃片' or content='120g亨仕利瓶装泰国话梅' or content='160g亨仕利瓶装野乌梅' or content='150g亨仕利瓶装吃不厌桃肉' or content='170g亨仕利瓶装特级话梅' or content='70g亨仕利盐津梅' or content='70g亨仕利盐津葡萄' or content='75g亨仕利情人梅' or content='180g亨仕利盐津葡萄' or content='180g亨仕利开胃金桔' or content='160g亨仕利话梅皇' or content='150g亨仕利盐津桃肉' or content='160g亨仕利话梅肉' or content='170g亨仕利话梅橄榄' or content='130g亨仕利盐津陈皮' or content='180g亨仕利相思梅' or content='160g亨仕利水晶杨梅' or content='150g亨仕利甘草桃肉' or content='亨仕利袋装盐津桃肉' or content='亨仕利袋装甘草桃肉' or content='亨仕利袋装相思梅' or content='太仓香酥肉松' or content='太仓肉松' or content='太仓塑盒原味肉松' or content='20g母亲牛肉棒原味' or content='20g母亲牛肉棒香烤' or content='10g母亲牛肉条葱爆' or content='10g母亲牛肉条麻辣' or content='10g母亲牛肉条原味' or content='波力渔趣鳕柳丝辣味' or content='波力渔趣鳕柳丝海苔味' or content='萨啦咪烤鸡脖' or content='萨啦咪啃德佬鸡翅' or content='萨啦咪小鸡腿' or content='萨啦咪11小鸡腿' or content='萨啦咪大鸡爪' or content='萨啦咪翅尖' or content='萨啦咪BB丸子' or content='萨啦咪鸭翅' or content='萨啦咪大鸡腿' or content='18G绿盛牛肉丁' or content='30G绿盛农夫与海鱼柳夹心' or content='28g绿盛牛肉丁芝麻味' or content='40g绿盛牛肉粒原汁' or content='40g绿盛牛肉粒沙嗲' or content='30g绿盛牛肉粒红烧卤汁' or content='100g祖名豆腐干海鲜' or content='100g祖名豆腐干肉汁' or content='100g祖名豆腐干五香' or content='100g祖名豆腐干鸡汁' or content='100g祖名豆腐干麻辣' or content='鱼派香烤鱼丝' or content='鱼派烟熏三文鱼味' or content='鱼派烧烤味' or content='鱼派烤墨鱼味' or content='鱼派天然原味' or content='鱼派泰式香辣味' or content='鱼派风味辣鱼片' or content='唯新牛肉脯原味' or content='唯新猪肉脯原味' or content='唯新金枪鱼脯原味' or content='唯新猪肉脯原味' or content='唯新猪肉脯果味' or content='唯新猪肉脯' or content='唯新猪肉脯黑胡椒味' or content='唯新猪肉脯麻辣味' or content='唐纳兹红烧牛肉粥' or content='唐纳兹桂圆核桃粉' or content='唐纳兹高钙桂花西湖藕粉' or content='唐纳兹葱香牛肉粥' or content='唐纳兹皮蛋瘦肉粥' or content='唐纳兹鸡肉粥' or content='唐纳兹核桃粉豆奶粉' or content='新达利清炖排骨米线' or content='新达利香辣排骨米线' or content='新达利酸辣牛肉米线' or content='新达利香辣牛肉米线' or content='新达利香菇炖鸡米线' or content='新达利酸辣牛肉桶装米线' or content='新达利香辣牛肉桶装米线' or content='新达利香辣排骨桶装米线' or content='新达利香菇炖鸡桶装米线' or content='新达利清炖排骨桶装米线' or content='华丰巴西烤肉' or content='华丰原汁牛排' or content='华丰台式烤肠' or content='华丰孜然羊排' or content='华丰香烤鸡翅' or content='华丰叉烧烤肉' or content='华丰碳烤牛肉' or content='华丰串烤甜虾' or content='华丰麻辣牛排' or content='华丰铁板牛肉' or content='华丰田园香辣鸡' or content='华丰阿根廷烤肉' or content='华丰德国香肠' or content='华丰挪威海鲜' or content='日清UFO铁板牛肉' or content='日清UFO四川火锅' or content='日清UFO虾仁炒面' or content='日清碗炒面大王糖醋排骨' or content='日清碗面炒大王葱油肉丝' or content='日清碗面炒大王八宝辣酱' or content='日清碗面炒大王红油辣肉' or content='日清点心杯香香牛肉' or content='日清点心杯鲜鲜虾仁' or content='日清点心杯美美罗宋汤' or content='日清袋炒面大王糖醋排骨' or content='日清袋炒面大王葱油肉丝' or content='日清骨汤拉面海鲜' or content='日清骨汤拉面牛骨' or content='日清面道什锦海鲜' or content='日清面道腐乳炖肉' or content='童师傅馄沌海鲜' or content='童师傅馄沌鲜肉' or content='统一小当家奇奇怪怪' or content='统一小当家魔力辣子鸡' or content='统一小当家红烧' or content='统一小当家香葱' or content='统一小当家五香' or content='统一小当家鸡汁' or content='好劲道上汤大骨麻辣牛肉' or content='好劲道上汤大骨红烧牛肉' or content='巧面馆香菇炖鸡袋面' or content='巧面馆红烧牛肉袋面' or content='来一桶鲜虾' or content='来一桶红烧' or content='好劲道鸡蛋面雪菜' or content='好劲道鸡蛋面五香' or content='袋统一100鲜虾鱼板面' or content='袋统一100葱爆牛肉面' or content='75g顾大嫂菜泡饭海鲜' or content='75g顾大嫂菜泡饭宫廷' or content='160g旺旺小馒头' or content='康师傅鱼板鲜虾面' or content='康师傅笋干老鸭煲' or content='康师傅红烧牛肉面' or content='康师傅鲜虾鱼板面' or content='康师傅红烧牛肉面' or content='康师傅香辣牛肉面袋' or content='康师傅红烧牛肉面袋' or content='康师傅魔鬼拉面' or content='康师傅蟹粉狮子头面' or content='康师傅香辣牛肉面' or content='康师傅东坡红烧肉面' or content='康师傅红烧烤牛肉面' or content='香飘飘方便粉丝鲜虾海苔' or content='香飘飘方便粉丝红烧牛肉' or content='香飘飘方便粉丝香辣排骨' or content='香飘飘过桥米线鲜虾海苔' or content='香飘飘过桥米线红烧牛肉' or content='香飘飘过桥米线川香酸辣' or content='香飘飘小馄饨香茹炖鸡' or content='香飘飘小馄饨海鲜虾仁' or content='香飘飘小馄饨上汤鲜肉' or content='香飘飘小馄饨香辣牛肉' or content='香飘飘汤年糕雪菜笋干' or content='香飘飘菜泡饭海鲜泡饭' or content='香飘飘菜泡饭鸡汁泡饭' or content='香飘飘菜泡饭霉菜扣肉' or content='康师傅海鲜碗面' or content='康师傅笋干老鸭煲碗面' or content='康师傅香辣牛肉碗面' or content='康师傅香菇炖鸡碗' or content='康师傅香菇炖鸡杯面' or content='巧面馆香菇炖鸡面桶装' or content='巧面馆红烧牛肉面桶装' or content='日清炒面大王黑椒牛柳' or content='日清开杯乐五香牛肉' or content='日清开杯乐意大利牛肉' or content='日清开杯乐香浓叉烧' or content='日清开杯乐虾仁原味' or content='日清开杯乐香辣牛肉' or content='日清面道精炖牛肉' or content='童师傅馄钝香菇' or content='童师傅馄钝牛肉' or content='娃哈哈大厨艺杭州片儿川' or content='娃哈哈大厨艺鲜汤虾仁' or content='娃哈哈大厨艺香辣牛肉味' or content='统一100浓香排骨面' or content='统一100精炖番茄牛肉面' or content='统一100红椒牛肉面' or content='康师傅东坡红烧肉面' or content='华丰魔法师怪味豆' or content='千喜鹤新驱动鸡肉肠' or content='千喜鹤金牌王中王' or content='千喜鹤王中王' or content='千喜鹤甜玉米香肠' or content='千喜鹤金装喜鹤王' or content='千喜鹤新驱动火腿肠' or content='千喜鹤鸡肉王' or content='伊利学生营养奶粉' or content='伊利学生高锌钙奶粉' or content='智多星AD钙豆奶粉' or content='香派西湖藕粉桂花莲子' or content='波力牛肉夹心鳕柳丝' or content='波力芝麻夹心鳕柳丝' or content='波力原味鳕柳丝' or content='波力香辣鳕柳丝' or content='波力海苔鳕柳丝' or content='波力原味鳕柳丝' or content='波力牛肉夹心鳕柳丝' or content='波力芝麻夹心鳕柳丝' or content='65g爽康香辣鸡翅' or content='70g爽康香酥凤爪' or content='85g爽康香酥鸡腿' or content='65g爽康酱汁鸭翅' or content='40g爽康精品喜蛋' or content='波力原味海苔' or content='波力原味海苔' or content='波力脆片海苔' or content='香派黑芝麻糊' or content='雀巢麦片高钙' or content='雀巢麦片燕麦' or content='伊利女士营养奶粉' or content='3克美好时光原味海苔' or content='美好时光45克海苔原味' or content='千喜鹤优级火腿肠' or content='千喜鹤金牌王中王火腿肠' or content='高露洁多能波浪型牙刷' or content='三笑2309牙刷' or content='90克高露洁防蛀美白牙膏' or content='140G高露洁三重功效' or content='90G高露洁草本牙膏' or content='三笑704香柠清香牙刷送手机链' or content='高露洁草本翠爽水晶牙膏' or content='三笑2413舒适洁净爱情海牙刷' or content='三笑S503纸卡牙刷' or content='90g佳洁士强根固齿' or content='90g佳洁士草本水晶' or content='120g田七双钙固齿' or content='140ML索芙特亮发保温嗜喱水' or content='175g夏士莲洗发水' or content='400ml舒蕾洗发水' or content='8g舒蕾洗发水简装去屑清爽型' or content='海飞丝洗发水简装去屑' or content='200ml飘柔日用护理' or content='小青清纯植物精华护发素营养润色' or content='小青清纯植物精华洗发露去屑修护' or content='小青清纯植物精华护发素修护顺滑' or content='小青溥纯植物精华洗发露舒爽顺滑' or content='舒蕾洗发露柔滑型' or content='飘柔洗发露去屑' or content='舒蕾凝水焗油洗发露简' or content='175ML夏士莲洗发水清爽长效' or content='380ML索芙特木瓜白肤香浴油精纯沐浴露' or content='120G索芙特木瓜白肤SOD蜜' or content='丁家宜洗面奶美白补水' or content='丁家宜洗面奶美白控油' or content='丁家宜男士活炭劲爽洁面乳' or content='200ml六神清新滋润沐浴露' or content='200ml舒肤佳沐浴露' or content='小青清纯植物养护洁面乳祛痘' or content='小青清纯植物养护洁面乳控油' or content='小青清纯植物养护洁面乳美白' or content='小青四季滋养护手霜' or content='小青清润美白保湿霜' or content='200ml六神清凉沐浴露绿茶' or content='300ML蓝月亮芦荟洗手液' or content='125g纳爱斯香皂' or content='雕牌增白皂' or content='300g雕牌洗衣粉' or content='180g雕牌天然皂粉' or content='纳爱斯珍珠营养香皂' or content='300g奥妙洗衣粉' or content='500g雕牌洗洁精' or content='威露士水果味洗手液' or content='蓝月亮芦荟抑菌洗手液' or content='226G奥妙皂' or content='135G奥妙皂' or content='V0002维达餐巾纸' or content='0261叶雷餐巾纸' or content='064GB清风餐巾纸' or content='180抽叶蕾错不了面纸' or content='8203纸音抽纸' or content='B66AD清风餐巾纸' or content='唯尔福卷筒纸' or content='6包真真手帕纸' or content='W112心相印皮夹' or content='C910心相印手帕纸' or content='B66AS清风手帕纸' or content='0012维达三色超柔手帕纸' or content='8801苗苗手帕纸' or content='8802苗苗260软抽' or content='8803苗苗180软抽' or content='0605叶蕾手帕纸' or content='0438叶蕾抽纸' or content='0575叶蕾抽纸' or content='苏菲立体护围日用洁翼5片' or content='苏菲动感丝薄日用洁翼5片' or content='苏菲弹力贴身日用洁翼10片' or content='苏菲弹力贴身夜用洁翼5片' or content='苏菲动感丝薄超长夜用洁翼4片' or content='苏菲柔棉日5片' or content='护舒宝护垫' or content='护舒宝棉柔日用' or content='102护舒宝瞬洁日用' or content='护舒宝棉柔夜用' or content='护舒宝日用丝薄' or content='护舒宝夜用丝薄' or content='2025珂蓉干爽网面' or content='2023珂蓉丝棉表层' or content='珂蓉倍爽卫生巾' or content='珂蓉快易加长日用' or content='苏菲柔棉夜5片' or content='护舒宝护垫棉柔表层' or content='2030珂蓉丝薄护翼卫生巾干爽网面' or content='女单面印花三角裤两条' or content='女单面印花三角裤两条' or content='女单面印花三角裤两条' or content='宜而爽女氨纶两条装三角裤' or content='宜而爽女氨纶两条装三角裤' or content='宜而爽女氨纶两条装三角裤' or content='宜而爽男单面三角裤两条' or content='宜而爽男单面三角裤两条' or content='奕清方巾A001' or content='奕清毛巾B1001' or content='奕清毛巾A1003' or content='奕清毛巾CM1601' or content='奕清毛巾C8120' or content='梦娜原子弹男棉袜运动A1508' or content='梦娜原子弹男棉袜A1517' or content='梦娜女棉袜B1308' or content='梦娜5双装水晶丝短袜130' or content='奕清毛巾B1004' or content='梦娜休闲男袜A1516' or content='梦娜休闲男袜A1857' or content='梦娜休闲男袜747' or content='梦娜休闲女袜6138' or content='梦娜休闲女袜6219' or content='梦娜休闲女袜6119' or content='长命电池7简' or content='长命电池5简' or content='长命电池7精' or content='长命电池5精' or content='双鹿电池7普' or content='双鹿电池5普' or content='双鹿碱性电池5' or content='好享和垃圾袋大' or content='好享和垃圾袋中' or content='好享和垃圾袋小' or content='好享和纸杯' or content='红珊瑚毛巾' or content='玉麒麟毛巾' or content='三利毛巾' or content='妍妍毛巾' or content='421盆' or content='420盆' or content='1130盆' or content='1137盆' or content='0233杯子' or content='1009杯子' or content='0227杯子' or content='奕清毛巾A1202' or content='兴盛不锈钢勺子' or content='热水瓶' or content='齐心抽杆夹' or content='得力透明板夹' or content='元昌订书机' or content='齐心订书机' or content='得力回型针' or content='得力大头针' or content='元昌图订' or content='得力订书针' or content='得力订书针' or content='齐心文件夹' or content='三木文件夹' or content='齐心C330按扣袋' or content='得力9545长尾夹' or content='得力9544长尾夹' or content='得力9492透明彩色票夹' or content='玛丽60页软抄' or content='玛丽80页硬抄' or content='玛丽100页硬抄' or content='得力美工刀' or content='得力美工刀' or content='益而高不锈钢剪刀' or content='HB中华绘图铅笔' or content='B中华绘图铅笔' or content='2B中华绘图铅笔' or content='金万年K1024中性笔' or content='晨光GP1212中性笔' or content='晨光GP1008中性笔' or content='齐BP102R圆珠笔' or content='晨光星潮ABP14701' or content='金万年K3019圆珠笔' or content='超级女生B1219C圆珠笔' or content='白金BS60圆珠笔' or content='400L学生三用圆规' or content='高博士饭盒' or content='高博士手工折纸' or content='高博士笔袋D160200404' or content='高博士笔袋D160200904' or content='3B中华绘图铅笔' or content='4B中华绘图铅笔' or content='5B中华绘图铅笔' or content='白雪修正液' or content='6B中华绘图铅笔' or content='西瓜太郎12色彩色笔' or content='马利水彩颜料' or content='西瓜太郎30CC胶水' or content='中华白雪考试专用套装' or content='超女活动铅笔' or content='长城牌高级绘图橡皮' or content='英语本' or content='练习本' or content='星光墨汁' or content='得力6230直尺' or content='得力6240直尺' or content='得力6415三角尺' or content='321有机半圆量角器' or content='长城滚轮橡皮' or content='15CM直尺' or content='得力笔筒' or content='得力7203修正带' or content='西瓜太郎修正贴' or content='得力7101固体胶' or content='齐心B2651固体胶' or content='永大双面胶' or content='永大双面胶' or content='永大学生胶带' or content='永大封箱带' or content='玛丽纪念册' or content='添美同学录' or content='真彩009中性笔' or content='真彩0341F中性笔' or content='晨光BP1188红圆珠笔' or content='真彩0221B中性笔' or content='齐心3636长尾夹15MM' or content='齐心3635长尾夹19MM' or content='齐心3634长尾夹25MM' or content='齐心3633长尾夹32MM' or content='齐心3632长尾夹41MM' or content='齐心无线装订本4503A5' or content='齐心无线装订本4506A5' or content='五千年中性笔W289' or content='五千年中性笔W297' or content='通乐圆珠笔G308' or content='青联横搁稿' or content='红双喜乒乓球拍' or content='红双喜乒乓球拍' or content='红双喜乒乓球一星' or content='红双喜乒乓球二星' or content='红双喜羽毛球' or content='粉条' or content='冬枣' or content='小黄花鱼' or content='毛芋头' or content='丰水梨' or content='冷冻带鱼' or content='冷冻黄花鱼' or content='干豆腐' or content='火龙果' or content='大蒜' or content='麻椒' or content='新土豆' or content='西瓜' or content='芸豆' or content='香瓜' or content='西兰花' or content='香雪原味面' or content='佳玉家庭装大米' or content='生姜' or content='黄瓜' or content='烤全腿' or content='伊利利乐枕纯奶' or content='辉山新版百利包奶' or content='五湖一级大豆油' or content='三锋苹果醋无糖' or content='鲜玉米' or content='长茄子' or content='鲜鸡蛋' or content='苹果醋袋装' or content='心相印卷纸' or content='重工茶肠' or content='桃子' or content='牛肉馅' or content='力士嫩白美肤浴露' or content='香雪特制精粉' or content='雕牌超白加香粉' or content='鱼丸' or content='特价牛肉' or content='力士嫩肤娇肤浴乳' or content='力士闪亮冰爽浴露' or content='追风立体弹力素' or content='自动电子健康秤' or content='梭鱼' or content='角瓜' or content='哈尔滨排骨肠' or content='豆中宝大酱' or content='松川屋青豆' or content='新自然鸡蛋面' or content='娃哈哈八宝粥' or content='脊骨' or content='上五花' or content='带皮前腿' or content='大成鸡翅根' or content='小白菜' or content='地雷瓜' or content='山竹' or content='伊丽沙白瓜' or content='优质大蒜' or content='金百味小火腿' or content='康师傅冰红茶' or content='西红柿' or content='卷心菜' or content='花生米' or content='羊肉片' or content='乐大妈风干肠' or content='重工盐水肠' or content='诚信小福烤肠' or content='老沈阳肉肠' or content='西红柿' or content='黄豆' or content='重工茶肠' or content='生鸡头' or content='海南木瓜' or content='红富士苹果' or content='黑小豆' or content='蒜台' or content='角瓜' or content='黄瓜' or content='饭豆' or content='滩枣' or content='辉山核桃花生奶' or content='山椒罗汉笋' or content='金百味优惠装' or content='辉山核桃麦香奶' or content='香雪大众挂面' or content='柚子茶' or content='黑牛核桃芝麻糊' or content='康师傅绿茶' or content='永春内蒙古肥羊卷' or content='带鱼段' or content='惠成白芝麻' or content='诚信哈尔滨红肠' or content='全南蜂蜜大枣茶' or content='有友泡凤爪' or content='牛奶佳钙清脆饼干' or content='牛奶佳钙酥松饼干' or content='全南蜂蜜芦荟茶' or content='阿雷猪蹄' or content='辉山原味酸奶' or content='全南蜂蜜柠檬茶' or content='品牌' or content='COCCI' or content='EINPAD' or content='E派' or content='GX' or content='HOt' or content='innos' or content='iwoo' or content='KENKO' or content='KISSU' or content='KOCIN' or content='LG' or content='NAIDE' or content='NEC' or content='TCL' or content='UT斯达康' or content='VERTU' or content='VEVA' or content='VIM伟恩' or content='阿尔法' or content='阿尔卡特' or content='阿凡提' or content='埃立特' or content='艾酷' or content='艾炜特' or content='爱宝隆' or content='爱尔马' or content='爱国者' or content='爱果' or content='爱久久' or content='爱肯' or content='爱酷' or content='爱立顺' or content='爱立信' or content='爱摩登' or content='爱纳星' or content='爱诺德' or content='爱诺特' or content='爱谱乐' or content='爱时尚' or content='爱维特' or content='爱我' or content='爱讯达' or content='爱易通' or content='爱意通' or content='安科讯' or content='安利嘉' or content='安利普' or content='安派' or content='安卓互联' or content='奥丁' or content='奥克斯' or content='奥乐' or content='奥利信' or content='奥洛斯' or content='奥魅尔' or content='奥维' or content='奥卓' or content='八〇九〇' or content='巴菲' or content='巴拿拿' or content='百达' or content='百达玖玖' or content='百迪宝' or content='百合' or content='百嘉好' or content='百立丰' or content='百裕' or content='佰灵通' or content='佰盛' or content='佰事讯' or content='佰意' or content='邦华' or content='邦讯达' or content='帮盛' or content='宝方' or content='宝捷讯' or content='宝码' or content='贝多芬' or content='贝尔丰' or content='贝尔星' or content='贝龙' or content='本为' or content='比酷时代' or content='比美' or content='毕加索' or content='波导' or content='菠萝' or content='铂乐' or content='铂派' or content='铂锐' or content='博鑫奇' or content='步步高' or content='长虹' or content='长江天音' or content='长普达' or content='长营' or content='畅想未来' or content='宸通和' or content='晨想' or content='晨信' or content='晨兴' or content='诚虹' or content='诚基' or content='传承' or content='传奇' or content='创世能' or content='创维' or content='创雅' or content='创奕' or content='大诚' or content='大大' or content='大华' or content='大唐' or content='大唐数码' or content='大唐移动' or content='大为' or content='大显' or content='大显启辰' or content='大亚' or content='大众电脑' or content='戴尔' or content='德进高通' or content='德赛' or content='迪奥' or content='迪比特' or content='迪迪' or content='迪佳通' or content='迪美' or content='迪妙移动' or content='迪思' or content='迪斯尼' or content='迪泰元' or content='迪为' or content='帝锋' or content='帝狼' or content='帝托' or content='帝唯' or content='电意' or content='蝶变' or content='鼎瑄' or content='东方龙' or content='东茂' or content='东森' or content='东森伟泰' or content='东铁通讯' or content='东信' or content='动感通' or content='多达康' or content='多拉多' or content='多美达' or content='多普达' or content='朵美' or content='朵唯' or content='恩泽通信' or content='凡尔纳' or content='凡美' or content='泛泰' or content='范思哲' or content='梵尚' or content='飞歌王' or content='飞利浦' or content='飞秒' or content='飞思特' or content='飞阳' or content='飞盈' or content='菲乐普' or content='菲力克斯' or content='斐讯' or content='风云时代' or content='峰泽联和' or content='烽火' or content='锋彩' or content='锋达通' or content='福尔特' or content='福日' or content='福兴达' or content='富春江' or content='富尔美' or content='富可视' or content='富士通' or content='港利通' or content='港龙' or content='高尔' or content='高金' or content='高科' or content='高昇' or content='高盛达' or content='高斯贝尔' or content='高通' or content='高威尔' or content='高翔' or content='高新奇' or content='高讯移动' or content='格莱特' or content='格律诗' or content='共展' or content='广东凌鹰' or content='广信' or content='广盈时代' or content='广州盛科' or content='广州索爱' or content='国虹' or content='国力通' or content='国乾' or content='国乾科技' or content='国威' or content='国威HB' or content='国威创新' or content='国信' or content='国信通' or content='国誉' or content='国正通' or content='海尔' or content='海帆' or content='海派贵族' or content='海沃' or content='海信' or content='海旭' or content='汉泰' or content='豪雅' or content='好利通' or content='好兄弟' or content='禾兴江源' or content='和信' or content='核动力' or content='黑莓' or content='黑魅' or content='黑米' or content='恒泰' or content='恒通' or content='恒信' or content='恒宇丰' or content='红橙果' or content='红萝卜' or content='红葉' or content='宏达' or content='宏康' or content='宏碁' or content='宏泰尔' or content='宏天' or content='宏为' or content='鸿嘉源' or content='湖南大成' or content='湖南电子' or content='华臣数码' or content='华慈' or content='华帝高科' or content='华晶' or content='华立' or content='华立时代' or content='华录' or content='华纳威秀' or content='华锐' or content='华尚' or content='华世基' or content='华蜀' or content='华硕' or content='华唐' or content='华唐时代' or content='华为' or content='华夏腾宇' or content='华夏通' or content='华信时代' or content='华讯' or content='华禹' or content='寰宇通' or content='幻影' or content='汇丰源通' or content='汇通世纪' or content='汇讯' or content='惠普' or content='基伍' or content='吉邦' or content='吉事达' or content='集思宝' or content='集友' or content='几米' or content='技嘉' or content='加利利' or content='佳斯特' or content='佳通' or content='佳想' or content='佳域' or content='佳之选' or content='嘉尚' or content='嘉源' or content='杰得微' or content='杰泰尔' or content='捷来' or content='今典' or content='金铂' or content='金步' or content='金得' or content='金尔雅' or content='金格儿' or content='金龟子' or content='金果' or content='金翰' or content='金弘' or content='金凯为' or content='金科鼎' or content='金来' or content='金立' or content='金立致远' or content='金亮典' or content='金曼' or content='金茂' or content='金鹏' or content='金润' or content='金圣达' or content='金腾亿' or content='金信' or content='金兴' or content='金星数码' or content='金讯宏盛' or content='金业' or content='金赢' or content='金运' or content='琻品' or content='锦书' or content='锦炫达' or content='劲动能' or content='京瓷' or content='京华' or content='京凯达' or content='京崎' or content='经纬' or content='精瑞' or content='精英移动' or content='井冈山华禹' or content='景象' or content='竞冠' or content='巨赛' or content='巨盛' or content='君爵' or content='骏域' or content='卡尔雷斯' or content='卡美欧' or content='卡为' or content='卡西欧' or content='卡卓' or content='凯利通' or content='铠基' or content='康佳' or content='康力' or content='科宝' or content='科潮' or content='科达圣龙' or content='科健' or content='科酷' or content='科立讯' or content='科利莱' or content='科米' or content='科摩' or content='科诺' or content='科普达' or content='科盛' or content='科特' or content='科王' or content='渴望' or content='克莱斯' or content='垦鑫达' or content='库柏' or content='酷爱' or content='酷宝' or content='酷比' or content='酷比魔方' or content='酷潮' or content='酷鸽' or content='酷卡' or content='酷开' or content='酷珂' or content='酷龙' or content='酷诺' or content='酷派' or content='酷普' or content='酷绅' or content='酷沃' or content='昆达' or content='拉风' or content='来基达' or content='蓝博兴' or content='蓝极星' or content='蓝天' or content='蓝想' or content='朗格' or content='朗杰' or content='朗界' or content='朗翔' or content='朗星达' or content='乐购天地' or content='乐美佳' or content='乐目' or content='乐派' or content='乐锐' or content='乐维' or content='乐讯' or content='雷奥' or content='雷梦' or content='雷萨' or content='力派' or content='力鑫' or content='联创' or content='联代' or content='联泓' or content='联通' or content='联想' or content='联益合创' or content='亮剑' or content='林宝坚尼' or content='凌科' or content='凌泰' or content='凌拓' or content='凌鹰' or content='聆韵' or content='六虹' or content='龙旗' or content='龙之宇' or content='裸媒' or content='迈道' or content='迈峰' or content='迈腾达' or content='脉腾' or content='美富通' or content='美歌' or content='美菱' or content='美奇' or content='美盛通' or content='美熙' or content='美翼' or content='魅族' or content='盟宝' or content='米歌' or content='米库' or content='米粒' or content='米玛' or content='米语' or content='敏讯' or content='名博' or content='明基' or content='明基西门子' or content='明派' or content='明泰' or content='铭仁' or content='摩购' or content='摩乐' or content='摩玛时代' or content='摩能' or content='摩普士' or content='摩天时代' or content='摩托罗拉' or content='摩托数码' or content='摩托无线' or content='摩西' or content='纳伟仕' or content='奈华特' or content='南方高科' or content='南俘电讯' or content='南和' or content='南极星' or content='尼凯恩' or content='尼蒙' or content='宁波三星' or content='纽曼' or content='纽特' or content='纽维' or content='诺菲世纪' or content='诺基亚' or content='诺记' or content='诺嘉源' or content='诺捷通' or content='诺卡' or content='诺克拉' or content='诺利达' or content='诺利佳' or content='诺亚鸽' or content='诺亚信' or content='欧比' or content='欧博信' or content='欧恩' or content='欧谷' or content='欧凯' or content='欧科' or content='欧酷' or content='欧乐酷' or content='欧珀' or content='欧奇' or content='欧萨' or content='欧上' or content='欧盛' or content='欧网' or content='欧新' or content='欧怡' or content='欧正' or content='派对' or content='派尔' or content='派沃' or content='派信' or content='朋和' or content='苹果' or content='普爱达' or content='普莱达' or content='普蓝' or content='普联' or content='普瑞德' or content='普士' or content='普天三洋' or content='普天同乐' or content='普天王之' or content='普天王芝' or content='普天鑫' or content='普天宜通' or content='七喜' or content='七星河' or content='齐乐' or content='琦基' or content='旗润' or content='侨兴' or content='青橙' or content='庆邦' or content='荣事达' or content='锐铂' or content='锐合' or content='瑞高' or content='瑞恒' or content='瑞翼' or content='萨基姆' or content='萨米' or content='赛丰' or content='赛鸿' or content='赛纳普' or content='赛浦' or content='三宝' or content='三和新' or content='三基摩客' or content='三菱' or content='三美琦' or content='三盟' or content='三耐' or content='三普' or content='三奇' or content='三维' or content='三纬' or content='三五互联' or content='三新' or content='三星' or content='三众' or content='桑达' or content='森密科技' or content='山水' or content='山西天丽' or content='商务通' or content='尚锋' or content='尚合' or content='深爱' or content='深圳欧珀' or content='深圳天时达' or content='深圳亚力通' or content='胜音' or content='圣宝龙' or content='盛和' or content='盛况' or content='盛隆兴' or content='盛乾通' or content='盛泰' or content='时通伟业' or content='世纪天元' or content='世纪伟业' or content='世家' or content='事达' or content='首家' or content='首派科技' or content='首信' or content='首亿通讯' or content='首悦' or content='数源' or content='双科' or content='双侨' or content='硕码' or content='硕颖' or content='思特电子' or content='四吉' or content='四季风' or content='松下' or content='松讯达' or content='搜神' or content='索爱佳通' or content='索尼' or content='索尼爱立信' or content='索普' or content='索信' or content='泰丰网络' or content='泰蒙' or content='泰星' or content='泰讯' or content='唐为' or content='特灵通' or content='腾祥' or content='腾信时代' or content='天歌' or content='天基' or content='天乐' or content='天迈' or content='天频' or content='天勤' or content='天时达' or content='天天高' or content='天玺' or content='天意' or content='天语' or content='天遇' or content='天元通' or content='同威' or content='同心' or content='同洲' or content='彤霖' or content='彤鑫达' or content='托柯' or content='拓展无限' or content='万达斯' or content='万捷' or content='万金塔' or content='万利达' or content='万普' or content='万擎' or content='万事通' or content='网讯' or content='威铂' or content='威而肯' or content='威酷' or content='威智达' or content='威兹奥' or content='葳朗' or content='微铂' or content='微诺' or content='微兴' or content='唯爱' or content='唯奥' or content='唯开' or content='唯科' or content='唯乐' or content='唯米' or content='唯想' or content='帷幄' or content='维佳特' or content='维卡' or content='维纳斯' or content='维图' or content='伟博动力' or content='纬图' or content='闻讯' or content='我爱你' or content='沃达' or content='沃歌' or content='沃凯泰' or content='沃普丰' or content='沃途' or content='吾爱' or content='西铂' or content='西凯' or content='西可' or content='西美' or content='西门子' or content='西泰' or content='西维' or content='喜卡' or content='夏朗' or content='夏浦光电' or content='夏普' or content='夏新' or content='夏星' or content='厦华' or content='先创' or content='先锋' or content='先科' or content='咸通' or content='现代' or content='祥集' or content='响亮' or content='小麦麦果' or content='小米' or content='心爱' or content='心迪' or content='心迪宝' or content='心动科技' or content='心动世纪' or content='心语通' or content='新标达' or content='新创想' or content='新大陆' or content='新国脉' or content='新基德' or content='新势力' or content='新邮' or content='新中桥' or content='鑫诺' or content='鑫卓越' or content='信得乐' or content='信诺' or content='信实' or content='信盈' or content='兴华宝' or content='星火' or content='星科壬' or content='星网锐捷' or content='星维' or content='星宇' or content='星语' or content='雄风' or content='熊猫' or content='炫华' or content='讯歌' or content='雅器' or content='雅讯达' or content='雅迅网络' or content='亚力通' or content='亚米' or content='亚信通' or content='扬新' or content='一三九' or content='依众兴' or content='宜兴中电' or content='亿城' or content='亿和源' or content='亿嘉鑫' or content='亿科泰达' or content='亿美讯联' or content='亿旗' or content='亿通' or content='亿扬' or content='艺科' or content='易百年' or content='易创' or content='易丰展业' or content='易派' or content='易特科' or content='易闻' or content='益阳' or content='翼乐' or content='翼品' or content='翼扬' or content='英达思康' or content='英华达' or content='英莱尔' or content='英迈' or content='英普' or content='英特奇' or content='鹰讯' or content='赢者' or content='优Phone' or content='优尔得' or content='优歌' or content='优购' or content='优酷' or content='优快' or content='优乐酷' or content='优米斯达' or content='优米通达' or content='优摩' or content='优派' or content='优品' or content='优珀' or content='优普' or content='优赛' or content='优思' or content='优索' or content='优友' or content='友利通' or content='友旺' or content='友为' or content='友信达' or content='宇龙' or content='宇阳' or content='羽翼' or content='禹华' or content='语泉' or content='语信' or content='玉科' or content='誉品' or content='远大' or content='远点' or content='远望谷' or content='粤盈' or content='云本' or content='云台' or content='泽爱' or content='泽领' or content='展翼' or content='掌力' or content='掌中宝' or content='兆信' or content='兆讯达' or content='真我' or content='臻爱' or content='振华百智' or content='振华欧比' or content='振华通信' or content='振华宇科' or content='证通金信' or content='知己迅联' or content='知心' or content='职业者' or content='至能' or content='至尊宝' or content='志佳' or content='志能' or content='智爱' or content='智惠' or content='智吉' or content='智灵通' or content='智珀' or content='智普' or content='智信' or content='智讯' or content='中宝' or content='中辰' or content='中德瑞' or content='中电' or content='中国老板' or content='中国振华' or content='中江' or content='中宽' or content='中诺' or content='中锘基雅' or content='中桥' or content='中天' or content='中伟天' or content='中信卫星' or content='中兴' or content='中渔' or content='中轴线' or content='众一' or content='卓比' or content='卓拉' or content='卓普' or content='卓尚' or content='紫光海泰' or content='自然派' or content='节操' or content='尼凯恩' or content='传颂' or content='读者' or content='女装品牌名称' or content='EW' or content='LD' or content='LEVISLADIES' or content='UDB' or content='THE' or content='Y' or content='巴俪锦' or content='SCAT' or content='KALICO' or content='DND' or content='MISSRIGHT' or content='PERF' or content='M演奏' or content='SEEUSOON' or content='TYT' or content='PACEANGEL' or content='芙蓉天使' or content='Ein' or content='经典故事' or content='MOS' or content='B2' or content='TB2' or content='VEEKOWANKO' or content='卡莎布兰卡' or content='KANGJINYOUNG' or content='歌莉娅' or content='G2000' or content='水盈格' or content='CKJEANS' or content='ESPRIT' or content='卡佛莲' or content='NEE' or content='茵佳妮' or content='阿依莲' or content='古谷惠' or content='布布为盈' or content='普色' or content='狐仙' or content='JC5杰西五' or content='A02' or content='伊可爱' or content='自由鸟' or content='麦考林' or content='花思薇' or content='遇见' or content='蓝月' or content='衣本色水虹' or content='花木马' or content='零典' or content='艾可儿AIKERL' or content='塔吉' or content='体育品牌名称' or content='耐克' or content='安踏' or content='百事' or content='百事运动' or content='赛琪' or content='名乐' or content='曼奴' or content='李宁兴尔达' or content='域图' or content='百丽韬博' or content='匡威' or content='正大体育' or content='东方神' or content='361度' or content='好家庭' or content='泽田' or content='康威' or content='锐步' or content='美津浓' or content='ADIDAS' or content='KAPPA' or content='新百伦' or content='斐乐' or content='彪马' or content='艾世克斯' or content='乐途' or content='双星' or content='红双喜' or content='茵宝' or content='DIADDRA' or content='惠尔德' or content='康威' or content='匹克' or content='鸿星尔克' or content='乔丹' or content='特步' or content='耐克360' or content='THEN' or content='THFACE' or content='哥伦比亚' or content='火狐狸' or content='探路者' or content='极地' or content='鳄莱特' or content='斯伯丁' or content='YY' or content='PRINCE' or content='百希达' or content='索牌' or content='麦斯卡' or content='奥得赛' or content='好家庭' or content='轻松伴侣' or content='生命动力' or content='东方神' or content='OSIM' or content='瀚斯宝丽' or content='西纳蒙' or content='哥伦比亚' or content='奥索卡' or content='日高' or content='生活无限' or content='皮鞋皮具品牌名称' or content='摩斯雷' or content='金利来' or content='华伦天奴' or content='花花公子保罗老人头' or content='红晴蜓' or content='沙驰' or content='富贵鸟' or content='七月恋人' or content='迪宝阿治奥' or content='芭迪' or content='迪桑娜' or content='思迪嘉' or content='丹希路' or content='卡露天尼莱斯佩斯' or content='CNE莱尔诗丹' or content='狄高斯' or content='华伦天奴露迪' or content='富贵鸟' or content='哈森' or content='保罗狄龙' or content='澳伦' or content='咪地' or content='贵之步' or content='Fed' or content='宾度' or content='爱步' or content='万里马' or content='花花公子' or content='比莉华' or content='东京' or content='卡仕妮' or content='恭绅' or content='阿俪达' or content='美丽宝' or content='真美诗' or content='百丽他他天美意思加图' or content='浩天龙' or content='老人头袋鼠' or content='千百度' or content='意大意登喜路' or content='接吻猫' or content='华伦天奴露迪' or content='梦特娇' or content='达芙妮' or content='康莉安玛利' or content='华伦天奴' or content='多米尼克' or content='豪行' or content='妙丽' or content='美人鱼伯爵夫人' or content='澳德利' or content='俪嘉' or content='美的' or content='利佳娜' or content='伊奈安' or content='牧羊女' or content='莱尔斯丹' or content='皮鞋皮具品牌名称' or content='百思图' or content='星期六索菲亚' or content='圣伽步' or content='密丝罗妮' or content='皮匠世家' or content='瑕步士' or content='富贵鸟' or content='艾曼达' or content='高琪KUKU' or content='卡丹路' or content='皮尔卡丹' or content='富丽达' or content='宝曼妮' or content='花花公子' or content='小美' or content='特丰鸟' or content='爵根仕' or content='阿俪达' or content='与狼共舞' or content='维多利保罗' or content='圣大保罗沙驰' or content='猫与老鼠' or content='曼妮诗' or content='老爷车' or content='老人头袋鼠' or content='金鱼保罗' or content='华伦天奴艾米力欧' or content='华伦天奴露迪' or content='华伦天奴' or content='花花公子宾奴' or content='鳄鱼' or content='安特丽' or content='BOSSBABI' or content='金利来佛里欧有伊鳄鱼' or content='女装品牌名称' or content='埃米雅文' or content='稀' or content='玛丝菲尔SU' or content='玛丝菲尔' or content='MissK' or content='YIGUE' or content='ALAAur' or content='a' or content='Bloomsbury' or content='onon' or content='sisley' or content='23区' or content='Fairyfair' or content='P' or content='TS' or content='amelie' or content='ninewest' or content='BuouBuou' or content='XLMS' or content='OTT' or content='贝拉维拉' or content='Helloketty' or content='花木马' or content='邓晧' or content='昊艺' or content='朵兰帝' or content='衡韵' or content='影儿国际' or content='白领风采' or content='忆玫' or content='声雨竹' or content='李红' or content='娜尔思' or content='哥弟' or content='伊品' or content='莱姿' or content='千师达' or content='帕丝特' or content='蕾朵' or content='贝特丽诗' or content='baccabocca' or content='BREADNBUTTER' or content='QUA' or content='JESSIMODA' or content='LILY' or content='南梦' or content='Sevenshow' or content='圣迪奥' or content='OASIS' or content='BUSKUS宝丝露' or content='奢爱' or content='SEFON臣枫' or content='INOW' or content='BABYFOX' or content='NOVO次主力店' or content='休闲品牌名称' or content='蓝色天空' or content='嘉意' or content='花花公子' or content='丹迪斯' or content='以纯' or content='保斯特' or content='潮流前线' or content='自由鸟' or content='佐丹奴' or content='康妮雅' or content='异乡人' or content='真维斯' or content='猛龙' or content='宝斯特' or content='飞鱼' or content='依米奴' or content='ESPRIT' or content='麦仕威' or content='威格' or content='与狼共舞' or content='苹果牛仔' or content='GSTAR' or content='MECITY' or content='QUIKSILVER' or content='MOLYHOLY' or content='SMITHS' or content='骆驼' or content='马克华菲' or content='思莱德' or content='TONYJONES' or content='万宝路' or content='GXG' or content='TOUCH牛仔' or content='JC' or content='RIVERSTONE' or content='CANTATE' or content='ISO' or content='HOZ' or content='盈彩美地' or content='格尔马菲' or content='CHEVIGNON' or content='雪鲨' or content='威格' or content='第五街' or content='U2' or content='雅韵' or content='安诺庞玛' or content='皮尔卡丹' or content='与狼共舞' or content='体育品牌名称' or content='生活无限' or content='极地' or content='百福全' or content='倍轻松' or content='可口可乐' or content='够那' or content='迪亚多纳' or content='EXR' or content='AND1' or content='RAPIDO' or content='皮鞋皮具品牌名称' or content='老人头' or content='丹希路' or content='豪麟' or content='金利来' or content='SKAP' or content='爵根仕' or content='多米尼克' or content='迪宝' or content='马飞仕图' or content='GEOX' or content='宾度' or content='沙驰' or content='卓凡尼华伦天奴' or content='FATO' or content='暇步士' or content='其乐' or content='莱尔斯丹' or content='磨里斯基' or content='卡丹路' or content='ECCO' or content='哈森' or content='阿兰德隆' or content='阿里巴巴' or content='华伦天奴' or content='新秀丽' or content='森泰斯' or content='花花公子' or content='巴黎世家' or content='丹尼爱特' or content='皇冠箱' or content='鳄鱼恤' or content='老人头' or content='金利来' or content='皇冠包' or content='伊莱莲' or content='贝蒂' or content='梦特娇鄂鱼恤花花公子' or content='汤姆猫杰利鼠' or content='中国娃娃' or content='雷洛斯' or content='黑眼睛' or content='韩国树一派' or content='与狼共舞' or content='逸格' or content='金利来保罗名莎佛里欧莱茜雅' or content='刘文爵' or content='PTNS' or content='万里马' or content='华伦天奴乔登法国登喜路世家' or content='丽天妮' or content='马莲奴登喜世家' or content='欧玖珂' or content='老人头' or content='波士芭比' or content='老皮匠' or content='皮鞋皮具品牌名称' or content='狄狮劳' or content='宾奴' or content='城市生活' or content='巴黎世家' or content='女装品牌名称' or content='AMASS' or content='积高' or content='法路易娜' or content='雅贝菲斯' or content='JoeJules' or content='TB2' or content='Nice' or content='COLOUR18' or content='twoctv' or content='WHOIAM' or content='kalico' or content='COOLLADY' or content='OBO' or content='GMD' or content='HIRST' or content='678月' )
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/
select count(*) from ydb_example_shu where ydbpartion = '3000w' and amtlong in (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,2000) 
/*('<-')pushdown.ydb*/
;


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
group by tmp.ydb_sex limit 10;

select ydb_sex,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_province,cnt,cntamt,sumamt)))) from (
    /*ydb.pushdown('->')*/
        select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble) as cntamt,sum(amtdouble) as sumamt from ydb_example_shu where ydbpartion = '3000w' group by ydb_sex,ydb_province  
    /*('<-')pushdown.ydb*/
)tmp  group by ydb_sex limit 10;

select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_sex,cnt,cntamt,sumamt)))) from (
    /*ydb.pushdown('->')*/
        select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble) as cntamt,sum(amtdouble) as sumamt from ydb_example_shu where ydbpartion = '3000w' group by ydb_sex,ydb_province  
    /*('<-')pushdown.ydb*/
)tmp  group by ydb_province order by scnt desc limit 10;


select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (
    /*ydb.pushdown('->')*/
        select ydb_blood,ydb_sex,ydb_province,count(*) as cnt,count(amtdouble) as cntamt from ydb_example_shu where ydbpartion = '3000w' group by ydb_blood,ydb_sex,ydb_province  
    /*('<-')pushdown.ydb*/
)tmp  group by ydb_province order by scnt desc limit 10;



select ydb_day,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (
    /*ydb.pushdown('->')*/
        select ydb_day,ydb_sex,ydb_blood,count(*) as cnt,count(amtdouble) as cntamt from ydb_example_shu where ydbpartion = '3000w' group by ydb_day,ydb_sex,ydb_blood
    /*('<-')pushdown.ydb*/
)tmp  group by ydb_day order by scnt desc limit 10;



/*ydb.pushdown('->')*/
select  content from ydb_example_shu where ydbpartion = '3000w'  and content='YTermlike@30@100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 ' limit 10 
/*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/
select ydb_sex,ydb_province,ydb_blood,amtdouble,content from ydb_example_shu where ydbpartion = '3000w'  and ydb_raw_query_s like 'YQuerylike@hits=4&fq=ydb_sex:女&fq=ydb_province:辽宁&fq=amtdouble:[14 TO 200]&fq=ydb_blood:O&fq=content:王老吉'
limit 10
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/
select ydb_sex,ydb_province,ydb_blood,amtdouble,content from ydb_example_shu where ydbpartion = '3000w'  and ydb_raw_query_s like 'YQuerylike@hits=4&score=8&fq=ydb_sex:女&wt=1&fq=ydb_province:辽宁&wt=1&fq=amtdouble:[14 TO 200]&wt=1&fq=ydb_blood:O&wt=1&fq=content:王老吉&wt=9' 
limit 10
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex='empty'
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and  ydb_sex<>'empty' 
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex='null'
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/
select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = 'nullcheck' and ydb_sex<>'null'
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/ 
select  phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and phonenum='Ylike@824963'
 limit 10
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/ 
select  phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and phonenum='Ylike@824*963'
 limit 100
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/ 
select  phonenum from ydb_example_shu_positon where ydbpartion = '3000w'  and phonenum='Ylike@188*63*72*76'
 limit 100
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/ 
select  content from ydb_example_shu_positon where ydbpartion = '3000w'  and content_pyy='Ylike@  1 5 14 15 24 28 37 41 49 '
 limit 100
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/ 
select  content from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@1 5 14 15 24 28 37 41 49'
 limit 100
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/ 
select  content from ydb_example_shu_positon where ydbpartion = '3000w'  and content_pyy='Ylike@1 5 14 * 24 28 37 '
 limit 100
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/ 
select  content from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@1 5 14 * 24 28 37'
 limit 100
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/ 
select  content from ydb_example_shu_positon where ydbpartion = '3000w'  and content_pyy='Ylike@14 15 * 24 28 * 37 41  ' limit 100
/*('<-')pushdown.ydb*/
;

/*ydb.pushdown('->')*/ 
select * from y_system_log order by log_time desc
limit 30
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/ 
select  content from ydb_example_shu_positon where ydbpartion = '3000w'  and content='Ylike@14 15 * 24 28 * 37 41  '  
limit 100
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/ 
select  content from ydb_example_shu_positon where ydbpartion = '3000w'  and content_pyy='Ylike@14 * 15 * 24 * 28 * 37*  41  'limit 100
/*('<-')pushdown.ydb*/
;


select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w'  and ydb_raw_query_s like 'YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=10000'
/*('<-')pushdown.ydb*/
)tmp  order by distance limit 10 ;


select tmp.lon,tmp.lat,tmp.mortonhash,YMortonUnHash(tmp.mortonhash),YMortonHashDistance(tmp.mortonhash,8.1,9.2) as distance from 
(
/*ydb.pushdown('->')*/ 
select lon,lat,mortonhash from lonlattable_test where ydbpartion='3000w'  and ydb_raw_query_s like 'YGeo@fl=mortonhash&isbox=true&lon=8.1&lat=9.2&radius=10000'
/*('<-')pushdown.ydb*/
)tmp  order by distance limit 10 ;


/*ydb.pushdown('->')*/
select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w'
limit 10
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/
select multyvalue_long,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w'  group by multyvalue_long order by cnt
limit 10
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/
select multyvalue_long,count(*) as cnt ,count(amtdouble),sum(amtdouble) from ydb_example_shu_multyvalue where ydbpartion = '3000w'  group by multyvalue_long order by cnt
limit 10
/*('<-')pushdown.ydb*/;


/*ydb.pushdown('->')*/
select multyvalue_long,ydb_sex,count(*) as cnt from ydb_example_shu_multyvalue where ydbpartion = '3000w'  group by multyvalue_long,ydb_sex order by cnt
limit 10
/*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/
select multyvalue_long,multyvalue_string,count(*) from ydb_example_shu_multyvalue where ydbpartion = '3000w'  group by multyvalue_long,multyvalue_string order by  multyvalue_long,multyvalue_string
limit 10
/*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/
select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion='3000w' and multyvalue_string='null'limit 10
/*('<-')pushdown.ydb*/;


 /*ydb.pushdown('->')*/ 
select log_time,log_day,reqid_syn,timelen_lyn,log_hour,log_category,log_type,log_pos,log_ip,log_pid,log_execid,log_execindex,log_fields,log_hostname,log_msg from y_system_log where log_category='SQL' and (log_type='getExecuteSql')  order by reqid_syn desc,log_time desc 
limit 30
/*('<-')pushdown.ydb*/
;
 
 
  /*ydb.pushdown('->')*/ 
select log_time,log_day,reqid_syn,timelen_lyn,log_hour,log_category,log_type,log_pos,log_ip,log_pid,log_execid,log_execindex,log_fields,log_hostname,log_msg from y_system_log where log_category='SQL' and reqid_syn='161204024000000002'  order by log_time desc
limit 30
/*('<-')pushdown.ydb*/
;

  /*ydb.pushdown('->')*/ 
select log_time,log_day,log_hour,log_category,log_type,log_pos,log_ip,log_pid,log_execid,log_execindex,log_fields,log_hostname,log_msg from y_system_log where log_category='ERROR' order by log_time desc 
limit 30
/*('<-')pushdown.ydb*/
;


/*ydb.pushdown('->')*/ 
select log_time,log_day,log_hour,log_category,log_type,log_pos,log_ip,log_pid,log_execid,log_execindex,log_hostname,os_cpu_user_lyn,os_cpu_nick_lyn,os_cpu_sys_lyn,os_cpu_idle_lyn,os_iowait_lyn,os_steal_lyn,os_mem_total_lyn,os_mem_free_lyn,os_mem_used_lyn,os_mem_buff_lyn,os_mem_cache_lyn from y_system_log where log_category='SYSTEMINFO' order by log_time desc 
limit 30
/*('<-')pushdown.ydb*/
;
 
 
  /*ydb.pushdown('->')*/ 
select log_time,log_day,log_hour,log_category,log_type,log_pos,log_ip,log_pid,log_execid,log_execindex,log_fields,log_hostname,log_msg from y_system_log where log_category='POOL' order by log_time desc
limit 30
/*('<-')pushdown.ydb*/
;

 /*ydb.pushdown('->')*/ 
select log_type,count(*) as cnt from y_system_log group by log_type order by cnt desc
 limit 30
/*('<-')pushdown.ydb*/
;


 /*ydb.pushdown('->')*/ 
select log_day,count(*) as cnt from y_system_log group by log_day order by cnt desc
 limit 30
/*('<-')pushdown.ydb*/
;

 /*ydb.pushdown('->')*/ 
select log_category,count(*) as cnt from y_system_log group by log_category order by cnt desc
 limit 30
/*('<-')pushdown.ydb*/
;

 /*ydb.pushdown('->')*/ 
select log_category,log_type,log_pos,count(*) as cnt from y_system_log group by log_category,log_type,log_pos order by cnt desc
 limit 30
/*('<-')pushdown.ydb*/
;

select 
    YAnalyzer('charlike','query','中华人民123456') as charlikequery,
    YAnalyzer('charlike','index','中华人民123456') as charlikeindex
from (
    /*ydb.pushdown('->')*/ 
    select content from ydb_example_shu_multyvalue where ydbpartion='3000w'
    /*('<-')pushdown.ydb*/
) tmp
    
limit 1;

select 

    YAnalyzer('wordlike','query','中华人民123456') as wordlikequery,
    YAnalyzer('wordlike','index','中华人民123456') as wordlikeindex
from 
    (
    /*ydb.pushdown('->')*/ 
    select content from ydb_example_shu_multyvalue where ydbpartion='3000w'
    /*('<-')pushdown.ydb*/
) tmp
limit 1;


select 
 
    YAnalyzer('phaoma','query','中华人民123456') as phaomaquery,
    YAnalyzer('phaoma','index','中华人民123456') as phaomaindex
from 
    (
    /*ydb.pushdown('->')*/ 
    select content from ydb_example_shu_multyvalue where ydbpartion='3000w'
    /*('<-')pushdown.ydb*/
) tmp
limit 1;


select 
    YAnalyzer('psimpletext','query','中华人民123456') as psimpletextquery,
    YAnalyzer('psimpletext','index','中华人民123456') as psimpletextindex
from 
    (
    /*ydb.pushdown('->')*/ 
    select content from ydb_example_shu_multyvalue where ydbpartion='3000w'
    /*('<-')pushdown.ydb*/
) tmp
limit 1;

/*ydb.pushdown('->')*/select count(*) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select count(*) as cnt from ydb_example_shu where ydbpartion in ('3000w','300winsert','300winsert2','test1','test3') /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select * from ydb_example_shu where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content,usernick from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select content as ctx,usernick as nick from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and  (amtlong like '([3000 TO 4000] )') limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select sum(amtdouble) as sumamt from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select sum(amtdouble) as sumamt,count(amtdouble)as cnt,avg(amtdouble) as avgamt,count(*) as cntall from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select avg(amtdouble) as avgamt from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/ select count(*),count(amtdouble),avg(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' group by ydb_sex limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' group by ydb_sex,ydb_province order by cnt desc limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' group by ydb_sex,ydb_province order by count(*) desc limit 10 /*('<-')pushdown.ydb*/;
/*ydb.pushdown('->')*/select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion='3000w'  order by amtdouble desc ,amtlong limit 10 /*('<-')pushdown.ydb*/;

select * from 
(
/*ydb.pushdown('->')*/select amtlong,content from ydb_example_shu where ydbpartion = '3000w' and content='旺旺' order by amtlong desc limit 1 /*('<-')pushdown.ydb*/
union all
/*ydb.pushdown('->')*/select amtlong,content from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' order by amtlong desc limit 1  /*('<-')pushdown.ydb*/
union all
/*ydb.pushdown('->')*/select amtlong,content from ydb_example_shu where ydbpartion = '3000w' and content='汇源' order by amtlong desc limit 1   /*('<-')pushdown.ydb*/
union all
/*ydb.pushdown('->')*/ select amtlong,content from ydb_example_shu where ydbpartion = '3000w' and content='哇哈哈' order by amtlong desc limit 1  /*('<-')pushdown.ydb*/ 

) tmp  limit 1000;

select sum(cnt) as cnt from 
(
/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/ 
union all
/*ydb.pushdown('->')*/select count(*) as cnt from ydb_example_shu where ydbpartion = '300winsert' /*('<-')pushdown.ydb*/ 
union all
/*ydb.pushdown('->')*/select count(*) as cnt from ydb_example_shu where ydbpartion = '300winsert2' /*('<-')pushdown.ydb*/ 
union all
/*ydb.pushdown('->')*/select count(*) as cnt from ydb_example_shu where ydbpartion = '3000w' and content='王老吉'  /*('<-')pushdown.ydb*/ 
union all
/*ydb.pushdown('->')*/select count(*) as cnt from ydb_example_shu where ydbpartion = '20151011' and content='工商银行' /*('<-')pushdown.ydb*/ 
union all
/*ydb.pushdown('->')*/select count(*) as cnt from ydb_example_shu where ydbpartion = '20151011'  /*('<-')pushdown.ydb*/ 
) tmp limit 10;


/*ydb.pushdown('->')*/
select count(*),count(amtdouble),sum(amtdouble),avg(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where   ydbpartion in (  '3000w0','3000w1' ,'3000w2','3000w3','3000w4','3000w5','3000w6','3000w7','3000w8','3000w9','3000w10' ,'3000w11','3000w12','3000w13','3000w14','3000w15' ,'3000w16'  ,'3000w17','3000w18','3000w19'
,'3000a0','3000a1' ,'3000a2','3000a3','3000a4','3000a5','3000a6','3000a7','3000a8','3000a9','3000a10' ,'3000a11','3000a12','3000a13','3000a14','3000a15' ,'3000a16'  ,'3000a17','3000a18','3000a19' 
,'3000b0','3000b1' ,'3000b2','3000b3','3000b4','3000b5','3000b6','3000b7','3000b8','3000b9','3000b10' ,'3000b11','3000b12','3000b13','3000b14','3000b15' ,'3000b16'  ,'3000b17','3000b18','3000b19' 
)
/*('<-')pushdown.ydb*/ ;


/*ydb.pushdown('->')*/ select count(*) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/ ;

/*ydb.pushdown('->')*/ select count(*) as cnt from ydb_example_shu where ydbpartion in ('3000w','300winsert','300winsert2','test1','test3') /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/ select * from ydb_example_shu where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/ select content,usernick from ydb_example_shu where ydbpartion = '3000w' and content='王老吉' limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/ select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where ydbpartion = '3000w' and ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and  (amtlong like '([3000 TO 4000] )') limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/ select sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/ select avg(amtdouble) as avgamt from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/ select count(*),count(amtdouble),avg(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where ydbpartion = '3000w' /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/ select ydb_sex,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' group by ydb_sex limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/ select ydb_sex,ydb_province,count(*) as cnt,count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = '3000w' group by ydb_sex,ydb_province order by cnt desc limit 10 /*('<-')pushdown.ydb*/;

/*ydb.pushdown('->')*/ select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion='3000w'  order by amtdouble desc ,amtlong limit 10 /*('<-')pushdown.ydb*/;

 
/*ydb.pushdown('->')*/ select tollCode,vehiclePlate from vehiclepass where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/ ;
/*ydb.pushdown('->')*/ select * from vehiclepass where ydbpartion = '3000w' limit 10 /*('<-')pushdown.ydb*/;


 
 


select 
    YR_STR(r,'log_day') as log_day,
    YR_LONG(r,'log_time') as log_time,
    YR_STR(r,'log_hour') as log_hour,
    YR_STR(r,'log_category') as log_category,
    YR_STR(r,'log_type') as log_type,
    YR_STR(r,'log_pos') as log_pos,
    YR_STR(r,'log_ip') as log_ip,
    YR_STR(r,'log_pid') as log_pid,
    YR_STR(r,'log_execid') as log_execid,
    YR_STR(r,'log_execindex') as log_execindex,
    YR_STR(r,'log_hostname') as log_hostname,
    YR_STR(r,'log_msg') as log_msg
from  ydb where YSQL('from','select log_time,log_day,log_hour,log_category,log_type,log_pos,log_ip,log_pid,log_execid,log_execindex,log_fields,log_hostname,log_msg from y_system_log order by log_time desc ','segment') 
order by log_time desc limit 30 ;


 select YR_STR(r,'log_day') as log_day,YR_LONG(r,'log_time') as log_time,
 YR_STR(r,'log_category') as log_category,
YR_STR(r,'log_type') as log_type,
     YR_STR(r,'log_pos') as log_pos,
    YR_STR(r,'log_ip') as log_ip,
    YR_STR(r,'log_pid') as log_pid,
    YR_STR(r,'log_execid') as log_execid,
    YR_STR(r,'log_execindex') as log_execindex,
 YR_STR(r,'reqid_syn') as reqid_syn,
 YR_LONG(r,'timelen_lyn') as timelen_lyn,
 YR_STR(r,'log_msg') as log_msg
  from  ydb where YSQL('from','select log_time,log_day,reqid_syn,timelen_lyn,log_hour,log_category,log_type,log_pos,log_ip,log_pid,log_execid,log_execindex,log_fields,log_hostname,log_msg from y_system_log where log_category="SQL" and (log_type="getExecuteSql")  order by reqid_syn desc,log_time desc ','segment') 
 order by reqid_syn desc ,log_time desc limit 30 ;
 
 
  select YR_STR(r,'log_day') as log_day,YR_LONG(r,'log_time') as log_time,
 YR_STR(r,'log_category') as log_category,
YR_STR(r,'log_type') as log_type,
     YR_STR(r,'log_pos') as log_pos,
    YR_STR(r,'log_ip') as log_ip,
    YR_STR(r,'log_pid') as log_pid,
    YR_STR(r,'log_execid') as log_execid,
    YR_STR(r,'log_execindex') as log_execindex,
 YR_STR(r,'reqid_syn') as reqid_syn,
 YR_LONG(r,'timelen_lyn') as timelen_lyn,
 YR_STR(r,'log_msg') as log_msg
  from  ydb where YSQL('from','select log_time,log_day,reqid_syn,timelen_lyn,log_hour,log_category,log_type,log_pos,log_ip,log_pid,log_execid,log_execindex,log_fields,log_hostname,log_msg from y_system_log where log_category="SQL" and reqid_syn="161204024000000002"  order by log_time desc ','segment') 
 order by log_time desc limit 30  
 ;
 
 
   select 
YR_STR(r,'log_day') as log_day,YR_LONG(r,'log_time') as log_time,
YR_STR(r,'log_ip') as log_ip,
YR_STR(r,'log_pid') as log_pid,
YR_STR(r,'log_execindex') as log_execindex,
YR_STR(r,'log_type') as log_type,
YR_STR(r,'log_pos') as log_pos
,YR_STR(r,'log_msg') as log_msg
  from  ydb where YSQL('from','select log_time,log_day,log_hour,log_category,log_type,log_pos,log_ip,log_pid,log_execid,log_execindex,log_fields,log_hostname,log_msg from y_system_log where log_category="ERROR" order by log_time desc ','segment') 
 order by log_time desc limit 30 ;
 
  
   select 
YR_STR(r,'log_day') as day,YR_LONG(r,'log_time') as log_time,
YR_STR(r,'log_ip') as log_ip,
YR_STR(r,'log_execindex') as log_execindex,
YR_LONG(r,'os_cpu_user_lyn')/100 as os_cpu_user_lyn,
YR_LONG(r,'os_cpu_nick_lyn')/100 as os_cpu_nick_lyn,
YR_LONG(r,'os_cpu_sys_lyn')/100 as os_cpu_sys_lyn,
YR_LONG(r,'os_cpu_idle_lyn')/100 as os_cpu_idle_lyn,
YR_STR(r,'os_iowait_lyn')/100 as os_iowait_lyn,
YR_STR(r,'os_mem_total_lyn') as os_mem_total_lyn,
YR_STR(r,'os_mem_free_lyn') as os_mem_free_lyn,
YR_STR(r,'os_mem_used_lyn') as os_mem_used_lyn,
YR_STR(r,'os_mem_buff_lyn') as os_mem_buff_lyn,
YR_STR(r,'os_mem_cache_lyn') as os_mem_cache_lyn
  from  ydb where YSQL('from','select log_time,log_day,log_hour,log_category,log_type,log_pos,log_ip,log_pid,log_execid,log_execindex,log_hostname,os_cpu_user_lyn,os_cpu_nick_lyn,os_cpu_sys_lyn,os_cpu_idle_lyn,os_iowait_lyn,os_steal_lyn,os_mem_total_lyn,os_mem_free_lyn,os_mem_used_lyn,os_mem_buff_lyn,os_mem_cache_lyn from y_system_log where log_category="SYSTEMINFO" order by log_time desc ','segment') 
 order by log_time desc limit 30 
 ;
 
 
    select 
YR_STR(r,'log_day') as log_day,YR_LONG(r,'log_time') as log_time,
YR_STR(r,'log_ip') as log_ip,
YR_STR(r,'log_pid') as log_pid,
YR_STR(r,'log_execindex') as log_execindex,
YR_STR(r,'log_type') as log_type,
YR_STR(r,'log_pos') as log_pos
,YR_STR(r,'log_msg') as log_msg
  from  ydb where YSQL('from','select log_time,log_day,log_hour,log_category,log_type,log_pos,log_ip,log_pid,log_execid,log_execindex,log_fields,log_hostname,log_msg from y_system_log where log_category="POOL" order by log_time desc ','segment') 
 order by log_time desc limit 30 ;
 
 
 
 
  select 
    r[0] as log_type,
    sum(cast(r[1] as bigint)) as cnt
from 
    ydb where YSQL('from','select log_type,count(*) from y_system_log group by log_type  ','segment') 
group by r[0]  order by cnt desc 
limit 10;

 select 
    r[0] as log_day,
    sum(cast(r[1] as bigint)) as cnt
from 
    ydb where YSQL('from','select log_day,count(*) from y_system_log group by log_day  ','segment') 
group by r[0]  order by log_day desc 
limit 10;

 select 
    r[0] as log_category,
    sum(cast(r[1] as bigint)) as cnt
from 
    ydb where YSQL('from','select log_category,count(*) from y_system_log group by log_category  ','segment') 
group by r[0]  order by cnt desc 
limit 10;

select r[0],r[1],r[2],YMortonUnHash(r[2]),YMortonHashDistance(r[2],8.1,9.2) as distance from  ydb where YSQL('from','select lon,lat,mortonhash from lonlattable_test where ydbpartion="3000w"  and ydb_raw_query_s like "YGeo@fl=mortonhash&lon=8.1&lat=9.2&radius=6000" ','segment') order by distance limit 10 ;

select r[0],r[1],r[2],YMortonUnHash(r[2]),YMortonHashDistance(r[2],8.1,9.2) as distance from  ydb where YSQL('from','select lon,lat,mortonhash from lonlattable_test where ydbpartion="3000w"  and ydb_raw_query_s like "YGeo@fl=mortonhash&isbox=true&lon=8.1&lat=9.2&radius=6000" ','segment') order by distance limit 10 ;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu where ydbpartion = "3000w"  and content="YTermlike@30@100 101 102 103 104 105 106 107 108 109 110 111 112 113 " limit 10 ','segment') 
limit 100;

select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu where ydbpartion = "3000w"  and content="YTermlike@5@100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 " limit 10 ','segment') 
limit 100;


select 
    r[0],r[1], r[2], r[3], r[4]
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,ydb_blood,amtdouble,content from ydb_example_shu where ydbpartion = "3000w"  and ydb_raw_query_s like "YQuerylike@hits=4&fq=ydb_sex:女&fq=ydb_province:辽宁&fq=amtdouble:[14 TO 200]&fq=ydb_blood:O&fq=content:王老吉" ','segment') 
limit 10;


select 
    r[0],r[1], r[2], r[3], r[4]
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,ydb_blood,amtdouble,content from ydb_example_shu where ydbpartion = "3000w"  and ydb_raw_query_s like "YQuerylike@hits=4&score=8&fq=ydb_sex:女&wt=1&fq=ydb_province:辽宁&wt=1&fq=amtdouble:[14 TO 200]&wt=1&fq=ydb_blood:O&wt=1&fq=content:王老吉&wt=9" ','segment') 
limit 10;



select 
    r[0] as phone,
    r[1] as usernick,
    r[2] as ydb_sex,
    r[3] as ydb_province 

from 
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = "nullcheck" and ydb_sex="empty"  ','segment') 
limit 1000;


select 
    r[0] as phone,
    r[1] as usernick,
    r[2] as ydb_sex,
    r[3] as ydb_province 

from 
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = "nullcheck" and ydb_sex<>"empty"  ','segment') 
limit 1000;


select 
    r[0] as phone,
    r[1] as usernick,
    r[2] as ydb_sex,
    r[3] as ydb_province 

from 
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = "nullcheck" and ydb_sex="null"  ','segment') 
limit 1000;


select 
    r[0] as phone,
    r[1] as usernick,
    r[2] as ydb_sex,
    r[3] as ydb_province 

from 
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province from ydb_example_shu where ydbpartion = "nullcheck" and ydb_sex<>"null"  ','segment') 
limit 1000;

select 
    YAnalyzer('simpletext','query',"1 2 3 4 5 6 7 8 9 10") as query,
    YAnalyzer('simpletext','index',"中华人民共和国") as index
from 
    ydb where YSQL('from','select content from ydb_example_shu where ydbpartion="3000w"  ','segment') 
limit 1;

select 
    r[0] as phonenum_chepai 
from 
    ydb where YSQL('from','select  phonenum_chepai from ydb_example_shu_positon where ydbpartion = "3000w"  and phonenum_chepai="Ylike@824963" ','segment') 
limit 100;

select 
    r[0] as phonenum_chepai 
from 
    ydb where YSQL('from','select  phonenum_chepai from ydb_example_shu_positon where ydbpartion = "3000w"  and phonenum_chepai="Ylike@824*963" ','segment') 
limit 100;

select 
    r[0] as phonenum_chepai 
from 
    ydb where YSQL('from','select  phonenum_chepai from ydb_example_shu_positon where ydbpartion = "3000w"  and phonenum_chepai="Ylike@188*63*72*76" ','segment') 
limit 100;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content_pyy="Ylike@  1 5 14 15 24  " ','segment') 
limit 100;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content="Ylike@  1 5 14 15 24  " ','segment') 
limit 100;



select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content_pyy="Ylike@  1 5 * 15 24  " ','segment') 
limit 100;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content="Ylike@  1 5 * 15 24  " ','segment') 
limit 100;

select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content_pyy="Ylike@14 15 * 24 28 * 37 41  " ','segment') 
limit 100;

select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content="Ylike@14 15 * 24 28 * 37 41  " ','segment') 
limit 100;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content_pyy="Ylike@14 * 15 * 24 * 28 * 37*  41  " ','segment') 
limit 100;


select 
    r[0] as content 
from 
    ydb where YSQL('from','select  content from ydb_example_shu_positon where ydbpartion = "3000w"  and content="Ylike@14 * 15 * 24 * 28 * 37*  41  " ','segment') 
limit 100;


select 
    r[0] as label_info,
    sum(cast(r[1] as bigint)) as cnt
from 
    ydb where YSQL('from','select multyvalue_long,count(*) from ydb_example_shu_multyvalue where ydbpartion = "3000w"  group by multyvalue_long  ','segment') 
group by r[0]  order by cnt desc 
limit 1000;

select 
    r[0] as label_info,
    sum(cast(r[1] as bigint)) as cnt,
    sum(cast(r[2] as bigint)) as cntamt,
    sum(cast(r[3] as double)) as sumamt
from 
    ydb where YSQL('from','select multyvalue_long,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu_multyvalue where ydbpartion = "3000w"  group by multyvalue_long  ','segment') 
group by r[0]  order by cnt desc 
limit 10;


select 
    r[0] as label_info,
    r[1] as ydb_sex,
    sum(cast(r[2] as bigint)) as cnt
from 
    ydb where YSQL('from','select multyvalue_long,ydb_sex,count(*) from ydb_example_shu_multyvalue where ydbpartion = "3000w"  group by multyvalue_long,ydb_sex  ','segment') 
group by r[0],r[1]  order by r[0] asc 
limit 10;


select 
    r[0] as label_info,
    r[1] as label_info2,
    sum(cast(r[2] as bigint)) as cnt
from 
    ydb where YSQL('from','select multyvalue_long,multyvalue_string,count(*) from ydb_example_shu_multyvalue where ydbpartion = "3000w"  group by multyvalue_long,multyvalue_string  ','segment') 
group by r[0],r[1]  order by label_info,label_info2 
limit 100;



select 
    YAnalyzer('simpletext','query',"中华人民共和国") as query,
    YAnalyzer('simpletext','index',"中华人民共和国") as index
from 
    ydb where YSQL('from','select content from ydb_example_shu_multyvalue where ydbpartion="3000w"  ','segment') 
limit 1;

select 
    r[0],
    r[1],
    r[2],
    r[3],
    r[4]
from 
    ydb where YSQL('from','select multyvalue_string,multyvalue_tlong,multyvalue_long,multyvalue_tdouble,multyvalue_double from ydb_example_shu_multyvalue where ydbpartion="3000w" and multyvalue_string="null"  ','segment') 
limit 100;


select 
    YR_LONG(r,'phonenum') as phone,
     YR_STR(r,'usernick') as usernick,
    YR_DOUBLE(r,'amtdouble') as amtdouble,
     YR_FLOAT(r,'amtdouble') as amtdoublefloat, 
     YR_INT(r,'amtlong') as amtlong_int,
     YR_LONG(r,'amtlong') as amtlong
from 
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;

----多个ydb分区数据一起检索###
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion in ("3000w","300winsert","300winsert2","test1","test3") ','segment') 
limit 10;

----数据预览
select 
    r[0] as phone,
    r[1] as usernick,
    r[2] as ydb_sex,
    r[3] as ydb_province ,
    r[4] as ydb_grade,
    r[5] as ydb_age,
    r[6] as ydb_blood,
    r[7] as ydb_zhiye,
    r[8] as ydb_earn,
    r[9] as ydb_prefer,
    r[10] as ydb_consume,
    r[11] as ydb_day,
    r[12] as amtdouble,
    r[13] as amtlong,
    r[14] as content
from 
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;



----全文检索
select 
    r[0] as content,
    r[1] as usernick 
from 
    ydb where YSQL('from','select content,usernick from ydb_example_shu where ydbpartion="3000w" and content="王老吉" ','segment') 
limit 100;

----如果SQL比较复杂，可以通过Ycode@进行urlencode编码
select 
    r[0] as content,
    r[1] as usernick 
from
    ydb where YSQL('from','Ycode@select+content%2Cusernick+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+and+content%3D%27%E7%8E%8B%E8%80%81%E5%90%89%27','segment') 
limit 100;

----多个条件组合过滤
select 
    r[0] as ydb_sex,
    r[1] as ydb_grade,
    r[2] as ydb_age,
    r[3] as ydb_blood,
    r[4] as amtlong
from 
    ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where ydbpartion="3000w"  and ydb_sex="女" and ydb_grade="本科" and (ydb_age="20到30岁" or ydb_blood="O") and  (amtlong like "([3000 TO 4000] )") ','segment') 
limit 100;


----sum求和
select sum(cast(r[0] as bigint)) as sumamtdouble from 
    ydb where YSQL('from','select sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;

----avg求平均数
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


----更复杂点的统计
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
        ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = "3000w"  ','segment')
)tmp
 limit 10;
 
----单列group by
select 
    r[0] as ydb_sex,
    sum(cast(r[1] as bigint)) as cnt,
    sum(cast(r[2] as bigint)) as cntamt,
    sum(cast(r[3] as double)) as sumamt
from 
    ydb where YSQL('from','select ydb_sex,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" group by ydb_sex  ','segment') 
group by r[0]  order by cnt desc 
limit 10;

----多列group by
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

----top N 排序
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
order by amtdouble desc ,amtlong  
limit 10;



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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string),c4_string from ydb_all_type where ydbpartion=\'3000w\' group by c4_string  ','segment')
group by r[93]  order by amtdouble desc
limit 10;


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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string),c2_long,c1_float from ydb_all_type where ydbpartion=\'3000w\' group by c2_long,c1_float  ','segment')
group by r[93],r[94]  order by amtdouble desc
limit 10;



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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string),c4_string,c1_long,c2_float,c3_double from ydb_all_type where ydbpartion=\'3000w\' group by c4_string,c1_long,c2_float,c3_double  ','segment')
group by r[93],r[94],r[95],r[96]  order by amtdouble desc
limit 10;


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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string),c4_double from ydb_all_type where ydbpartion=\'3000w\' group by c4_double  ','segment')
group by r[93]  order by amtdouble desc
limit 10;


 
select 
    r[0] as content,
    r[1] as usernick 
from 
    ydb where YSQL('from','select content,usernick from ydb_example_shu where ydbpartion=\'3000w\' and ydb_raw_query_s like \'content:王老吉\' ','segment') 
limit 100;
 
 
select 
    r[0] as content,
    r[1] as usernick 
from 
    ydb where YSQL('from','select content,usernick from ydb_example_shu where ydbpartion=\'3000w\' and ydb_code_query_s like \'content%3A%E7%8E%8B%E8%80%81%E5%90%89\' ','segment') 
limit 100;
 
 
 
 
 select sum(cast(r[0] as bigint)) as cnt from 
     ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'刘博涛\' ','segment') 
 limit 10;
 
 
 
 select sum(cast(r[0] as bigint)) as cnt from 
     ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and  content = \'王老吉\'and ( ( amtdouble like \'({5 TO 10} )\') or ( amtlong like \'({5 TO 10} )\')  ) and ((phonenum =\'273\') or ydb_province=\'北京\' or ydb_blood=\'O\' or ydb_zhiye=\'IT\' or ydb_prefer=\'电影\' or usernick=\'刘博涛\') and ydb_sex=\'男\' and ydb_day=\'20160311\'  ','segment') 
 limit 10;
 
 select sum(cast(r[0] as bigint)) as cnt,
         sum(cast(r[1] as bigint)) as cntamt,
         sum(cast(r[2] as double)) as sumamt,
         min(cast(r[3] as double)) as minamt,
         max(cast(r[4] as double)) as maxamt,
         min(r[5]) as minprov,
         max(r[6]) as maxprov from 
     ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
 limit 10;
 
 
 select sum(cast(r[0] as bigint)) as cnt,
         sum(cast(r[1] as bigint)) as cntamt,
         sum(cast(r[2] as double)) as sumamt,
         min(cast(r[3] as double)) as minamt,
         max(cast(r[4] as double)) as maxamt,
         min(r[5]) as minprov,
         max(r[6]) as maxprov from 
     ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'刘博涛\' ','segment') 
 limit 10;
 
 
 select sum(cast(r[0] as bigint)) as cnt,
         sum(cast(r[1] as bigint)) as cntamt,
         sum(cast(r[2] as double)) as sumamt,
         min(cast(r[3] as double)) as minamt,
         max(cast(r[4] as double)) as maxamt,
         min(r[5]) as minprov,
         max(r[6]) as maxprov from 
     ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\' and  content = \'王老吉\'and ( ( amtdouble like \'({5 TO 10} )\') or ( amtlong like \'({5 TO 10} )\')  ) and ((phonenum =\'273\') or ydb_province=\'北京\' or ydb_blood=\'O\' or ydb_zhiye=\'IT\' or ydb_prefer=\'电影\' or usernick=\'刘博涛\') and ydb_sex=\'男\' and ydb_day=\'20160311\'  ','segment') 
 limit 10;
 
 select r[0] as ydb_sex,r[1] as ydb_grade,r[2] as ydb_blood,r[3] as ydb_zhiye,r[4] as ydb_province,
         sum(cast(r[5] as bigint)) as cnt,
         sum(cast(r[6] as bigint)) as cntamt,
         sum(cast(r[7] as double)) as sumamt,
         min(cast(r[8] as double)) as minamt,
         max(cast(r[9] as double)) as maxamt,
         min(r[10]) as minprov,
         max(r[11]) as maxprov from 
     ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_blood,ydb_zhiye,ydb_province,count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_sex,ydb_grade,ydb_blood,ydb_zhiye,ydb_province ','segment') 
 group by r[0],r[1],r[2],r[3],r[4] order by cnt desc
 limit 10;
 
 select r[0] as ydb_sex,r[1] as ydb_grade,r[2] as ydb_blood,r[3] as ydb_zhiye,r[4] as ydb_province,
         sum(cast(r[5] as bigint)) as cnt,
         sum(cast(r[6] as bigint)) as cntamt,
         sum(cast(r[7] as double)) as sumamt,
         min(cast(r[8] as double)) as minamt,
         max(cast(r[9] as double)) as maxamt,
         min(r[10]) as minprov,
         max(r[11]) as maxprov from 
     ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_blood,ydb_zhiye,ydb_province,count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'刘博涛\' group by ydb_sex,ydb_grade,ydb_blood,ydb_zhiye,ydb_province ','segment') 
 group by r[0],r[1],r[2],r[3],r[4] order by cnt desc
 limit 10;
 
 

 select r[0] as ydb_sex,r[1] as ydb_grade,r[2] as ydb_blood,r[3] as ydb_zhiye,r[4] as ydb_province,
         sum(cast(r[5] as bigint)) as cnt,
         sum(cast(r[6] as bigint)) as cntamt,
         sum(cast(r[7] as double)) as sumamt,
         min(cast(r[8] as double)) as minamt,
         max(cast(r[9] as double)) as maxamt,
         min(r[10]) as minprov,
         max(r[11]) as maxprov from 
     ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_blood,ydb_zhiye,ydb_province,count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\' and  content = \'王老吉\'and ( ( amtdouble like \'({5 TO 10} )\') or ( amtlong like \'({5 TO 10} )\')  ) and ((phonenum =\'273\') or ydb_province=\'北京\' or ydb_blood=\'O\' or ydb_zhiye=\'IT\' or ydb_prefer=\'电影\' or usernick=\'刘博涛\') and ydb_sex=\'男\' and ydb_day=\'20160311\' group by ydb_sex,ydb_grade,ydb_blood,ydb_zhiye,ydb_province ','segment') 
 group by r[0],r[1],r[2],r[3],r[4] order by cnt desc limit 10;
 
 select 
     r[0] as phone,
     r[1] as usernick,
     r[2] as ydb_sex,
     r[3] as ydb_province ,
     r[4] as ydb_grade,
     r[5] as ydb_age,
     r[6] as ydb_blood,
     r[7] as ydb_zhiye,
     r[8] as ydb_earn,
     r[9] as ydb_prefer,
     r[10] as ydb_consume,
     r[11] as ydb_day,
     r[12] as amtdouble,
     r[13] as amtlong,
     r[14] as content
 from 
     ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\'   order by amtdouble desc ,amtlong limit 10 ','segment') 
  order by amtdouble desc ,amtlong limit 10;
 
  select r[0] as phone, r[1] as usernick, r[2] as ydb_sex, r[3] as ydb_province , r[4] as ydb_grade,
     r[5] as ydb_age,
     r[6] as ydb_blood,
     r[7] as ydb_zhiye,
     r[8] as ydb_earn,
     r[9] as ydb_prefer,
     r[10] as ydb_consume,
     r[11] as ydb_day,
     r[12] as amtdouble,
     r[13] as amtlong,
     r[14] as content
 from 
     ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\'  and content=\'刘博涛\'  order by amtdouble desc ,amtlong limit 10 ','segment') 
  order by amtdouble desc ,amtlong limit 10;
  
  

 
  
  select     r[0] as phone,    r[1] as usernick,    r[2] as ydb_sex,
     r[3] as ydb_province ,    r[4] as ydb_grade,    r[5] as ydb_age,    r[6] as ydb_blood,
     r[7] as ydb_zhiye,    r[8] as ydb_earn,    r[9] as ydb_prefer,    r[10] as ydb_consume,    r[11] as ydb_day,    r[12] as amtdouble,    r[13] as amtlong,    r[14] as content
 from 
     ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content = \'王老吉\'and ( ( amtdouble like \'({5 TO 10} )\') or ( amtlong like \'({5 TO 10} )\')  ) and ((phonenum =\'273\') or ydb_province=\'北京\' or ydb_blood=\'O\' or ydb_zhiye=\'IT\' or ydb_prefer=\'电影\' or usernick=\'刘博涛\') and ydb_sex=\'男\' and ydb_day=\'20160311\'  order by amtdouble desc ,amtlong limit 10 ','segment') 
  order by amtdouble desc ,amtlong limit 10;
  
 
 

select ydb_sex,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_province,cnt,cntamt,sumamt)))) from (
select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]

)tmp  group by ydb_sex limit 10;



select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_sex,cnt,cntamt,sumamt)))) from (
select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]

)tmp  group by ydb_province order by scnt desc limit 10;




select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (
select 
    r[0] as ydb_blood, 
    r[1] as ydb_sex, 
    r[2] as ydb_province,
    sum(cast(r[3] as bigint)) as cnt,
    sum(cast(r[4] as bigint)) as cntamt
from 
    ydb where YSQL('from','select ydb_blood,ydb_sex,ydb_province,count(*),count(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_blood,ydb_sex,ydb_province  ','segment') 
group by r[0], r[1], r[2]

)tmp  group by ydb_province order by scnt desc limit 10;



select ydb_day,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (
select 
    r[0] as ydb_day, 
    r[1] as ydb_sex, 
    r[2] as ydb_blood,
    sum(cast(r[3] as bigint)) as cnt,
    sum(cast(r[4] as bigint)) as cntamt
from 
    ydb where YSQL('from','select ydb_day,ydb_sex,ydb_blood,count(*),count(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_day,ydb_sex,ydb_blood  ','segment') 
group by r[0], r[1], r[2]

)tmp  group by ydb_day order by scnt desc limit 10;



---以下为旧版写法示例




select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu ','segment') 
limit 10;

select 
    r[0] as phone,
    r[1] as usernick,
    r[2] as ydb_sex,
    r[3] as ydb_province ,
    r[4] as ydb_grade,
    r[5] as ydb_age,
    r[6] as ydb_blood,
    r[7] as ydb_zhiye,
    r[8] as ydb_earn,
    r[9] as ydb_prefer,
    r[10] as ydb_consume,
    r[11] as ydb_day,
    r[12] as amtdouble,
    r[13] as amtlong,
    r[14] as content
from 
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
limit 10;


select 
    r[0] as content,
    r[1] as usernick 
from 
    ydb where YSQL('from','select content,usernick from ydb_example_shu where  content=\'王老吉\' ','segment') 
limit 100;



select 
    r[0] as ydb_sex,
    r[1] as ydb_grade,
    r[2] as ydb_age,
    r[3] as ydb_blood,
    r[4] as amtlong
from 
    ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where  ydb_sex=\'女\' and ydb_grade=\'本科\' and (ydb_age=\'20到30岁\' or ydb_blood=\'O\') and  (amtlong like \'([3000 TO 4000] )\') ','segment') 
limit 100;


select sum(cast(r[0] as bigint)) as sumamtdouble from 
    ydb where YSQL('from','select sum(amtdouble) from ydb_example_shu  ','segment') 
limit 10;

select 
    tmp.cntamt,
    tmp.sumamt,
    case when tmp.cntamt>0 then tmp.sumamt/tmp.cntamt else 0 end as avgamt
from (
    select 
        sum(cast(r[0] as bigint)) as cntamt,
        sum(cast(r[1] as double)) as sumamt
    from 
        ydb where YSQL('from','select count(amtdouble),sum(amtdouble) from ydb_example_shu  ','segment')

)tmp
limit 10;


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
        ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu   ','segment')
)tmp
 limit 10;
 
select 
    r[0] as ydb_sex,
    sum(cast(r[1] as bigint)) as cnt,
    sum(cast(r[2] as bigint)) as cntamt,
    sum(cast(r[3] as double)) as sumamt
from 
    ydb where YSQL('from','select ydb_sex,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu  group by ydb_sex  ','segment') 
group by r[0]  order by cnt desc 
limit 10;

select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu  group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]  order by cnt desc 
limit 10;

select ydb_sex, phonenum,amtlong,amtdouble from 
(
    select 
        r[0] as ydb_sex,
        r[1] as phonenum,
        cast(r[2] as bigint) as amtlong,
        cast(r[3] as double) as amtdouble 
    from 
        ydb where YSQL('from','select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu  order by amtdouble desc ,amtlong limit 10 ','segment')
)tmp 
order by amtdouble desc ,amtlong  
limit 10;




select 
    r[0] as usernick, 
    r[1] as amtlong,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select usernick,amtlong,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by usernick,amtlong  ','segment') 
group by r[0], r[1]  order by cnt desc  ,sumamt desc 
limit 30;




select 
    r[0] as usernick, 
    r[1] as amtdouble,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select usernick,amtdouble,count(*),count(amtlong),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' group by usernick,amtdouble  ','segment') 
group by r[0], r[1]  order by cnt desc,sumamt desc 
limit 10;



select 
    r[0] as usernick, 
    r[1] as amtdouble,
    r[2] as ydb_day,
    r[3] as amtlong,
    sum(cast(r[4] as double)) as cnt 
from 
    ydb where YSQL('from','select usernick,amtdouble,ydb_day,amtlong,count(*) from ydb_example_shu where ydbpartion = \'3000w\' group by usernick,amtdouble,ydb_day,amtlong  ','segment') 
group by r[0],r[1],r[2],r[3]  order by cnt desc,usernick asc ,ydb_day desc 
limit 20;


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
        sum(cast(r[77] as double)),sum(cast(r[78] as double)),max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string) from ydb_all_type where ydbpartion=\'3000w\'   ','segment')
limit 10;

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
        sum(cast(r[77] as double)),sum(cast(r[78] as double)),max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string) from ydb_all_type where ydbpartion=\'3000w\'   ','segment')
limit 10 ;

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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string),d4_double from ydb_all_type where ydbpartion=\'3000w\' group by d4_double  ','segment')
group by r[93]  order by amtdouble desc
limit 10;


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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string),d4_string from ydb_all_type where ydbpartion=\'3000w\' group by d4_string  ','segment')
group by r[93]  order by amtdouble desc
limit 10;

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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string),d2_long,d1_float from ydb_all_type where ydbpartion=\'3000w\' group by d2_long,d1_float  ','segment')
group by r[93],r[94]  order by amtdouble desc
limit 10;


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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string),d4_string,d1_long,d2_float,d3_double from ydb_all_type where ydbpartion=\'3000w\' group by d4_string,d1_long,d2_float,d3_double  ','segment')
group by r[93],r[94],r[95],r[96]  order by amtdouble desc
limit 10;






select sum(cnt) as cnt from 
(
select sum(cast(r[0] as bigint)) as cnt from 
ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment')
 
union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb1 where YSQL('from ydb1','select count(*) from ydb_example_shu where ydbpartion=\'300winsert\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb2 where YSQL('from ydb2','select count(*) from ydb_example_shu where ydbpartion=\'300winsert2\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb3 where YSQL('from ydb3','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb4 where YSQL('from ydb4','select count(*) from ydb_example_trade where ydbpartion=\'20151011\'   and content=\'工商银行\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb5 where YSQL('from ydb5','select count(*) from ydb_example_trade where ydbpartion=\'20151011\' ','segment') 

) tmp limit 10;


select sum(cnt) as cnt from 
(
select sum(cast(r[0] as bigint)) as cnt from 
ydb where YSQL('from ydb','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment')
 
union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb1 where YSQL('from ydb1','select count(*) from ydb_example_shu where ydbpartion=\'300winsert\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb2 where YSQL('from ydb2','select count(*) from ydb_example_shu where ydbpartion=\'300winsert2\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb3 where YSQL('from ydb3','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb4 where YSQL('from ydb4','select count(*) from ydb_example_trade where ydbpartion=\'20151011\'   and content=\'工商银行\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb5 where YSQL('from ydb5','select count(*) from ydb_example_trade where ydbpartion=\'20151011\' ','segment') 

) tmp limit 10;


select sum(cnt) as cnt,sum(sumamt) as cnt from 
(
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb where YSQL('from','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'旺旺\'  ','segment')
 
union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb1 where YSQL('from ydb1','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\'  ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb2 where YSQL('from ydb2','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'汇源\'  ','segment') 


union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb3 where YSQL('from ydb3','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'哇哈哈\'  ','segment') 


union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb4 where YSQL('from ydb4','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\'  ','segment') 

) tmp limit 10;

select r from 
(
select r as r from 
ydb where YSQL('from','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'旺旺\' order by amtlong desc limit 0,1 ','segment')
 
union all
select r as r from 
ydb1 where YSQL('from ydb1','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\' order by amtlong desc limit 0,1 ','segment') 

union all
select r as r from 
ydb2 where YSQL('from ydb2','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'汇源\' order by amtlong desc limit 0,1 ','segment') 


union all
select r as r from 
ydb3 where YSQL('from ydb3','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'哇哈哈\' order by amtlong desc limit 0,1 ','segment') 



) tmp  limit 1000;






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
        min(cast(r[5] as string)) as minprov,
        max(cast(r[6] as string)) as maxprov
    from ydb where 
    YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where   ydbpartion in (  \'3000w0\',\'3000w1\' ,\'3000w2\',\'3000w3\',\'3000w4\',\'3000w5\',\'3000w6\',\'3000w7\',\'3000w8\',\'3000w9\',\'3000w10\' ,\'3000w11\',\'3000w12\',\'3000w13\',\'3000w14\',\'3000w15\' ,\'3000w16\'  ,\'3000w17\',\'3000w18\',\'3000w19\'
,\'3000a0\',\'3000a1\' ,\'3000a2\',\'3000a3\',\'3000a4\',\'3000a5\',\'3000a6\',\'3000a7\',\'3000a8\',\'3000a9\',\'3000a10\' ,\'3000a11\',\'3000a12\',\'3000a13\',\'3000a14\',\'3000a15\' ,\'3000a16\'  ,\'3000a17\',\'3000a18\',\'3000a19\' 
,\'3000b0\',\'3000b1\' ,\'3000b2\',\'3000b3\',\'3000b4\',\'3000b5\',\'3000b6\',\'3000b7\',\'3000b8\',\'3000b9\',\'3000b10\' ,\'3000b11\',\'3000b12\',\'3000b13\',\'3000b14\',\'3000b15\' ,\'3000b16\'  ,\'3000b17\',\'3000b18\',\'3000b19\' 

) ','segment')

)tmp

 limit 10;


 



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
        min(cast(r[5] as string)) as minprov,
        max(cast(r[6] as string)) as maxprov
    from ydb where 
    YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where   ydbpartion in (  \'3000w0\',\'3000w1\' ,\'3000w2\',\'3000w3\',\'3000w4\',\'3000w5\',\'3000w6\',\'3000w7\',\'3000w8\',\'3000w9\',\'3000w10\' ,\'3000w11\',\'3000w12\',\'3000w13\',\'3000w14\',\'3000w15\' ,\'3000w16\'  ,\'3000w17\',\'3000w18\',\'3000w19\'
,\'3000a0\',\'3000a1\' ,\'3000a2\',\'3000a3\',\'3000a4\',\'3000a5\',\'3000a6\',\'3000a7\',\'3000a8\',\'3000a9\',\'3000a10\' ,\'3000a11\',\'3000a12\',\'3000a13\',\'3000a14\',\'3000a15\' ,\'3000a16\'  ,\'3000a17\',\'3000a18\',\'3000a19\' 
,\'3000b0\',\'3000b1\' ,\'3000b2\',\'3000b3\',\'3000b4\',\'3000b5\',\'3000b6\',\'3000b7\',\'3000b8\',\'3000b9\',\'3000b10\' ,\'3000b11\',\'3000b12\',\'3000b13\',\'3000b14\',\'3000b15\' ,\'3000b16\'  ,\'3000b17\',\'3000b18\',\'3000b19\' 

) ','segment')

)tmp

 limit 10;
 

 

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
        min(cast(r[5] as string)) as minprov,
        max(cast(r[6] as string)) as maxprov
    from ydb where 
    YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where   ydbpartion in (  \'3000w0\',\'3000w1\' ,\'3000w2\',\'3000w3\',\'3000w4\',\'3000w5\',\'3000w6\',\'3000w7\',\'3000w8\',\'3000w9\',\'3000w10\' ,\'3000w11\',\'3000w12\',\'3000w13\',\'3000w14\',\'3000w15\' ,\'3000w16\'  ,\'3000w17\',\'3000w18\',\'3000w19\'
,\'3000a0\',\'3000a1\' ,\'3000a2\',\'3000a3\',\'3000a4\',\'3000a5\',\'3000a6\',\'3000a7\',\'3000a8\',\'3000a9\',\'3000a10\' ,\'3000a11\',\'3000a12\',\'3000a13\',\'3000a14\',\'3000a15\' ,\'3000a16\'  ,\'3000a17\',\'3000a18\',\'3000a19\' 
,\'3000b0\',\'3000b1\' ,\'3000b2\',\'3000b3\',\'3000b4\',\'3000b5\',\'3000b6\',\'3000b7\',\'3000b8\',\'3000b9\',\'3000b10\' ,\'3000b11\',\'3000b12\',\'3000b13\',\'3000b14\',\'3000b15\' ,\'3000b16\'  ,\'3000b17\',\'3000b18\',\'3000b19\' 

) ','segment')

)tmp

 limit 10;
 
 


----2048个in查询
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and amtlong in (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047)  ','segment') 
limit 10;




----2048个or查询
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and (amtlong=\'0\' or amtlong=\'1\' or amtlong=\'2\' or amtlong=\'3\' or amtlong=\'4\' or amtlong=\'5\' or amtlong=\'6\' or amtlong=\'7\' or amtlong=\'8\' or amtlong=\'9\' or amtlong=\'10\' or amtlong=\'11\' or amtlong=\'12\' or amtlong=\'13\' or amtlong=\'14\' or amtlong=\'15\' or amtlong=\'16\' or amtlong=\'17\' or amtlong=\'18\' or amtlong=\'19\' or amtlong=\'20\' or amtlong=\'21\' or amtlong=\'22\' or amtlong=\'23\' or amtlong=\'24\' or amtlong=\'25\' or amtlong=\'26\' or amtlong=\'27\' or amtlong=\'28\' or amtlong=\'29\' or amtlong=\'30\' or amtlong=\'31\' or amtlong=\'32\' or amtlong=\'33\' or amtlong=\'34\' or amtlong=\'35\' or amtlong=\'36\' or amtlong=\'37\' or amtlong=\'38\' or amtlong=\'39\' or amtlong=\'40\' or amtlong=\'41\' or amtlong=\'42\' or amtlong=\'43\' or amtlong=\'44\' or amtlong=\'45\' or amtlong=\'46\' or amtlong=\'47\' or amtlong=\'48\' or amtlong=\'49\' or amtlong=\'50\' or amtlong=\'51\' or amtlong=\'52\' or amtlong=\'53\' or amtlong=\'54\' or amtlong=\'55\' or amtlong=\'56\' or amtlong=\'57\' or amtlong=\'58\' or amtlong=\'59\' or amtlong=\'60\' or amtlong=\'61\' or amtlong=\'62\' or amtlong=\'63\' or amtlong=\'64\' or amtlong=\'65\' or amtlong=\'66\' or amtlong=\'67\' or amtlong=\'68\' or amtlong=\'69\' or amtlong=\'70\' or amtlong=\'71\' or amtlong=\'72\' or amtlong=\'73\' or amtlong=\'74\' or amtlong=\'75\' or amtlong=\'76\' or amtlong=\'77\' or amtlong=\'78\' or amtlong=\'79\' or amtlong=\'80\' or amtlong=\'81\' or amtlong=\'82\' or amtlong=\'83\' or amtlong=\'84\' or amtlong=\'85\' or amtlong=\'86\' or amtlong=\'87\' or amtlong=\'88\' or amtlong=\'89\' or amtlong=\'90\' or amtlong=\'91\' or amtlong=\'92\' or amtlong=\'93\' or amtlong=\'94\' or amtlong=\'95\' or amtlong=\'96\' or amtlong=\'97\' or amtlong=\'98\' or amtlong=\'99\' or amtlong=\'100\' or amtlong=\'101\' or amtlong=\'102\' or amtlong=\'103\' or amtlong=\'104\' or amtlong=\'105\' or amtlong=\'106\' or amtlong=\'107\' or amtlong=\'108\' or amtlong=\'109\' or amtlong=\'110\' or amtlong=\'111\' or amtlong=\'112\' or amtlong=\'113\' or amtlong=\'114\' or amtlong=\'115\' or amtlong=\'116\' or amtlong=\'117\' or amtlong=\'118\' or amtlong=\'119\' or amtlong=\'120\' or amtlong=\'121\' or amtlong=\'122\' or amtlong=\'123\' or amtlong=\'124\' or amtlong=\'125\' or amtlong=\'126\' or amtlong=\'127\' or amtlong=\'128\' or amtlong=\'129\' or amtlong=\'130\' or amtlong=\'131\' or amtlong=\'132\' or amtlong=\'133\' or amtlong=\'134\' or amtlong=\'135\' or amtlong=\'136\' or amtlong=\'137\' or amtlong=\'138\' or amtlong=\'139\' or amtlong=\'140\' or amtlong=\'141\' or amtlong=\'142\' or amtlong=\'143\' or amtlong=\'144\' or amtlong=\'145\' or amtlong=\'146\' or amtlong=\'147\' or amtlong=\'148\' or amtlong=\'149\' or amtlong=\'150\' or amtlong=\'151\' or amtlong=\'152\' or amtlong=\'153\' or amtlong=\'154\' or amtlong=\'155\' or amtlong=\'156\' or amtlong=\'157\' or amtlong=\'158\' or amtlong=\'159\' or amtlong=\'160\' or amtlong=\'161\' or amtlong=\'162\' or amtlong=\'163\' or amtlong=\'164\' or amtlong=\'165\' or amtlong=\'166\' or amtlong=\'167\' or amtlong=\'168\' or amtlong=\'169\' or amtlong=\'170\' or amtlong=\'171\' or amtlong=\'172\' or amtlong=\'173\' or amtlong=\'174\' or amtlong=\'175\' or amtlong=\'176\' or amtlong=\'177\' or amtlong=\'178\' or amtlong=\'179\' or amtlong=\'180\' or amtlong=\'181\' or amtlong=\'182\' or amtlong=\'183\' or amtlong=\'184\' or amtlong=\'185\' or amtlong=\'186\' or amtlong=\'187\' or amtlong=\'188\' or amtlong=\'189\' or amtlong=\'190\' or amtlong=\'191\' or amtlong=\'192\' or amtlong=\'193\' or amtlong=\'194\' or amtlong=\'195\' or amtlong=\'196\' or amtlong=\'197\' or amtlong=\'198\' or amtlong=\'199\' or amtlong=\'200\' or amtlong=\'201\' or amtlong=\'202\' or amtlong=\'203\' or amtlong=\'204\' or amtlong=\'205\' or amtlong=\'206\' or amtlong=\'207\' or amtlong=\'208\' or amtlong=\'209\' or amtlong=\'210\' or amtlong=\'211\' or amtlong=\'212\' or amtlong=\'213\' or amtlong=\'214\' or amtlong=\'215\' or amtlong=\'216\' or amtlong=\'217\' or amtlong=\'218\' or amtlong=\'219\' or amtlong=\'220\' or amtlong=\'221\' or amtlong=\'222\' or amtlong=\'223\' or amtlong=\'224\' or amtlong=\'225\' or amtlong=\'226\' or amtlong=\'227\' or amtlong=\'228\' or amtlong=\'229\' or amtlong=\'230\' or amtlong=\'231\' or amtlong=\'232\' or amtlong=\'233\' or amtlong=\'234\' or amtlong=\'235\' or amtlong=\'236\' or amtlong=\'237\' or amtlong=\'238\' or amtlong=\'239\' or amtlong=\'240\' or amtlong=\'241\' or amtlong=\'242\' or amtlong=\'243\' or amtlong=\'244\' or amtlong=\'245\' or amtlong=\'246\' or amtlong=\'247\' or amtlong=\'248\' or amtlong=\'249\' or amtlong=\'250\' or amtlong=\'251\' or amtlong=\'252\' or amtlong=\'253\' or amtlong=\'254\' or amtlong=\'255\' or amtlong=\'256\' or amtlong=\'257\' or amtlong=\'258\' or amtlong=\'259\' or amtlong=\'260\' or amtlong=\'261\' or amtlong=\'262\' or amtlong=\'263\' or amtlong=\'264\' or amtlong=\'265\' or amtlong=\'266\' or amtlong=\'267\' or amtlong=\'268\' or amtlong=\'269\' or amtlong=\'270\' or amtlong=\'271\' or amtlong=\'272\' or amtlong=\'273\' or amtlong=\'274\' or amtlong=\'275\' or amtlong=\'276\' or amtlong=\'277\' or amtlong=\'278\' or amtlong=\'279\' or amtlong=\'280\' or amtlong=\'281\' or amtlong=\'282\' or amtlong=\'283\' or amtlong=\'284\' or amtlong=\'285\' or amtlong=\'286\' or amtlong=\'287\' or amtlong=\'288\' or amtlong=\'289\' or amtlong=\'290\' or amtlong=\'291\' or amtlong=\'292\' or amtlong=\'293\' or amtlong=\'294\' or amtlong=\'295\' or amtlong=\'296\' or amtlong=\'297\' or amtlong=\'298\' or amtlong=\'299\' or amtlong=\'300\' or amtlong=\'301\' or amtlong=\'302\' or amtlong=\'303\' or amtlong=\'304\' or amtlong=\'305\' or amtlong=\'306\' or amtlong=\'307\' or amtlong=\'308\' or amtlong=\'309\' or amtlong=\'310\' or amtlong=\'311\' or amtlong=\'312\' or amtlong=\'313\' or amtlong=\'314\' or amtlong=\'315\' or amtlong=\'316\' or amtlong=\'317\' or amtlong=\'318\' or amtlong=\'319\' or amtlong=\'320\' or amtlong=\'321\' or amtlong=\'322\' or amtlong=\'323\' or amtlong=\'324\' or amtlong=\'325\' or amtlong=\'326\' or amtlong=\'327\' or amtlong=\'328\' or amtlong=\'329\' or amtlong=\'330\' or amtlong=\'331\' or amtlong=\'332\' or amtlong=\'333\' or amtlong=\'334\' or amtlong=\'335\' or amtlong=\'336\' or amtlong=\'337\' or amtlong=\'338\' or amtlong=\'339\' or amtlong=\'340\' or amtlong=\'341\' or amtlong=\'342\' or amtlong=\'343\' or amtlong=\'344\' or amtlong=\'345\' or amtlong=\'346\' or amtlong=\'347\' or amtlong=\'348\' or amtlong=\'349\' or amtlong=\'350\' or amtlong=\'351\' or amtlong=\'352\' or amtlong=\'353\' or amtlong=\'354\' or amtlong=\'355\' or amtlong=\'356\' or amtlong=\'357\' or amtlong=\'358\' or amtlong=\'359\' or amtlong=\'360\' or amtlong=\'361\' or amtlong=\'362\' or amtlong=\'363\' or amtlong=\'364\' or amtlong=\'365\' or amtlong=\'366\' or amtlong=\'367\' or amtlong=\'368\' or amtlong=\'369\' or amtlong=\'370\' or amtlong=\'371\' or amtlong=\'372\' or amtlong=\'373\' or amtlong=\'374\' or amtlong=\'375\' or amtlong=\'376\' or amtlong=\'377\' or amtlong=\'378\' or amtlong=\'379\' or amtlong=\'380\' or amtlong=\'381\' or amtlong=\'382\' or amtlong=\'383\' or amtlong=\'384\' or amtlong=\'385\' or amtlong=\'386\' or amtlong=\'387\' or amtlong=\'388\' or amtlong=\'389\' or amtlong=\'390\' or amtlong=\'391\' or amtlong=\'392\' or amtlong=\'393\' or amtlong=\'394\' or amtlong=\'395\' or amtlong=\'396\' or amtlong=\'397\' or amtlong=\'398\' or amtlong=\'399\' or amtlong=\'400\' or amtlong=\'401\' or amtlong=\'402\' or amtlong=\'403\' or amtlong=\'404\' or amtlong=\'405\' or amtlong=\'406\' or amtlong=\'407\' or amtlong=\'408\' or amtlong=\'409\' or amtlong=\'410\' or amtlong=\'411\' or amtlong=\'412\' or amtlong=\'413\' or amtlong=\'414\' or amtlong=\'415\' or amtlong=\'416\' or amtlong=\'417\' or amtlong=\'418\' or amtlong=\'419\' or amtlong=\'420\' or amtlong=\'421\' or amtlong=\'422\' or amtlong=\'423\' or amtlong=\'424\' or amtlong=\'425\' or amtlong=\'426\' or amtlong=\'427\' or amtlong=\'428\' or amtlong=\'429\' or amtlong=\'430\' or amtlong=\'431\' or amtlong=\'432\' or amtlong=\'433\' or amtlong=\'434\' or amtlong=\'435\' or amtlong=\'436\' or amtlong=\'437\' or amtlong=\'438\' or amtlong=\'439\' or amtlong=\'440\' or amtlong=\'441\' or amtlong=\'442\' or amtlong=\'443\' or amtlong=\'444\' or amtlong=\'445\' or amtlong=\'446\' or amtlong=\'447\' or amtlong=\'448\' or amtlong=\'449\' or amtlong=\'450\' or amtlong=\'451\' or amtlong=\'452\' or amtlong=\'453\' or amtlong=\'454\' or amtlong=\'455\' or amtlong=\'456\' or amtlong=\'457\' or amtlong=\'458\' or amtlong=\'459\' or amtlong=\'460\' or amtlong=\'461\' or amtlong=\'462\' or amtlong=\'463\' or amtlong=\'464\' or amtlong=\'465\' or amtlong=\'466\' or amtlong=\'467\' or amtlong=\'468\' or amtlong=\'469\' or amtlong=\'470\' or amtlong=\'471\' or amtlong=\'472\' or amtlong=\'473\' or amtlong=\'474\' or amtlong=\'475\' or amtlong=\'476\' or amtlong=\'477\' or amtlong=\'478\' or amtlong=\'479\' or amtlong=\'480\' or amtlong=\'481\' or amtlong=\'482\' or amtlong=\'483\' or amtlong=\'484\' or amtlong=\'485\' or amtlong=\'486\' or amtlong=\'487\' or amtlong=\'488\' or amtlong=\'489\' or amtlong=\'490\' or amtlong=\'491\' or amtlong=\'492\' or amtlong=\'493\' or amtlong=\'494\' or amtlong=\'495\' or amtlong=\'496\' or amtlong=\'497\' or amtlong=\'498\' or amtlong=\'499\' or amtlong=\'500\' or amtlong=\'501\' or amtlong=\'502\' or amtlong=\'503\' or amtlong=\'504\' or amtlong=\'505\' or amtlong=\'506\' or amtlong=\'507\' or amtlong=\'508\' or amtlong=\'509\' or amtlong=\'510\' or amtlong=\'511\' or amtlong=\'512\' or amtlong=\'513\' or amtlong=\'514\' or amtlong=\'515\' or amtlong=\'516\' or amtlong=\'517\' or amtlong=\'518\' or amtlong=\'519\' or amtlong=\'520\' or amtlong=\'521\' or amtlong=\'522\' or amtlong=\'523\' or amtlong=\'524\' or amtlong=\'525\' or amtlong=\'526\' or amtlong=\'527\' or amtlong=\'528\' or amtlong=\'529\' or amtlong=\'530\' or amtlong=\'531\' or amtlong=\'532\' or amtlong=\'533\' or amtlong=\'534\' or amtlong=\'535\' or amtlong=\'536\' or amtlong=\'537\' or amtlong=\'538\' or amtlong=\'539\' or amtlong=\'540\' or amtlong=\'541\' or amtlong=\'542\' or amtlong=\'543\' or amtlong=\'544\' or amtlong=\'545\' or amtlong=\'546\' or amtlong=\'547\' or amtlong=\'548\' or amtlong=\'549\' or amtlong=\'550\' or amtlong=\'551\' or amtlong=\'552\' or amtlong=\'553\' or amtlong=\'554\' or amtlong=\'555\' or amtlong=\'556\' or amtlong=\'557\' or amtlong=\'558\' or amtlong=\'559\' or amtlong=\'560\' or amtlong=\'561\' or amtlong=\'562\' or amtlong=\'563\' or amtlong=\'564\' or amtlong=\'565\' or amtlong=\'566\' or amtlong=\'567\' or amtlong=\'568\' or amtlong=\'569\' or amtlong=\'570\' or amtlong=\'571\' or amtlong=\'572\' or amtlong=\'573\' or amtlong=\'574\' or amtlong=\'575\' or amtlong=\'576\' or amtlong=\'577\' or amtlong=\'578\' or amtlong=\'579\' or amtlong=\'580\' or amtlong=\'581\' or amtlong=\'582\' or amtlong=\'583\' or amtlong=\'584\' or amtlong=\'585\' or amtlong=\'586\' or amtlong=\'587\' or amtlong=\'588\' or amtlong=\'589\' or amtlong=\'590\' or amtlong=\'591\' or amtlong=\'592\' or amtlong=\'593\' or amtlong=\'594\' or amtlong=\'595\' or amtlong=\'596\' or amtlong=\'597\' or amtlong=\'598\' or amtlong=\'599\' or amtlong=\'600\' or amtlong=\'601\' or amtlong=\'602\' or amtlong=\'603\' or amtlong=\'604\' or amtlong=\'605\' or amtlong=\'606\' or amtlong=\'607\' or amtlong=\'608\' or amtlong=\'609\' or amtlong=\'610\' or amtlong=\'611\' or amtlong=\'612\' or amtlong=\'613\' or amtlong=\'614\' or amtlong=\'615\' or amtlong=\'616\' or amtlong=\'617\' or amtlong=\'618\' or amtlong=\'619\' or amtlong=\'620\' or amtlong=\'621\' or amtlong=\'622\' or amtlong=\'623\' or amtlong=\'624\' or amtlong=\'625\' or amtlong=\'626\' or amtlong=\'627\' or amtlong=\'628\' or amtlong=\'629\' or amtlong=\'630\' or amtlong=\'631\' or amtlong=\'632\' or amtlong=\'633\' or amtlong=\'634\' or amtlong=\'635\' or amtlong=\'636\' or amtlong=\'637\' or amtlong=\'638\' or amtlong=\'639\' or amtlong=\'640\' or amtlong=\'641\' or amtlong=\'642\' or amtlong=\'643\' or amtlong=\'644\' or amtlong=\'645\' or amtlong=\'646\' or amtlong=\'647\' or amtlong=\'648\' or amtlong=\'649\' or amtlong=\'650\' or amtlong=\'651\' or amtlong=\'652\' or amtlong=\'653\' or amtlong=\'654\' or amtlong=\'655\' or amtlong=\'656\' or amtlong=\'657\' or amtlong=\'658\' or amtlong=\'659\' or amtlong=\'660\' or amtlong=\'661\' or amtlong=\'662\' or amtlong=\'663\' or amtlong=\'664\' or amtlong=\'665\' or amtlong=\'666\' or amtlong=\'667\' or amtlong=\'668\' or amtlong=\'669\' or amtlong=\'670\' or amtlong=\'671\' or amtlong=\'672\' or amtlong=\'673\' or amtlong=\'674\' or amtlong=\'675\' or amtlong=\'676\' or amtlong=\'677\' or amtlong=\'678\' or amtlong=\'679\' or amtlong=\'680\' or amtlong=\'681\' or amtlong=\'682\' or amtlong=\'683\' or amtlong=\'684\' or amtlong=\'685\' or amtlong=\'686\' or amtlong=\'687\' or amtlong=\'688\' or amtlong=\'689\' or amtlong=\'690\' or amtlong=\'691\' or amtlong=\'692\' or amtlong=\'693\' or amtlong=\'694\' or amtlong=\'695\' or amtlong=\'696\' or amtlong=\'697\' or amtlong=\'698\' or amtlong=\'699\' or amtlong=\'700\' or amtlong=\'701\' or amtlong=\'702\' or amtlong=\'703\' or amtlong=\'704\' or amtlong=\'705\' or amtlong=\'706\' or amtlong=\'707\' or amtlong=\'708\' or amtlong=\'709\' or amtlong=\'710\' or amtlong=\'711\' or amtlong=\'712\' or amtlong=\'713\' or amtlong=\'714\' or amtlong=\'715\' or amtlong=\'716\' or amtlong=\'717\' or amtlong=\'718\' or amtlong=\'719\' or amtlong=\'720\' or amtlong=\'721\' or amtlong=\'722\' or amtlong=\'723\' or amtlong=\'724\' or amtlong=\'725\' or amtlong=\'726\' or amtlong=\'727\' or amtlong=\'728\' or amtlong=\'729\' or amtlong=\'730\' or amtlong=\'731\' or amtlong=\'732\' or amtlong=\'733\' or amtlong=\'734\' or amtlong=\'735\' or amtlong=\'736\' or amtlong=\'737\' or amtlong=\'738\' or amtlong=\'739\' or amtlong=\'740\' or amtlong=\'741\' or amtlong=\'742\' or amtlong=\'743\' or amtlong=\'744\' or amtlong=\'745\' or amtlong=\'746\' or amtlong=\'747\' or amtlong=\'748\' or amtlong=\'749\' or amtlong=\'750\' or amtlong=\'751\' or amtlong=\'752\' or amtlong=\'753\' or amtlong=\'754\' or amtlong=\'755\' or amtlong=\'756\' or amtlong=\'757\' or amtlong=\'758\' or amtlong=\'759\' or amtlong=\'760\' or amtlong=\'761\' or amtlong=\'762\' or amtlong=\'763\' or amtlong=\'764\' or amtlong=\'765\' or amtlong=\'766\' or amtlong=\'767\' or amtlong=\'768\' or amtlong=\'769\' or amtlong=\'770\' or amtlong=\'771\' or amtlong=\'772\' or amtlong=\'773\' or amtlong=\'774\' or amtlong=\'775\' or amtlong=\'776\' or amtlong=\'777\' or amtlong=\'778\' or amtlong=\'779\' or amtlong=\'780\' or amtlong=\'781\' or amtlong=\'782\' or amtlong=\'783\' or amtlong=\'784\' or amtlong=\'785\' or amtlong=\'786\' or amtlong=\'787\' or amtlong=\'788\' or amtlong=\'789\' or amtlong=\'790\' or amtlong=\'791\' or amtlong=\'792\' or amtlong=\'793\' or amtlong=\'794\' or amtlong=\'795\' or amtlong=\'796\' or amtlong=\'797\' or amtlong=\'798\' or amtlong=\'799\' or amtlong=\'800\' or amtlong=\'801\' or amtlong=\'802\' or amtlong=\'803\' or amtlong=\'804\' or amtlong=\'805\' or amtlong=\'806\' or amtlong=\'807\' or amtlong=\'808\' or amtlong=\'809\' or amtlong=\'810\' or amtlong=\'811\' or amtlong=\'812\' or amtlong=\'813\' or amtlong=\'814\' or amtlong=\'815\' or amtlong=\'816\' or amtlong=\'817\' or amtlong=\'818\' or amtlong=\'819\' or amtlong=\'820\' or amtlong=\'821\' or amtlong=\'822\' or amtlong=\'823\' or amtlong=\'824\' or amtlong=\'825\' or amtlong=\'826\' or amtlong=\'827\' or amtlong=\'828\' or amtlong=\'829\' or amtlong=\'830\' or amtlong=\'831\' or amtlong=\'832\' or amtlong=\'833\' or amtlong=\'834\' or amtlong=\'835\' or amtlong=\'836\' or amtlong=\'837\' or amtlong=\'838\' or amtlong=\'839\' or amtlong=\'840\' or amtlong=\'841\' or amtlong=\'842\' or amtlong=\'843\' or amtlong=\'844\' or amtlong=\'845\' or amtlong=\'846\' or amtlong=\'847\' or amtlong=\'848\' or amtlong=\'849\' or amtlong=\'850\' or amtlong=\'851\' or amtlong=\'852\' or amtlong=\'853\' or amtlong=\'854\' or amtlong=\'855\' or amtlong=\'856\' or amtlong=\'857\' or amtlong=\'858\' or amtlong=\'859\' or amtlong=\'860\' or amtlong=\'861\' or amtlong=\'862\' or amtlong=\'863\' or amtlong=\'864\' or amtlong=\'865\' or amtlong=\'866\' or amtlong=\'867\' or amtlong=\'868\' or amtlong=\'869\' or amtlong=\'870\' or amtlong=\'871\' or amtlong=\'872\' or amtlong=\'873\' or amtlong=\'874\' or amtlong=\'875\' or amtlong=\'876\' or amtlong=\'877\' or amtlong=\'878\' or amtlong=\'879\' or amtlong=\'880\' or amtlong=\'881\' or amtlong=\'882\' or amtlong=\'883\' or amtlong=\'884\' or amtlong=\'885\' or amtlong=\'886\' or amtlong=\'887\' or amtlong=\'888\' or amtlong=\'889\' or amtlong=\'890\' or amtlong=\'891\' or amtlong=\'892\' or amtlong=\'893\' or amtlong=\'894\' or amtlong=\'895\' or amtlong=\'896\' or amtlong=\'897\' or amtlong=\'898\' or amtlong=\'899\' or amtlong=\'900\' or amtlong=\'901\' or amtlong=\'902\' or amtlong=\'903\' or amtlong=\'904\' or amtlong=\'905\' or amtlong=\'906\' or amtlong=\'907\' or amtlong=\'908\' or amtlong=\'909\' or amtlong=\'910\' or amtlong=\'911\' or amtlong=\'912\' or amtlong=\'913\' or amtlong=\'914\' or amtlong=\'915\' or amtlong=\'916\' or amtlong=\'917\' or amtlong=\'918\' or amtlong=\'919\' or amtlong=\'920\' or amtlong=\'921\' or amtlong=\'922\' or amtlong=\'923\' or amtlong=\'924\' or amtlong=\'925\' or amtlong=\'926\' or amtlong=\'927\' or amtlong=\'928\' or amtlong=\'929\' or amtlong=\'930\' or amtlong=\'931\' or amtlong=\'932\' or amtlong=\'933\' or amtlong=\'934\' or amtlong=\'935\' or amtlong=\'936\' or amtlong=\'937\' or amtlong=\'938\' or amtlong=\'939\' or amtlong=\'940\' or amtlong=\'941\' or amtlong=\'942\' or amtlong=\'943\' or amtlong=\'944\' or amtlong=\'945\' or amtlong=\'946\' or amtlong=\'947\' or amtlong=\'948\' or amtlong=\'949\' or amtlong=\'950\' or amtlong=\'951\' or amtlong=\'952\' or amtlong=\'953\' or amtlong=\'954\' or amtlong=\'955\' or amtlong=\'956\' or amtlong=\'957\' or amtlong=\'958\' or amtlong=\'959\' or amtlong=\'960\' or amtlong=\'961\' or amtlong=\'962\' or amtlong=\'963\' or amtlong=\'964\' or amtlong=\'965\' or amtlong=\'966\' or amtlong=\'967\' or amtlong=\'968\' or amtlong=\'969\' or amtlong=\'970\' or amtlong=\'971\' or amtlong=\'972\' or amtlong=\'973\' or amtlong=\'974\' or amtlong=\'975\' or amtlong=\'976\' or amtlong=\'977\' or amtlong=\'978\' or amtlong=\'979\' or amtlong=\'980\' or amtlong=\'981\' or amtlong=\'982\' or amtlong=\'983\' or amtlong=\'984\' or amtlong=\'985\' or amtlong=\'986\' or amtlong=\'987\' or amtlong=\'988\' or amtlong=\'989\' or amtlong=\'990\' or amtlong=\'991\' or amtlong=\'992\' or amtlong=\'993\' or amtlong=\'994\' or amtlong=\'995\' or amtlong=\'996\' or amtlong=\'997\' or amtlong=\'998\' or amtlong=\'999\' or amtlong=\'1000\' or amtlong=\'1001\' or amtlong=\'1002\' or amtlong=\'1003\' or amtlong=\'1004\' or amtlong=\'1005\' or amtlong=\'1006\' or amtlong=\'1007\' or amtlong=\'1008\' or amtlong=\'1009\' or amtlong=\'1010\' or amtlong=\'1011\' or amtlong=\'1012\' or amtlong=\'1013\' or amtlong=\'1014\' or amtlong=\'1015\' or amtlong=\'1016\' or amtlong=\'1017\' or amtlong=\'1018\' or amtlong=\'1019\' or amtlong=\'1020\' or amtlong=\'1021\' or amtlong=\'1022\' or amtlong=\'1023\' or amtlong=\'1024\' or amtlong=\'1025\' or amtlong=\'1026\' or amtlong=\'1027\' or amtlong=\'1028\' or amtlong=\'1029\' or amtlong=\'1030\' or amtlong=\'1031\' or amtlong=\'1032\' or amtlong=\'1033\' or amtlong=\'1034\' or amtlong=\'1035\' or amtlong=\'1036\' or amtlong=\'1037\' or amtlong=\'1038\' or amtlong=\'1039\' or amtlong=\'1040\' or amtlong=\'1041\' or amtlong=\'1042\' or amtlong=\'1043\' or amtlong=\'1044\' or amtlong=\'1045\' or amtlong=\'1046\' or amtlong=\'1047\' or amtlong=\'1048\' or amtlong=\'1049\' or amtlong=\'1050\' or amtlong=\'1051\' or amtlong=\'1052\' or amtlong=\'1053\' or amtlong=\'1054\' or amtlong=\'1055\' or amtlong=\'1056\' or amtlong=\'1057\' or amtlong=\'1058\' or amtlong=\'1059\' or amtlong=\'1060\' or amtlong=\'1061\' or amtlong=\'1062\' or amtlong=\'1063\' or amtlong=\'1064\' or amtlong=\'1065\' or amtlong=\'1066\' or amtlong=\'1067\' or amtlong=\'1068\' or amtlong=\'1069\' or amtlong=\'1070\' or amtlong=\'1071\' or amtlong=\'1072\' or amtlong=\'1073\' or amtlong=\'1074\' or amtlong=\'1075\' or amtlong=\'1076\' or amtlong=\'1077\' or amtlong=\'1078\' or amtlong=\'1079\' or amtlong=\'1080\' or amtlong=\'1081\' or amtlong=\'1082\' or amtlong=\'1083\' or amtlong=\'1084\' or amtlong=\'1085\' or amtlong=\'1086\' or amtlong=\'1087\' or amtlong=\'1088\' or amtlong=\'1089\' or amtlong=\'1090\' or amtlong=\'1091\' or amtlong=\'1092\' or amtlong=\'1093\' or amtlong=\'1094\' or amtlong=\'1095\' or amtlong=\'1096\' or amtlong=\'1097\' or amtlong=\'1098\' or amtlong=\'1099\' or amtlong=\'1100\' or amtlong=\'1101\' or amtlong=\'1102\' or amtlong=\'1103\' or amtlong=\'1104\' or amtlong=\'1105\' or amtlong=\'1106\' or amtlong=\'1107\' or amtlong=\'1108\' or amtlong=\'1109\' or amtlong=\'1110\' or amtlong=\'1111\' or amtlong=\'1112\' or amtlong=\'1113\' or amtlong=\'1114\' or amtlong=\'1115\' or amtlong=\'1116\' or amtlong=\'1117\' or amtlong=\'1118\' or amtlong=\'1119\' or amtlong=\'1120\' or amtlong=\'1121\' or amtlong=\'1122\' or amtlong=\'1123\' or amtlong=\'1124\' or amtlong=\'1125\' or amtlong=\'1126\' or amtlong=\'1127\' or amtlong=\'1128\' or amtlong=\'1129\' or amtlong=\'1130\' or amtlong=\'1131\' or amtlong=\'1132\' or amtlong=\'1133\' or amtlong=\'1134\' or amtlong=\'1135\' or amtlong=\'1136\' or amtlong=\'1137\' or amtlong=\'1138\' or amtlong=\'1139\' or amtlong=\'1140\' or amtlong=\'1141\' or amtlong=\'1142\' or amtlong=\'1143\' or amtlong=\'1144\' or amtlong=\'1145\' or amtlong=\'1146\' or amtlong=\'1147\' or amtlong=\'1148\' or amtlong=\'1149\' or amtlong=\'1150\' or amtlong=\'1151\' or amtlong=\'1152\' or amtlong=\'1153\' or amtlong=\'1154\' or amtlong=\'1155\' or amtlong=\'1156\' or amtlong=\'1157\' or amtlong=\'1158\' or amtlong=\'1159\' or amtlong=\'1160\' or amtlong=\'1161\' or amtlong=\'1162\' or amtlong=\'1163\' or amtlong=\'1164\' or amtlong=\'1165\' or amtlong=\'1166\' or amtlong=\'1167\' or amtlong=\'1168\' or amtlong=\'1169\' or amtlong=\'1170\' or amtlong=\'1171\' or amtlong=\'1172\' or amtlong=\'1173\' or amtlong=\'1174\' or amtlong=\'1175\' or amtlong=\'1176\' or amtlong=\'1177\' or amtlong=\'1178\' or amtlong=\'1179\' or amtlong=\'1180\' or amtlong=\'1181\' or amtlong=\'1182\' or amtlong=\'1183\' or amtlong=\'1184\' or amtlong=\'1185\' or amtlong=\'1186\' or amtlong=\'1187\' or amtlong=\'1188\' or amtlong=\'1189\' or amtlong=\'1190\' or amtlong=\'1191\' or amtlong=\'1192\' or amtlong=\'1193\' or amtlong=\'1194\' or amtlong=\'1195\' or amtlong=\'1196\' or amtlong=\'1197\' or amtlong=\'1198\' or amtlong=\'1199\' or amtlong=\'1200\' or amtlong=\'1201\' or amtlong=\'1202\' or amtlong=\'1203\' or amtlong=\'1204\' or amtlong=\'1205\' or amtlong=\'1206\' or amtlong=\'1207\' or amtlong=\'1208\' or amtlong=\'1209\' or amtlong=\'1210\' or amtlong=\'1211\' or amtlong=\'1212\' or amtlong=\'1213\' or amtlong=\'1214\' or amtlong=\'1215\' or amtlong=\'1216\' or amtlong=\'1217\' or amtlong=\'1218\' or amtlong=\'1219\' or amtlong=\'1220\' or amtlong=\'1221\' or amtlong=\'1222\' or amtlong=\'1223\' or amtlong=\'1224\' or amtlong=\'1225\' or amtlong=\'1226\' or amtlong=\'1227\' or amtlong=\'1228\' or amtlong=\'1229\' or amtlong=\'1230\' or amtlong=\'1231\' or amtlong=\'1232\' or amtlong=\'1233\' or amtlong=\'1234\' or amtlong=\'1235\' or amtlong=\'1236\' or amtlong=\'1237\' or amtlong=\'1238\' or amtlong=\'1239\' or amtlong=\'1240\' or amtlong=\'1241\' or amtlong=\'1242\' or amtlong=\'1243\' or amtlong=\'1244\' or amtlong=\'1245\' or amtlong=\'1246\' or amtlong=\'1247\' or amtlong=\'1248\' or amtlong=\'1249\' or amtlong=\'1250\' or amtlong=\'1251\' or amtlong=\'1252\' or amtlong=\'1253\' or amtlong=\'1254\' or amtlong=\'1255\' or amtlong=\'1256\' or amtlong=\'1257\' or amtlong=\'1258\' or amtlong=\'1259\' or amtlong=\'1260\' or amtlong=\'1261\' or amtlong=\'1262\' or amtlong=\'1263\' or amtlong=\'1264\' or amtlong=\'1265\' or amtlong=\'1266\' or amtlong=\'1267\' or amtlong=\'1268\' or amtlong=\'1269\' or amtlong=\'1270\' or amtlong=\'1271\' or amtlong=\'1272\' or amtlong=\'1273\' or amtlong=\'1274\' or amtlong=\'1275\' or amtlong=\'1276\' or amtlong=\'1277\' or amtlong=\'1278\' or amtlong=\'1279\' or amtlong=\'1280\' or amtlong=\'1281\' or amtlong=\'1282\' or amtlong=\'1283\' or amtlong=\'1284\' or amtlong=\'1285\' or amtlong=\'1286\' or amtlong=\'1287\' or amtlong=\'1288\' or amtlong=\'1289\' or amtlong=\'1290\' or amtlong=\'1291\' or amtlong=\'1292\' or amtlong=\'1293\' or amtlong=\'1294\' or amtlong=\'1295\' or amtlong=\'1296\' or amtlong=\'1297\' or amtlong=\'1298\' or amtlong=\'1299\' or amtlong=\'1300\' or amtlong=\'1301\' or amtlong=\'1302\' or amtlong=\'1303\' or amtlong=\'1304\' or amtlong=\'1305\' or amtlong=\'1306\' or amtlong=\'1307\' or amtlong=\'1308\' or amtlong=\'1309\' or amtlong=\'1310\' or amtlong=\'1311\' or amtlong=\'1312\' or amtlong=\'1313\' or amtlong=\'1314\' or amtlong=\'1315\' or amtlong=\'1316\' or amtlong=\'1317\' or amtlong=\'1318\' or amtlong=\'1319\' or amtlong=\'1320\' or amtlong=\'1321\' or amtlong=\'1322\' or amtlong=\'1323\' or amtlong=\'1324\' or amtlong=\'1325\' or amtlong=\'1326\' or amtlong=\'1327\' or amtlong=\'1328\' or amtlong=\'1329\' or amtlong=\'1330\' or amtlong=\'1331\' or amtlong=\'1332\' or amtlong=\'1333\' or amtlong=\'1334\' or amtlong=\'1335\' or amtlong=\'1336\' or amtlong=\'1337\' or amtlong=\'1338\' or amtlong=\'1339\' or amtlong=\'1340\' or amtlong=\'1341\' or amtlong=\'1342\' or amtlong=\'1343\' or amtlong=\'1344\' or amtlong=\'1345\' or amtlong=\'1346\' or amtlong=\'1347\' or amtlong=\'1348\' or amtlong=\'1349\' or amtlong=\'1350\' or amtlong=\'1351\' or amtlong=\'1352\' or amtlong=\'1353\' or amtlong=\'1354\' or amtlong=\'1355\' or amtlong=\'1356\' or amtlong=\'1357\' or amtlong=\'1358\' or amtlong=\'1359\' or amtlong=\'1360\' or amtlong=\'1361\' or amtlong=\'1362\' or amtlong=\'1363\' or amtlong=\'1364\' or amtlong=\'1365\' or amtlong=\'1366\' or amtlong=\'1367\' or amtlong=\'1368\' or amtlong=\'1369\' or amtlong=\'1370\' or amtlong=\'1371\' or amtlong=\'1372\' or amtlong=\'1373\' or amtlong=\'1374\' or amtlong=\'1375\' or amtlong=\'1376\' or amtlong=\'1377\' or amtlong=\'1378\' or amtlong=\'1379\' or amtlong=\'1380\' or amtlong=\'1381\' or amtlong=\'1382\' or amtlong=\'1383\' or amtlong=\'1384\' or amtlong=\'1385\' or amtlong=\'1386\' or amtlong=\'1387\' or amtlong=\'1388\' or amtlong=\'1389\' or amtlong=\'1390\' or amtlong=\'1391\' or amtlong=\'1392\' or amtlong=\'1393\' or amtlong=\'1394\' or amtlong=\'1395\' or amtlong=\'1396\' or amtlong=\'1397\' or amtlong=\'1398\' or amtlong=\'1399\' or amtlong=\'1400\' or amtlong=\'1401\' or amtlong=\'1402\' or amtlong=\'1403\' or amtlong=\'1404\' or amtlong=\'1405\' or amtlong=\'1406\' or amtlong=\'1407\' or amtlong=\'1408\' or amtlong=\'1409\' or amtlong=\'1410\' or amtlong=\'1411\' or amtlong=\'1412\' or amtlong=\'1413\' or amtlong=\'1414\' or amtlong=\'1415\' or amtlong=\'1416\' or amtlong=\'1417\' or amtlong=\'1418\' or amtlong=\'1419\' or amtlong=\'1420\' or amtlong=\'1421\' or amtlong=\'1422\' or amtlong=\'1423\' or amtlong=\'1424\' or amtlong=\'1425\' or amtlong=\'1426\' or amtlong=\'1427\' or amtlong=\'1428\' or amtlong=\'1429\' or amtlong=\'1430\' or amtlong=\'1431\' or amtlong=\'1432\' or amtlong=\'1433\' or amtlong=\'1434\' or amtlong=\'1435\' or amtlong=\'1436\' or amtlong=\'1437\' or amtlong=\'1438\' or amtlong=\'1439\' or amtlong=\'1440\' or amtlong=\'1441\' or amtlong=\'1442\' or amtlong=\'1443\' or amtlong=\'1444\' or amtlong=\'1445\' or amtlong=\'1446\' or amtlong=\'1447\' or amtlong=\'1448\' or amtlong=\'1449\' or amtlong=\'1450\' or amtlong=\'1451\' or amtlong=\'1452\' or amtlong=\'1453\' or amtlong=\'1454\' or amtlong=\'1455\' or amtlong=\'1456\' or amtlong=\'1457\' or amtlong=\'1458\' or amtlong=\'1459\' or amtlong=\'1460\' or amtlong=\'1461\' or amtlong=\'1462\' or amtlong=\'1463\' or amtlong=\'1464\' or amtlong=\'1465\' or amtlong=\'1466\' or amtlong=\'1467\' or amtlong=\'1468\' or amtlong=\'1469\' or amtlong=\'1470\' or amtlong=\'1471\' or amtlong=\'1472\' or amtlong=\'1473\' or amtlong=\'1474\' or amtlong=\'1475\' or amtlong=\'1476\' or amtlong=\'1477\' or amtlong=\'1478\' or amtlong=\'1479\' or amtlong=\'1480\' or amtlong=\'1481\' or amtlong=\'1482\' or amtlong=\'1483\' or amtlong=\'1484\' or amtlong=\'1485\' or amtlong=\'1486\' or amtlong=\'1487\' or amtlong=\'1488\' or amtlong=\'1489\' or amtlong=\'1490\' or amtlong=\'1491\' or amtlong=\'1492\' or amtlong=\'1493\' or amtlong=\'1494\' or amtlong=\'1495\' or amtlong=\'1496\' or amtlong=\'1497\' or amtlong=\'1498\' or amtlong=\'1499\' or amtlong=\'1500\' or amtlong=\'1501\' or amtlong=\'1502\' or amtlong=\'1503\' or amtlong=\'1504\' or amtlong=\'1505\' or amtlong=\'1506\' or amtlong=\'1507\' or amtlong=\'1508\' or amtlong=\'1509\' or amtlong=\'1510\' or amtlong=\'1511\' or amtlong=\'1512\' or amtlong=\'1513\' or amtlong=\'1514\' or amtlong=\'1515\' or amtlong=\'1516\' or amtlong=\'1517\' or amtlong=\'1518\' or amtlong=\'1519\' or amtlong=\'1520\' or amtlong=\'1521\' or amtlong=\'1522\' or amtlong=\'1523\' or amtlong=\'1524\' or amtlong=\'1525\' or amtlong=\'1526\' or amtlong=\'1527\' or amtlong=\'1528\' or amtlong=\'1529\' or amtlong=\'1530\' or amtlong=\'1531\' or amtlong=\'1532\' or amtlong=\'1533\' or amtlong=\'1534\' or amtlong=\'1535\' or amtlong=\'1536\' or amtlong=\'1537\' or amtlong=\'1538\' or amtlong=\'1539\' or amtlong=\'1540\' or amtlong=\'1541\' or amtlong=\'1542\' or amtlong=\'1543\' or amtlong=\'1544\' or amtlong=\'1545\' or amtlong=\'1546\' or amtlong=\'1547\' or amtlong=\'1548\' or amtlong=\'1549\' or amtlong=\'1550\' or amtlong=\'1551\' or amtlong=\'1552\' or amtlong=\'1553\' or amtlong=\'1554\' or amtlong=\'1555\' or amtlong=\'1556\' or amtlong=\'1557\' or amtlong=\'1558\' or amtlong=\'1559\' or amtlong=\'1560\' or amtlong=\'1561\' or amtlong=\'1562\' or amtlong=\'1563\' or amtlong=\'1564\' or amtlong=\'1565\' or amtlong=\'1566\' or amtlong=\'1567\' or amtlong=\'1568\' or amtlong=\'1569\' or amtlong=\'1570\' or amtlong=\'1571\' or amtlong=\'1572\' or amtlong=\'1573\' or amtlong=\'1574\' or amtlong=\'1575\' or amtlong=\'1576\' or amtlong=\'1577\' or amtlong=\'1578\' or amtlong=\'1579\' or amtlong=\'1580\' or amtlong=\'1581\' or amtlong=\'1582\' or amtlong=\'1583\' or amtlong=\'1584\' or amtlong=\'1585\' or amtlong=\'1586\' or amtlong=\'1587\' or amtlong=\'1588\' or amtlong=\'1589\' or amtlong=\'1590\' or amtlong=\'1591\' or amtlong=\'1592\' or amtlong=\'1593\' or amtlong=\'1594\' or amtlong=\'1595\' or amtlong=\'1596\' or amtlong=\'1597\' or amtlong=\'1598\' or amtlong=\'1599\' or amtlong=\'1600\' or amtlong=\'1601\' or amtlong=\'1602\' or amtlong=\'1603\' or amtlong=\'1604\' or amtlong=\'1605\' or amtlong=\'1606\' or amtlong=\'1607\' or amtlong=\'1608\' or amtlong=\'1609\' or amtlong=\'1610\' or amtlong=\'1611\' or amtlong=\'1612\' or amtlong=\'1613\' or amtlong=\'1614\' or amtlong=\'1615\' or amtlong=\'1616\' or amtlong=\'1617\' or amtlong=\'1618\' or amtlong=\'1619\' or amtlong=\'1620\' or amtlong=\'1621\' or amtlong=\'1622\' or amtlong=\'1623\' or amtlong=\'1624\' or amtlong=\'1625\' or amtlong=\'1626\' or amtlong=\'1627\' or amtlong=\'1628\' or amtlong=\'1629\' or amtlong=\'1630\' or amtlong=\'1631\' or amtlong=\'1632\' or amtlong=\'1633\' or amtlong=\'1634\' or amtlong=\'1635\' or amtlong=\'1636\' or amtlong=\'1637\' or amtlong=\'1638\' or amtlong=\'1639\' or amtlong=\'1640\' or amtlong=\'1641\' or amtlong=\'1642\' or amtlong=\'1643\' or amtlong=\'1644\' or amtlong=\'1645\' or amtlong=\'1646\' or amtlong=\'1647\' or amtlong=\'1648\' or amtlong=\'1649\' or amtlong=\'1650\' or amtlong=\'1651\' or amtlong=\'1652\' or amtlong=\'1653\' or amtlong=\'1654\' or amtlong=\'1655\' or amtlong=\'1656\' or amtlong=\'1657\' or amtlong=\'1658\' or amtlong=\'1659\' or amtlong=\'1660\' or amtlong=\'1661\' or amtlong=\'1662\' or amtlong=\'1663\' or amtlong=\'1664\' or amtlong=\'1665\' or amtlong=\'1666\' or amtlong=\'1667\' or amtlong=\'1668\' or amtlong=\'1669\' or amtlong=\'1670\' or amtlong=\'1671\' or amtlong=\'1672\' or amtlong=\'1673\' or amtlong=\'1674\' or amtlong=\'1675\' or amtlong=\'1676\' or amtlong=\'1677\' or amtlong=\'1678\' or amtlong=\'1679\' or amtlong=\'1680\' or amtlong=\'1681\' or amtlong=\'1682\' or amtlong=\'1683\' or amtlong=\'1684\' or amtlong=\'1685\' or amtlong=\'1686\' or amtlong=\'1687\' or amtlong=\'1688\' or amtlong=\'1689\' or amtlong=\'1690\' or amtlong=\'1691\' or amtlong=\'1692\' or amtlong=\'1693\' or amtlong=\'1694\' or amtlong=\'1695\' or amtlong=\'1696\' or amtlong=\'1697\' or amtlong=\'1698\' or amtlong=\'1699\' or amtlong=\'1700\' or amtlong=\'1701\' or amtlong=\'1702\' or amtlong=\'1703\' or amtlong=\'1704\' or amtlong=\'1705\' or amtlong=\'1706\' or amtlong=\'1707\' or amtlong=\'1708\' or amtlong=\'1709\' or amtlong=\'1710\' or amtlong=\'1711\' or amtlong=\'1712\' or amtlong=\'1713\' or amtlong=\'1714\' or amtlong=\'1715\' or amtlong=\'1716\' or amtlong=\'1717\' or amtlong=\'1718\' or amtlong=\'1719\' or amtlong=\'1720\' or amtlong=\'1721\' or amtlong=\'1722\' or amtlong=\'1723\' or amtlong=\'1724\' or amtlong=\'1725\' or amtlong=\'1726\' or amtlong=\'1727\' or amtlong=\'1728\' or amtlong=\'1729\' or amtlong=\'1730\' or amtlong=\'1731\' or amtlong=\'1732\' or amtlong=\'1733\' or amtlong=\'1734\' or amtlong=\'1735\' or amtlong=\'1736\' or amtlong=\'1737\' or amtlong=\'1738\' or amtlong=\'1739\' or amtlong=\'1740\' or amtlong=\'1741\' or amtlong=\'1742\' or amtlong=\'1743\' or amtlong=\'1744\' or amtlong=\'1745\' or amtlong=\'1746\' or amtlong=\'1747\' or amtlong=\'1748\' or amtlong=\'1749\' or amtlong=\'1750\' or amtlong=\'1751\' or amtlong=\'1752\' or amtlong=\'1753\' or amtlong=\'1754\' or amtlong=\'1755\' or amtlong=\'1756\' or amtlong=\'1757\' or amtlong=\'1758\' or amtlong=\'1759\' or amtlong=\'1760\' or amtlong=\'1761\' or amtlong=\'1762\' or amtlong=\'1763\' or amtlong=\'1764\' or amtlong=\'1765\' or amtlong=\'1766\' or amtlong=\'1767\' or amtlong=\'1768\' or amtlong=\'1769\' or amtlong=\'1770\' or amtlong=\'1771\' or amtlong=\'1772\' or amtlong=\'1773\' or amtlong=\'1774\' or amtlong=\'1775\' or amtlong=\'1776\' or amtlong=\'1777\' or amtlong=\'1778\' or amtlong=\'1779\' or amtlong=\'1780\' or amtlong=\'1781\' or amtlong=\'1782\' or amtlong=\'1783\' or amtlong=\'1784\' or amtlong=\'1785\' or amtlong=\'1786\' or amtlong=\'1787\' or amtlong=\'1788\' or amtlong=\'1789\' or amtlong=\'1790\' or amtlong=\'1791\' or amtlong=\'1792\' or amtlong=\'1793\' or amtlong=\'1794\' or amtlong=\'1795\' or amtlong=\'1796\' or amtlong=\'1797\' or amtlong=\'1798\' or amtlong=\'1799\' or amtlong=\'1800\' or amtlong=\'1801\' or amtlong=\'1802\' or amtlong=\'1803\' or amtlong=\'1804\' or amtlong=\'1805\' or amtlong=\'1806\' or amtlong=\'1807\' or amtlong=\'1808\' or amtlong=\'1809\' or amtlong=\'1810\' or amtlong=\'1811\' or amtlong=\'1812\' or amtlong=\'1813\' or amtlong=\'1814\' or amtlong=\'1815\' or amtlong=\'1816\' or amtlong=\'1817\' or amtlong=\'1818\' or amtlong=\'1819\' or amtlong=\'1820\' or amtlong=\'1821\' or amtlong=\'1822\' or amtlong=\'1823\' or amtlong=\'1824\' or amtlong=\'1825\' or amtlong=\'1826\' or amtlong=\'1827\' or amtlong=\'1828\' or amtlong=\'1829\' or amtlong=\'1830\' or amtlong=\'1831\' or amtlong=\'1832\' or amtlong=\'1833\' or amtlong=\'1834\' or amtlong=\'1835\' or amtlong=\'1836\' or amtlong=\'1837\' or amtlong=\'1838\' or amtlong=\'1839\' or amtlong=\'1840\' or amtlong=\'1841\' or amtlong=\'1842\' or amtlong=\'1843\' or amtlong=\'1844\' or amtlong=\'1845\' or amtlong=\'1846\' or amtlong=\'1847\' or amtlong=\'1848\' or amtlong=\'1849\' or amtlong=\'1850\' or amtlong=\'1851\' or amtlong=\'1852\' or amtlong=\'1853\' or amtlong=\'1854\' or amtlong=\'1855\' or amtlong=\'1856\' or amtlong=\'1857\' or amtlong=\'1858\' or amtlong=\'1859\' or amtlong=\'1860\' or amtlong=\'1861\' or amtlong=\'1862\' or amtlong=\'1863\' or amtlong=\'1864\' or amtlong=\'1865\' or amtlong=\'1866\' or amtlong=\'1867\' or amtlong=\'1868\' or amtlong=\'1869\' or amtlong=\'1870\' or amtlong=\'1871\' or amtlong=\'1872\' or amtlong=\'1873\' or amtlong=\'1874\' or amtlong=\'1875\' or amtlong=\'1876\' or amtlong=\'1877\' or amtlong=\'1878\' or amtlong=\'1879\' or amtlong=\'1880\' or amtlong=\'1881\' or amtlong=\'1882\' or amtlong=\'1883\' or amtlong=\'1884\' or amtlong=\'1885\' or amtlong=\'1886\' or amtlong=\'1887\' or amtlong=\'1888\' or amtlong=\'1889\' or amtlong=\'1890\' or amtlong=\'1891\' or amtlong=\'1892\' or amtlong=\'1893\' or amtlong=\'1894\' or amtlong=\'1895\' or amtlong=\'1896\' or amtlong=\'1897\' or amtlong=\'1898\' or amtlong=\'1899\' or amtlong=\'1900\' or amtlong=\'1901\' or amtlong=\'1902\' or amtlong=\'1903\' or amtlong=\'1904\' or amtlong=\'1905\' or amtlong=\'1906\' or amtlong=\'1907\' or amtlong=\'1908\' or amtlong=\'1909\' or amtlong=\'1910\' or amtlong=\'1911\' or amtlong=\'1912\' or amtlong=\'1913\' or amtlong=\'1914\' or amtlong=\'1915\' or amtlong=\'1916\' or amtlong=\'1917\' or amtlong=\'1918\' or amtlong=\'1919\' or amtlong=\'1920\' or amtlong=\'1921\' or amtlong=\'1922\' or amtlong=\'1923\' or amtlong=\'1924\' or amtlong=\'1925\' or amtlong=\'1926\' or amtlong=\'1927\' or amtlong=\'1928\' or amtlong=\'1929\' or amtlong=\'1930\' or amtlong=\'1931\' or amtlong=\'1932\' or amtlong=\'1933\' or amtlong=\'1934\' or amtlong=\'1935\' or amtlong=\'1936\' or amtlong=\'1937\' or amtlong=\'1938\' or amtlong=\'1939\' or amtlong=\'1940\' or amtlong=\'1941\' or amtlong=\'1942\' or amtlong=\'1943\' or amtlong=\'1944\' or amtlong=\'1945\' or amtlong=\'1946\' or amtlong=\'1947\' or amtlong=\'1948\' or amtlong=\'1949\' or amtlong=\'1950\' or amtlong=\'1951\' or amtlong=\'1952\' or amtlong=\'1953\' or amtlong=\'1954\' or amtlong=\'1955\' or amtlong=\'1956\' or amtlong=\'1957\' or amtlong=\'1958\' or amtlong=\'1959\' or amtlong=\'1960\' or amtlong=\'1961\' or amtlong=\'1962\' or amtlong=\'1963\' or amtlong=\'1964\' or amtlong=\'1965\' or amtlong=\'1966\' or amtlong=\'1967\' or amtlong=\'1968\' or amtlong=\'1969\' or amtlong=\'1970\' or amtlong=\'1971\' or amtlong=\'1972\' or amtlong=\'1973\' or amtlong=\'1974\' or amtlong=\'1975\' or amtlong=\'1976\' or amtlong=\'1977\' or amtlong=\'1978\' or amtlong=\'1979\' or amtlong=\'1980\' or amtlong=\'1981\' or amtlong=\'1982\' or amtlong=\'1983\' or amtlong=\'1984\' or amtlong=\'1985\' or amtlong=\'1986\' or amtlong=\'1987\' or amtlong=\'1988\' or amtlong=\'1989\' or amtlong=\'1990\' or amtlong=\'1991\' or amtlong=\'1992\' or amtlong=\'1993\' or amtlong=\'1994\' or amtlong=\'1995\' or amtlong=\'1996\' or amtlong=\'1997\' or amtlong=\'1998\' or amtlong=\'1999\' or amtlong=\'2000\' or amtlong=\'2001\' or amtlong=\'2002\' or amtlong=\'2003\' or amtlong=\'2004\' or amtlong=\'2005\' or amtlong=\'2006\' or amtlong=\'2007\' or amtlong=\'2008\' or amtlong=\'2009\' or amtlong=\'2010\' or amtlong=\'2011\' or amtlong=\'2012\' or amtlong=\'2013\' or amtlong=\'2014\' or amtlong=\'2015\' or amtlong=\'2016\' or amtlong=\'2017\' or amtlong=\'2018\' or amtlong=\'2019\' or amtlong=\'2020\' or amtlong=\'2021\' or amtlong=\'2022\' or amtlong=\'2023\' or amtlong=\'2024\' or amtlong=\'2025\' or amtlong=\'2026\' or amtlong=\'2027\' or amtlong=\'2028\' or amtlong=\'2029\' or amtlong=\'2030\' or amtlong=\'2031\' or amtlong=\'2032\' or amtlong=\'2033\' or amtlong=\'2034\' or amtlong=\'2035\' or amtlong=\'2036\' or amtlong=\'2037\' or amtlong=\'2038\' or amtlong=\'2039\' or amtlong=\'2040\' or amtlong=\'2041\' or amtlong=\'2042\' or amtlong=\'2043\' or amtlong=\'2044\' or amtlong=\'2045\' or amtlong=\'2046\' or amtlong=\'2047\' )  ','segment') 
limit 10;



----2000多个模糊匹配查询
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and ( content=\'娃哈哈桂圆莲子八宝粥\' or content=\'500ml娃哈哈非常冰红茶\' or content=\'280ml娃哈哈营养快线原味\' or content=\'280ml娃哈哈营养快线菠萝\' or content=\'500ml娃哈哈营养快线原味\' or content=\'500ml娃哈哈营养快线菠萝\' or content=\'350ml呦呦奶茶原味\' or content=\'350ml呦呦奶茶桂花\' or content=\'350ml呦呦奶茶茉莉\' or content=\'王老吉凉茶\' or content=\'355ml可口可乐\' or content=\'355ml雪碧\' or content=\'355ml醒目苹果\' or content=\'355ml醒目西瓜\' or content=\'600ml雪碧\' or content=\'600ml可口可乐\' or content=\'500ml醒目苹果\' or content=\'可口可乐\' or content=\'雪碧\' or content=\'330ml酷儿橙汁\' or content=\'470ml茶研工坊清研\' or content=\'480ml雀巢冰爽柠檬茶\' or content=\'450ml美汁源果粒橙\' or content=\'美汁源果粒橙\' or content=\'光明橙汁饮料\' or content=\'香派红糖姜茶\' or content=\'雀巢咖啡盒装\' or content=\'雀巢咖啡12\' or content=\'农夫果园100胡萝卜\' or content=\'农夫果园100番茄味\' or content=\'550ml农夫山泉天然水普通型\' or content=\'380ml农夫山泉天然水\' or content=\'600ml农夫果园30橙胡味\' or content=\'600ml农夫果园30菠芒\' or content=\'380ml农夫果园30番莓味\' or content=\'红牛饮料促销\' or content=\'80g香飘飘奶茶原味\' or content=\'80g香飘飘奶茶草莓\' or content=\'80g香飘飘奶茶麦香\' or content=\'80g香飘飘奶茶香芋\' or content=\'70g香飘飘珍珠奶茶香芋\' or content=\'70g香飘飘珍珠奶茶巧克力\' or content=\'70g香飘飘珍珠奶茶原味红茶\' or content=\'72g大好大香约奶茶哈密瓜\' or content=\'22g大好大香约条装奶茶香芋\' or content=\'22g大好大香约条装奶茶草莓\' or content=\'22g大好大香约条装奶茶原味\' or content=\'80g喜之郎优乐美原味\' or content=\'480ml雀巢冰极茶\' or content=\'香派蜂蜜姜茶\' or content=\'雀巢咖啡\' or content=\'雀巢咖啡伴侣\' or content=\'雀巢咖啡杯装\' or content=\'雀巢咖啡1210条装\' or content=\'康师傅橙汁饮品\' or content=\'490ml康师傅冰红茶\' or content=\'500ml康师傅茉莉清茶\' or content=\'500ml康师傅每日C葡萄\' or content=\'340ml康师傅冰红茶\' or content=\'340ml康师傅每日C橙汁\' or content=\'340ml康师傅每日C水晶葡萄\' or content=\'250ml康师傅冰红茶\' or content=\'250ml康师傅橙汁饮料\' or content=\'72g相约奶茶原味\' or content=\'72g相约奶茶麦香\' or content=\'72g相约奶茶咖啡\' or content=\'72g相约奶茶巧克力\' or content=\'72g相约奶茶草莓\' or content=\'80g喜之郎优乐美香芋\' or content=\'80g喜之郎优乐美草莓\' or content=\'80g喜之郎优乐美麦香\' or content=\'500ml娃哈哈营养快线香草\' or content=\'600ml娃哈哈激活柠檬\' or content=\'600ml娃哈哈激活柑橘\' or content=\'500ml娃哈哈龙井绿茶低糖\' or content=\'350ml启力卡布奇诺口味\' or content=\'350ml启力焦糖玛奇朵口味\' or content=\'200ml娃哈哈爽歪歪益生菌\' or content=\'550ml尖叫纤维饮料柠檬味\' or content=\'550ml尖叫运动饮料西柚\' or content=\'550ml尖叫植物饮料复合果味\' or content=\'农夫果园30菠芒味\' or content=\'农夫果园30番莓味\' or content=\'250ML红牛\' or content=\'农夫果园30橙胡味\' or content=\'农夫果园100橙汁\' or content=\'500ml康师傅水晶葡萄\' or content=\'500ml康师傅水蜜桃\' or content=\'500ml康师傅每日C橙汁\' or content=\'500ml康师傅绿茶\' or content=\'480ml原叶冰红茶\' or content=\'480ml原叶绿茶\' or content=\'500ml娃哈哈思慕C香橙味\' or content=\'500ml娃哈哈思慕C桃杏味\' or content=\'500ml娃哈哈思慕C芒果味\' or content=\'250ml娃哈哈营养快线菠萝味\' or content=\'250ml娃哈哈营养快线原味\' or content=\'600ML芬达\' or content=\'500ml醒目西瓜味\' or content=\'470ml茶研工坊清本绿茶\' or content=\'220ml娃哈哈乳娃娃\' or content=\'500ml呦呦奶茶奶味茶桂花\' or content=\'500ml呦呦奶茶奶味茶原味\' or content=\'500ml呦呦奶茶奶味茶茉莉\' or content=\'450ml酷儿橙汁\' or content=\'500ml康师傅每日C水晶葡萄\' or content=\'550ml水森活纯净水\' or content=\'娃哈哈纯净水\' or content=\'596ml娃哈哈纯真年代\' or content=\'娃哈哈纯净水\' or content=\'农夫山泉天然水\' or content=\'农夫山泉天然水\' or content=\'600ml康师傅纯净水\' or content=\'350ml康师傅纯净水\' or content=\'250ml伊利早餐奶麦香\' or content=\'250ml伊利早餐奶鸡蛋\' or content=\'250ml伊利双果奇缘芒果西蕃莲\' or content=\'250ml伊利双果奇缘荔枝梨\' or content=\'250ml伊利双果奇缘哈密瓜猕猴桃\' or content=\'娃哈哈AD钙奶220ml24\' or content=\'250ml伊利优酸乳原味\' or content=\'250ml伊利优酸乳草莓味\' or content=\'250ml伊利双果奇缘菠萝橙味\' or content=\'250ml伊利果之优酸乳原味\' or content=\'250ml伊利果之优酸乳草莓\' or content=\'250ml伊利果之优酸乳菠萝\' or content=\'250ml伊利早餐奶核桃\' or content=\'250ml伊利早餐奶花生味\' or content=\'250ml伊利草莓奶\' or content=\'250ml伊利优酸乳蓝莓味\' or content=\'250ml伊利双果奇缘木瓜杏味\' or content=\'伊利纯牛奶\' or content=\'伊利营养舒化奶全脂型\' or content=\'伊利营养舒化奶低脂\' or content=\'308g广信大冰糖\' or content=\'80g百诺麦丽素\' or content=\'77g百诺巧克力草莓\' or content=\'85g百诺奶心果仁\' or content=\'37g曼妥思薄荷条装\' or content=\'37g曼妥思青柠条装\' or content=\'35g阿尔卑斯牛奶条装\' or content=\'35g阿尔卑斯草莓条装\' or content=\'阿尔卑斯牛奶\' or content=\'阿尔卑斯鲜橙\' or content=\'69g清嘴含片草莓味\' or content=\'69g清嘴含片柠檬味\' or content=\'绿箭三条装\' or content=\'益达蓝莓单条装\' or content=\'益达木糖醇草莓饼装40粒\' or content=\'益达木糖醇薄荷饼装40粒\' or content=\'瑞士糖草莓味条装\' or content=\'瑞士糖黑加仑子味条装\' or content=\'25g旺仔QQ糖葡萄\' or content=\'25g旺仔QQ糖菠萝\' or content=\'25g旺仔QQ糖草莓\' or content=\'70g旺仔QQ糖水蜜桃\' or content=\'70g旺仔QQ糖荔枝\' or content=\'70g旺仔QQ糖草莓\' or content=\'120g上好佳青苹果硬糖\' or content=\'120g上好佳什锦果糖\' or content=\'120上好佳牛奶软糖\' or content=\'120g上好佳缤纷什锦软糖\' or content=\'王老吉润喉糖\' or content=\'18g旺仔牛奶糖\' or content=\'120g上好佳提子硬糖\' or content=\'大大切切乐泡泡糖蜜瓜味\' or content=\'35g瑞士糖草莓味条装\' or content=\'35g瑞士青苹果味条装\' or content=\'瑞士糖柠檬味条装\' or content=\'瑞士糖香橙味条装\' or content=\'瑞士糖黑加仑子味条装\' or content=\'大大卷切切乐草莓味12卷\' or content=\'大大卷切切乐青柠味12卷\' or content=\'绿箭薄荷糖原味\' or content=\'绿箭薄荷糖茉莉花茶\' or content=\'绿箭瓶装40粒\' or content=\'绿箭三条装\' or content=\'绿箭超强薄荷味单支装\' or content=\'五片绿箭单支装\' or content=\'绿箭分享包\' or content=\'益达蓝莓单条装\' or content=\'益达香浓蜜瓜40粒瓶装\' or content=\'100g喔喔奶糖红豆味\' or content=\'100g喔喔奶糖原味\' or content=\'阿尔卑斯棒棒糖牛奶味\' or content=\'阿尔卑斯棒棒糖草莓味\' or content=\'阿尔卑斯棒棒糖芒果\' or content=\'阿尔卑斯棒棒糖树莓\' or content=\'25g旺仔QQ糖蓝莓\' or content=\'70g旺仔QQ糖菠萝\' or content=\'70g旺仔QQ糖蓝莓\' or content=\'70g旺仔QQ糖葡萄\' or content=\'阿尔卑斯棒棒糖香蕉\' or content=\'阿尔卑斯棒棒糖香草\' or content=\'果然多CC卷菠萝\' or content=\'果然多CC卷草莓\' or content=\'150G金娃维C果冻爽\' or content=\'185G金娃大果肉果冻\' or content=\'218G金娃高钙椰果果冻\' or content=\'90g喜之郎香橙味果冻\' or content=\'200g喜之郎果肉单杯混装\' or content=\'218g喜之郎蜜桃果冻爽\' or content=\'218g喜之郎荔枝果冻爽\' or content=\'150g喜之郎荔枝维C爽\' or content=\'150g喜之郎芒果维C爽\' or content=\'150g喜之郎苹果维C爽\' or content=\'117g喜之郎茶味果冻桶\' or content=\'117g喜之郎咖啡味果冻桶\' or content=\'150G喜之郎菠萝维C爽\' or content=\'150G喜之郎香橙维C爽\' or content=\'150G喜之郎葡萄维C爽\' or content=\'218G喜之朗苹果果冻爽\' or content=\'旺旺咖啡冻\' or content=\'218g喜之郎芒果味果冻爽\' or content=\'18G奇多牛排\' or content=\'18G奇多火鸡\' or content=\'70G奇多牛排\' or content=\'70G奇多火鸡\' or content=\'100G正航梳打奶油饼\' or content=\'100GD正航葱香味薄片饼\' or content=\'100G正航烧烤味薄片饼\' or content=\'120G正航蛋黄饼干\' or content=\'110G正航蛋奶饼干\' or content=\'60G正航快乐熊仔饼\' or content=\'60G正航快乐趣味饼\' or content=\'50G乐事原味\' or content=\'50G乐事烧烤\' or content=\'50G乐事红烩\' or content=\'50G乐事番茄\' or content=\'50G乐事波番茄\' or content=\'50G乐事波烤肋\' or content=\'120G乐事原味\' or content=\'120G乐事烤肉\' or content=\'120G乐事海鲜\' or content=\'120G乐事番茄\' or content=\'18G乐事原味\' or content=\'18G乐事烧烤\' or content=\'18G乐事红烩\' or content=\'18G乐事番茄\' or content=\'125g达能牛奶香脆\' or content=\'130g达能牛奶特浓夹心\' or content=\'130g达能牛奶特浓花生味夹心\' or content=\'45g达能牛奶香脆便利装\' or content=\'100g达能牛奶佳钙夹心牛奶\' or content=\'100g达能牛奶佳钙甜脆饼干\' or content=\'105g达能牛奶佳钙甜酥饼干\' or content=\'达能无限脆饼干玉米味\' or content=\'85g达能王子巧颗粒曲奇星\' or content=\'120g达能王子夹心草莓味\' or content=\'120g达能王子夹心巧克力味\' or content=\'100g达能甜趣\' or content=\'100g达能闲趣\' or content=\'500G福马蛋黄派\' or content=\'小熊维尼灌心饼牛奶味\' or content=\'小熊维尼灌心饼草莓味\' or content=\'小熊灌心饼奶油味\' or content=\'小熊灌心饼草莓味\' or content=\'375G福马蛋黄派\' or content=\'40G福马爱尚非蛋糕香蕉味\' or content=\'40G爱尚非蛋糕草莓味\' or content=\'80G爱尚非蛋糕草莓味\' or content=\'80G爱尚非蛋糕椰香味\' or content=\'160G爱尚非蛋糕草莓味\' or content=\'格里高百力濨白脱味\' or content=\'格力高双层百力滋巧克力味\' or content=\'格力高双层百力滋奶咖味\' or content=\'100g格力高菜园小饼芝麻味\' or content=\'100g格力高菜园小饼烧烤味\' or content=\'18g妙脆角葱香原味\' or content=\'咪咪巧克力棒蛋奶味\' or content=\'18g妙脆角美式茄汁\' or content=\'18g妙脆角魔力炭烧\' or content=\'18g妙脆角香浓辣鸡\' or content=\'40g妙脆角魔力炭烧\' or content=\'40g妙脆角葱香原味\' or content=\'40g妙脆角美式茄汁\' or content=\'200g三辉法式香奶面包\' or content=\'200g三辉日式点心面包\' or content=\'84g旺旺雪饼\' or content=\'52g旺旺仙贝\' or content=\'上好佳天然薯片原味\' or content=\'上好佳天然薯片烤肉口味\' or content=\'上好佳鲜虾片\' or content=\'上好佳朱古力粟米条\' or content=\'上好佳可可甜心香芋味\' or content=\'50g迪士尼牛奶灌心饼\' or content=\'50g迪士尼草莓灌心饼\' or content=\'40g迪士尼后调味红烧牛肉棒\' or content=\'30g迪士尼后牛奶棒\' or content=\'45g迪士尼草莓灌心饼\' or content=\'105g迪士尼葱香味饼\' or content=\'100g正航薄饼奶油味\' or content=\'380g正航快乐乖乖兔饼干\' or content=\'380g正航快乐趣味饼干\' or content=\'500g正航玉米酥饼干\' or content=\'500g正航花生酥\' or content=\'100g正航巧克力薄饼\' or content=\'上好佳天然薯片番茄口味\' or content=\'上好佳鲜虾条\' or content=\'上好佳荷兰豆\' or content=\'上好佳玉米口味\' or content=\'上好佳玉米花果仁奶油\' or content=\'上好佳玉米卷\' or content=\'上好佳草莓栗米条\' or content=\'上好佳番茄薯条\' or content=\'上好佳可可甜心\' or content=\'上好佳日本鱼果海苔味\' or content=\'125g康师傅32甜苏打奶油\' or content=\'125g康师傅32甜苏打柠檬\' or content=\'125g康师傅32甜苏打香巧\' or content=\'125g康师傅32甜苏打蓝莓\' or content=\'125g康师傅32甜苏打咖啡牛奶\' or content=\'100g康师傅32咸苏打葱香味\' or content=\'118g康师傅32酥松奶油\' or content=\'118g康师傅32酥松花生\' or content=\'118g康师傅32酥松巧克力\' or content=\'118g康师傅32酥松草莓\' or content=\'80g康师傅咸酥醇香奶油\' or content=\'80g康师傅咸酥葱香奶油\' or content=\'80g康师傅咸酥火腿芝士\' or content=\'80g康师傅甜酥榛巧\' or content=\'80g康师傅甜酥柠檬\' or content=\'80g康师傅甜酥蓝莓\' or content=\'80g康师傅甜酥酸奶\' or content=\'80g康师傅蛋黄酥酥牛奶\' or content=\'80g康师傅蛋黄酥酥原味\' or content=\'85g康师傅美味酥葱香\' or content=\'85g康师傅美味酥烧烤\' or content=\'85g康师傅美味酥蒜香鸡蓉\' or content=\'85g康师傅美味酥黑胡椒牛排\' or content=\'85g康师傅美味酥海苔\' or content=\'96g康师傅妙芙欧式奶油\' or content=\'96g康师傅妙芙欧式巧克力\' or content=\'96g康师傅妙芙欧式香芋牛奶\' or content=\'96g康师傅妙芙欧式鲜橙牛奶\' or content=\'40g康师傅彩笛卷巧克力\' or content=\'40g康师傅彩笛卷草莓\' or content=\'40g康师傅彩笛卷哈密瓜\' or content=\'60g康师傅乐芙球牛奶\' or content=\'60g康师傅乐芙球巧克力\' or content=\'60g康师傅乐芙球草莓\' or content=\'60g康师傅乐芙球蓝莓\' or content=\'好丽友巧克力派6枚装\' or content=\'好丽友巧克力派2枚装\' or content=\'好丽友好多鱼浓香茄汁\' or content=\'百力滋微辣比萨味\' or content=\'好丽友蘑古力香浓巧克力\' or content=\'好丽友蘑古力红豆巧克力\' or content=\'好丽友注心蛋黄派2枚装\' or content=\'格力高菜园小饼番茄味\' or content=\'达能王子夹心饼干牛奶巧克力\' or content=\'200G咪咪虾条\' or content=\'明治欣欣杯巧克力味\' or content=\'明治欣欣杯香蕉味\' or content=\'明治欣欣杯牛奶味\' or content=\'明治欣欣杯香橙味\' or content=\'明治欣欣杯草莓味\' or content=\'明治欣欣杯香橙味\' or content=\'明治欣欣杯朱古力\' or content=\'明治欣欣杯草莓味\' or content=\'明治欣欣杯香蕉味\' or content=\'150g长鼻王麦烧葱香口味\' or content=\'130g长鼻王麦烧蛋黄夹心\' or content=\'150g长鼻王麦烧海苔芝麻味\' or content=\'150g长鼻王麦烧原味\' or content=\'130g长鼻王麦烧花生夹心\' or content=\'150g长鼻王麦烧蕃茄口味\' or content=\'130g长鼻王麦烧巧克力夹心\' or content=\'160g长鼻王夹心卷蛋黄口味\' or content=\'48g长鼻王夹心卷蛋黄口味\' or content=\'90g卡夫奥利奥威化巧克力5条\' or content=\'75g卡夫奥利奥夹心巧克力饼干\' or content=\'80g凯达e趣夹心饼干奶油味\' or content=\'118g好搭档沙琪玛\' or content=\'绿豆糕\' or content=\'红豆糕\' or content=\'桂花糕\' or content=\'桔红糕\' or content=\'蛋糕\' or content=\'蛋糕\' or content=\'蛋糕\' or content=\'蛋糕\' or content=\'蛋糕\' or content=\'蛋糕\' or content=\'125g鬼脸嘟嘟花生\' or content=\'125g鬼脸嘟嘟草莓\' or content=\'哥俩好沙琪玛促销装\' or content=\'100g太平梳打饼干蔬菜\' or content=\'100g太平梳打饼干奶盐\' or content=\'100g太平梳打饼干香葱\' or content=\'350g康元柠檬卜夹心饼干\' or content=\'80g凯达e趣夹心饼干柠檬味\' or content=\'好多鱼烧烤味\' or content=\'好丽友蛋黄派注心蛋黄\' or content=\'亿合牛奶鸡蛋虾条\' or content=\'亿合原香味虾条\' or content=\'亿合什锦派\' or content=\'亿合原香味虾片\' or content=\'50G乐事芒果味\' or content=\'50G乐事青柠味\' or content=\'50G乐事鸡翅味\' or content=\'50G乐事黄瓜味\' or content=\'旺旺煎饼鸡蛋煎饼\' or content=\'达能王子曲奇星饼干醇香奶油\' or content=\'达能佳钙牛奶夹心饼干巧克力\' or content=\'波力鸡蛋捲\' or content=\'波力香葱捲\' or content=\'福马咪咪虾条\' or content=\'名称\' or content=\'115g恒康青青豆\' or content=\'96g恒康柳香瓜子\' or content=\'105g恒康五香瓜子\' or content=\'100g恒康小京生\' or content=\'68g广信西瓜子\' or content=\'118g香飘飘花生烤鸡味\' or content=\'118g香飘飘花生牛肉味\' or content=\'68g香飘飘花生牛肉味\' or content=\'68g香飘飘花生原味\' or content=\'80g大好大瓜子\' or content=\'120g亿合锅巴烧烤味\' or content=\'120g亿合锅巴麻辣味\' or content=\'138g大好大瓜子奶油味\' or content=\'香飘缘香辣花生鸡汁味\' or content=\'香飘缘脆皮松松果奇味\' or content=\'老酒花生\' or content=\'香飘缘原味香辣花生\' or content=\'大好大水煮花生五香味\' or content=\'大好大水煮花生香辣\' or content=\'香飘飘香辣花生烤鸡味\' or content=\'130g广信台湾甘草梅\' or content=\'128g广信冰糖杨梅\' or content=\'128g广信盐津榄\' or content=\'130g广信正野乌梅\' or content=\'103g广信正宗话梅\' or content=\'128g广信爽口榄\' or content=\'128g广信台湾情人梅\' or content=\'128g广信相思梅\' or content=\'108g广信原味野乌梅\' or content=\'23g洽洽怪怪豆麻辣\' or content=\'23g洽洽怪怪豆番茄\' or content=\'23g洽洽怪怪豆五香\' or content=\'52g洽洽怪怪豆五香\' or content=\'晋禾宫廷无核枣\' or content=\'晋禾阿胶无核枣\' or content=\'85g亨仕利袋装话梅皇\' or content=\'55g亨仕利袋装清香芒果\' or content=\'40g亨仕利袋装广式话梅\' or content=\'70g亨仕利袋装盐津山楂\' or content=\'85g亨仕利袋装话梅肉\' or content=\'85g亨仕利袋装话梅桃片\' or content=\'120g亨仕利瓶装泰国话梅\' or content=\'160g亨仕利瓶装野乌梅\' or content=\'150g亨仕利瓶装吃不厌桃肉\' or content=\'170g亨仕利瓶装特级话梅\' or content=\'70g亨仕利盐津梅\' or content=\'70g亨仕利盐津葡萄\' or content=\'75g亨仕利情人梅\' or content=\'180g亨仕利盐津葡萄\' or content=\'180g亨仕利开胃金桔\' or content=\'160g亨仕利话梅皇\' or content=\'150g亨仕利盐津桃肉\' or content=\'160g亨仕利话梅肉\' or content=\'170g亨仕利话梅橄榄\' or content=\'130g亨仕利盐津陈皮\' or content=\'180g亨仕利相思梅\' or content=\'160g亨仕利水晶杨梅\' or content=\'150g亨仕利甘草桃肉\' or content=\'亨仕利袋装盐津桃肉\' or content=\'亨仕利袋装甘草桃肉\' or content=\'亨仕利袋装相思梅\' or content=\'太仓香酥肉松\' or content=\'太仓肉松\' or content=\'太仓塑盒原味肉松\' or content=\'20g母亲牛肉棒原味\' or content=\'20g母亲牛肉棒香烤\' or content=\'10g母亲牛肉条葱爆\' or content=\'10g母亲牛肉条麻辣\' or content=\'10g母亲牛肉条原味\' or content=\'波力渔趣鳕柳丝辣味\' or content=\'波力渔趣鳕柳丝海苔味\' or content=\'萨啦咪烤鸡脖\' or content=\'萨啦咪啃德佬鸡翅\' or content=\'萨啦咪小鸡腿\' or content=\'萨啦咪11小鸡腿\' or content=\'萨啦咪大鸡爪\' or content=\'萨啦咪翅尖\' or content=\'萨啦咪BB丸子\' or content=\'萨啦咪鸭翅\' or content=\'萨啦咪大鸡腿\' or content=\'18G绿盛牛肉丁\' or content=\'30G绿盛农夫与海鱼柳夹心\' or content=\'28g绿盛牛肉丁芝麻味\' or content=\'40g绿盛牛肉粒原汁\' or content=\'40g绿盛牛肉粒沙嗲\' or content=\'30g绿盛牛肉粒红烧卤汁\' or content=\'100g祖名豆腐干海鲜\' or content=\'100g祖名豆腐干肉汁\' or content=\'100g祖名豆腐干五香\' or content=\'100g祖名豆腐干鸡汁\' or content=\'100g祖名豆腐干麻辣\' or content=\'鱼派香烤鱼丝\' or content=\'鱼派烟熏三文鱼味\' or content=\'鱼派烧烤味\' or content=\'鱼派烤墨鱼味\' or content=\'鱼派天然原味\' or content=\'鱼派泰式香辣味\' or content=\'鱼派风味辣鱼片\' or content=\'唯新牛肉脯原味\' or content=\'唯新猪肉脯原味\' or content=\'唯新金枪鱼脯原味\' or content=\'唯新猪肉脯原味\' or content=\'唯新猪肉脯果味\' or content=\'唯新猪肉脯\' or content=\'唯新猪肉脯黑胡椒味\' or content=\'唯新猪肉脯麻辣味\' or content=\'唐纳兹红烧牛肉粥\' or content=\'唐纳兹桂圆核桃粉\' or content=\'唐纳兹高钙桂花西湖藕粉\' or content=\'唐纳兹葱香牛肉粥\' or content=\'唐纳兹皮蛋瘦肉粥\' or content=\'唐纳兹鸡肉粥\' or content=\'唐纳兹核桃粉豆奶粉\' or content=\'新达利清炖排骨米线\' or content=\'新达利香辣排骨米线\' or content=\'新达利酸辣牛肉米线\' or content=\'新达利香辣牛肉米线\' or content=\'新达利香菇炖鸡米线\' or content=\'新达利酸辣牛肉桶装米线\' or content=\'新达利香辣牛肉桶装米线\' or content=\'新达利香辣排骨桶装米线\' or content=\'新达利香菇炖鸡桶装米线\' or content=\'新达利清炖排骨桶装米线\' or content=\'华丰巴西烤肉\' or content=\'华丰原汁牛排\' or content=\'华丰台式烤肠\' or content=\'华丰孜然羊排\' or content=\'华丰香烤鸡翅\' or content=\'华丰叉烧烤肉\' or content=\'华丰碳烤牛肉\' or content=\'华丰串烤甜虾\' or content=\'华丰麻辣牛排\' or content=\'华丰铁板牛肉\' or content=\'华丰田园香辣鸡\' or content=\'华丰阿根廷烤肉\' or content=\'华丰德国香肠\' or content=\'华丰挪威海鲜\' or content=\'日清UFO铁板牛肉\' or content=\'日清UFO四川火锅\' or content=\'日清UFO虾仁炒面\' or content=\'日清碗炒面大王糖醋排骨\' or content=\'日清碗面炒大王葱油肉丝\' or content=\'日清碗面炒大王八宝辣酱\' or content=\'日清碗面炒大王红油辣肉\' or content=\'日清点心杯香香牛肉\' or content=\'日清点心杯鲜鲜虾仁\' or content=\'日清点心杯美美罗宋汤\' or content=\'日清袋炒面大王糖醋排骨\' or content=\'日清袋炒面大王葱油肉丝\' or content=\'日清骨汤拉面海鲜\' or content=\'日清骨汤拉面牛骨\' or content=\'日清面道什锦海鲜\' or content=\'日清面道腐乳炖肉\' or content=\'童师傅馄沌海鲜\' or content=\'童师傅馄沌鲜肉\' or content=\'统一小当家奇奇怪怪\' or content=\'统一小当家魔力辣子鸡\' or content=\'统一小当家红烧\' or content=\'统一小当家香葱\' or content=\'统一小当家五香\' or content=\'统一小当家鸡汁\' or content=\'好劲道上汤大骨麻辣牛肉\' or content=\'好劲道上汤大骨红烧牛肉\' or content=\'巧面馆香菇炖鸡袋面\' or content=\'巧面馆红烧牛肉袋面\' or content=\'来一桶鲜虾\' or content=\'来一桶红烧\' or content=\'好劲道鸡蛋面雪菜\' or content=\'好劲道鸡蛋面五香\' or content=\'袋统一100鲜虾鱼板面\' or content=\'袋统一100葱爆牛肉面\' or content=\'75g顾大嫂菜泡饭海鲜\' or content=\'75g顾大嫂菜泡饭宫廷\' or content=\'160g旺旺小馒头\' or content=\'康师傅鱼板鲜虾面\' or content=\'康师傅笋干老鸭煲\' or content=\'康师傅红烧牛肉面\' or content=\'康师傅鲜虾鱼板面\' or content=\'康师傅红烧牛肉面\' or content=\'康师傅香辣牛肉面袋\' or content=\'康师傅红烧牛肉面袋\' or content=\'康师傅魔鬼拉面\' or content=\'康师傅蟹粉狮子头面\' or content=\'康师傅香辣牛肉面\' or content=\'康师傅东坡红烧肉面\' or content=\'康师傅红烧烤牛肉面\' or content=\'香飘飘方便粉丝鲜虾海苔\' or content=\'香飘飘方便粉丝红烧牛肉\' or content=\'香飘飘方便粉丝香辣排骨\' or content=\'香飘飘过桥米线鲜虾海苔\' or content=\'香飘飘过桥米线红烧牛肉\' or content=\'香飘飘过桥米线川香酸辣\' or content=\'香飘飘小馄饨香茹炖鸡\' or content=\'香飘飘小馄饨海鲜虾仁\' or content=\'香飘飘小馄饨上汤鲜肉\' or content=\'香飘飘小馄饨香辣牛肉\' or content=\'香飘飘汤年糕雪菜笋干\' or content=\'香飘飘菜泡饭海鲜泡饭\' or content=\'香飘飘菜泡饭鸡汁泡饭\' or content=\'香飘飘菜泡饭霉菜扣肉\' or content=\'康师傅海鲜碗面\' or content=\'康师傅笋干老鸭煲碗面\' or content=\'康师傅香辣牛肉碗面\' or content=\'康师傅香菇炖鸡碗\' or content=\'康师傅香菇炖鸡杯面\' or content=\'巧面馆香菇炖鸡面桶装\' or content=\'巧面馆红烧牛肉面桶装\' or content=\'日清炒面大王黑椒牛柳\' or content=\'日清开杯乐五香牛肉\' or content=\'日清开杯乐意大利牛肉\' or content=\'日清开杯乐香浓叉烧\' or content=\'日清开杯乐虾仁原味\' or content=\'日清开杯乐香辣牛肉\' or content=\'日清面道精炖牛肉\' or content=\'童师傅馄钝香菇\' or content=\'童师傅馄钝牛肉\' or content=\'娃哈哈大厨艺杭州片儿川\' or content=\'娃哈哈大厨艺鲜汤虾仁\' or content=\'娃哈哈大厨艺香辣牛肉味\' or content=\'统一100浓香排骨面\' or content=\'统一100精炖番茄牛肉面\' or content=\'统一100红椒牛肉面\' or content=\'康师傅东坡红烧肉面\' or content=\'华丰魔法师怪味豆\' or content=\'千喜鹤新驱动鸡肉肠\' or content=\'千喜鹤金牌王中王\' or content=\'千喜鹤王中王\' or content=\'千喜鹤甜玉米香肠\' or content=\'千喜鹤金装喜鹤王\' or content=\'千喜鹤新驱动火腿肠\' or content=\'千喜鹤鸡肉王\' or content=\'伊利学生营养奶粉\' or content=\'伊利学生高锌钙奶粉\' or content=\'智多星AD钙豆奶粉\' or content=\'香派西湖藕粉桂花莲子\' or content=\'波力牛肉夹心鳕柳丝\' or content=\'波力芝麻夹心鳕柳丝\' or content=\'波力原味鳕柳丝\' or content=\'波力香辣鳕柳丝\' or content=\'波力海苔鳕柳丝\' or content=\'波力原味鳕柳丝\' or content=\'波力牛肉夹心鳕柳丝\' or content=\'波力芝麻夹心鳕柳丝\' or content=\'65g爽康香辣鸡翅\' or content=\'70g爽康香酥凤爪\' or content=\'85g爽康香酥鸡腿\' or content=\'65g爽康酱汁鸭翅\' or content=\'40g爽康精品喜蛋\' or content=\'波力原味海苔\' or content=\'波力原味海苔\' or content=\'波力脆片海苔\' or content=\'香派黑芝麻糊\' or content=\'雀巢麦片高钙\' or content=\'雀巢麦片燕麦\' or content=\'伊利女士营养奶粉\' or content=\'3克美好时光原味海苔\' or content=\'美好时光45克海苔原味\' or content=\'千喜鹤优级火腿肠\' or content=\'千喜鹤金牌王中王火腿肠\' or content=\'高露洁多能波浪型牙刷\' or content=\'三笑2309牙刷\' or content=\'90克高露洁防蛀美白牙膏\' or content=\'140G高露洁三重功效\' or content=\'90G高露洁草本牙膏\' or content=\'三笑704香柠清香牙刷送手机链\' or content=\'高露洁草本翠爽水晶牙膏\' or content=\'三笑2413舒适洁净爱情海牙刷\' or content=\'三笑S503纸卡牙刷\' or content=\'90g佳洁士强根固齿\' or content=\'90g佳洁士草本水晶\' or content=\'120g田七双钙固齿\' or content=\'140ML索芙特亮发保温嗜喱水\' or content=\'175g夏士莲洗发水\' or content=\'400ml舒蕾洗发水\' or content=\'8g舒蕾洗发水简装去屑清爽型\' or content=\'海飞丝洗发水简装去屑\' or content=\'200ml飘柔日用护理\' or content=\'小青清纯植物精华护发素营养润色\' or content=\'小青清纯植物精华洗发露去屑修护\' or content=\'小青清纯植物精华护发素修护顺滑\' or content=\'小青溥纯植物精华洗发露舒爽顺滑\' or content=\'舒蕾洗发露柔滑型\' or content=\'飘柔洗发露去屑\' or content=\'舒蕾凝水焗油洗发露简\' or content=\'175ML夏士莲洗发水清爽长效\' or content=\'380ML索芙特木瓜白肤香浴油精纯沐浴露\' or content=\'120G索芙特木瓜白肤SOD蜜\' or content=\'丁家宜洗面奶美白补水\' or content=\'丁家宜洗面奶美白控油\' or content=\'丁家宜男士活炭劲爽洁面乳\' or content=\'200ml六神清新滋润沐浴露\' or content=\'200ml舒肤佳沐浴露\' or content=\'小青清纯植物养护洁面乳祛痘\' or content=\'小青清纯植物养护洁面乳控油\' or content=\'小青清纯植物养护洁面乳美白\' or content=\'小青四季滋养护手霜\' or content=\'小青清润美白保湿霜\' or content=\'200ml六神清凉沐浴露绿茶\' or content=\'300ML蓝月亮芦荟洗手液\' or content=\'125g纳爱斯香皂\' or content=\'雕牌增白皂\' or content=\'300g雕牌洗衣粉\' or content=\'180g雕牌天然皂粉\' or content=\'纳爱斯珍珠营养香皂\' or content=\'300g奥妙洗衣粉\' or content=\'500g雕牌洗洁精\' or content=\'威露士水果味洗手液\' or content=\'蓝月亮芦荟抑菌洗手液\' or content=\'226G奥妙皂\' or content=\'135G奥妙皂\' or content=\'V0002维达餐巾纸\' or content=\'0261叶雷餐巾纸\' or content=\'064GB清风餐巾纸\' or content=\'180抽叶蕾错不了面纸\' or content=\'8203纸音抽纸\' or content=\'B66AD清风餐巾纸\' or content=\'唯尔福卷筒纸\' or content=\'6包真真手帕纸\' or content=\'W112心相印皮夹\' or content=\'C910心相印手帕纸\' or content=\'B66AS清风手帕纸\' or content=\'0012维达三色超柔手帕纸\' or content=\'8801苗苗手帕纸\' or content=\'8802苗苗260软抽\' or content=\'8803苗苗180软抽\' or content=\'0605叶蕾手帕纸\' or content=\'0438叶蕾抽纸\' or content=\'0575叶蕾抽纸\' or content=\'苏菲立体护围日用洁翼5片\' or content=\'苏菲动感丝薄日用洁翼5片\' or content=\'苏菲弹力贴身日用洁翼10片\' or content=\'苏菲弹力贴身夜用洁翼5片\' or content=\'苏菲动感丝薄超长夜用洁翼4片\' or content=\'苏菲柔棉日5片\' or content=\'护舒宝护垫\' or content=\'护舒宝棉柔日用\' or content=\'102护舒宝瞬洁日用\' or content=\'护舒宝棉柔夜用\' or content=\'护舒宝日用丝薄\' or content=\'护舒宝夜用丝薄\' or content=\'2025珂蓉干爽网面\' or content=\'2023珂蓉丝棉表层\' or content=\'珂蓉倍爽卫生巾\' or content=\'珂蓉快易加长日用\' or content=\'苏菲柔棉夜5片\' or content=\'护舒宝护垫棉柔表层\' or content=\'2030珂蓉丝薄护翼卫生巾干爽网面\' or content=\'女单面印花三角裤两条\' or content=\'女单面印花三角裤两条\' or content=\'女单面印花三角裤两条\' or content=\'宜而爽女氨纶两条装三角裤\' or content=\'宜而爽女氨纶两条装三角裤\' or content=\'宜而爽女氨纶两条装三角裤\' or content=\'宜而爽男单面三角裤两条\' or content=\'宜而爽男单面三角裤两条\' or content=\'奕清方巾A001\' or content=\'奕清毛巾B1001\' or content=\'奕清毛巾A1003\' or content=\'奕清毛巾CM1601\' or content=\'奕清毛巾C8120\' or content=\'梦娜原子弹男棉袜运动A1508\' or content=\'梦娜原子弹男棉袜A1517\' or content=\'梦娜女棉袜B1308\' or content=\'梦娜5双装水晶丝短袜130\' or content=\'奕清毛巾B1004\' or content=\'梦娜休闲男袜A1516\' or content=\'梦娜休闲男袜A1857\' or content=\'梦娜休闲男袜747\' or content=\'梦娜休闲女袜6138\' or content=\'梦娜休闲女袜6219\' or content=\'梦娜休闲女袜6119\' or content=\'长命电池7简\' or content=\'长命电池5简\' or content=\'长命电池7精\' or content=\'长命电池5精\' or content=\'双鹿电池7普\' or content=\'双鹿电池5普\' or content=\'双鹿碱性电池5\' or content=\'好享和垃圾袋大\' or content=\'好享和垃圾袋中\' or content=\'好享和垃圾袋小\' or content=\'好享和纸杯\' or content=\'红珊瑚毛巾\' or content=\'玉麒麟毛巾\' or content=\'三利毛巾\' or content=\'妍妍毛巾\' or content=\'421盆\' or content=\'420盆\' or content=\'1130盆\' or content=\'1137盆\' or content=\'0233杯子\' or content=\'1009杯子\' or content=\'0227杯子\' or content=\'奕清毛巾A1202\' or content=\'兴盛不锈钢勺子\' or content=\'热水瓶\' or content=\'齐心抽杆夹\' or content=\'得力透明板夹\' or content=\'元昌订书机\' or content=\'齐心订书机\' or content=\'得力回型针\' or content=\'得力大头针\' or content=\'元昌图订\' or content=\'得力订书针\' or content=\'得力订书针\' or content=\'齐心文件夹\' or content=\'三木文件夹\' or content=\'齐心C330按扣袋\' or content=\'得力9545长尾夹\' or content=\'得力9544长尾夹\' or content=\'得力9492透明彩色票夹\' or content=\'玛丽60页软抄\' or content=\'玛丽80页硬抄\' or content=\'玛丽100页硬抄\' or content=\'得力美工刀\' or content=\'得力美工刀\' or content=\'益而高不锈钢剪刀\' or content=\'HB中华绘图铅笔\' or content=\'B中华绘图铅笔\' or content=\'2B中华绘图铅笔\' or content=\'金万年K1024中性笔\' or content=\'晨光GP1212中性笔\' or content=\'晨光GP1008中性笔\' or content=\'齐BP102R圆珠笔\' or content=\'晨光星潮ABP14701\' or content=\'金万年K3019圆珠笔\' or content=\'超级女生B1219C圆珠笔\' or content=\'白金BS60圆珠笔\' or content=\'400L学生三用圆规\' or content=\'高博士饭盒\' or content=\'高博士手工折纸\' or content=\'高博士笔袋D160200404\' or content=\'高博士笔袋D160200904\' or content=\'3B中华绘图铅笔\' or content=\'4B中华绘图铅笔\' or content=\'5B中华绘图铅笔\' or content=\'白雪修正液\' or content=\'6B中华绘图铅笔\' or content=\'西瓜太郎12色彩色笔\' or content=\'马利水彩颜料\' or content=\'西瓜太郎30CC胶水\' or content=\'中华白雪考试专用套装\' or content=\'超女活动铅笔\' or content=\'长城牌高级绘图橡皮\' or content=\'英语本\' or content=\'练习本\' or content=\'星光墨汁\' or content=\'得力6230直尺\' or content=\'得力6240直尺\' or content=\'得力6415三角尺\' or content=\'321有机半圆量角器\' or content=\'长城滚轮橡皮\' or content=\'15CM直尺\' or content=\'得力笔筒\' or content=\'得力7203修正带\' or content=\'西瓜太郎修正贴\' or content=\'得力7101固体胶\' or content=\'齐心B2651固体胶\' or content=\'永大双面胶\' or content=\'永大双面胶\' or content=\'永大学生胶带\' or content=\'永大封箱带\' or content=\'玛丽纪念册\' or content=\'添美同学录\' or content=\'真彩009中性笔\' or content=\'真彩0341F中性笔\' or content=\'晨光BP1188红圆珠笔\' or content=\'真彩0221B中性笔\' or content=\'齐心3636长尾夹15MM\' or content=\'齐心3635长尾夹19MM\' or content=\'齐心3634长尾夹25MM\' or content=\'齐心3633长尾夹32MM\' or content=\'齐心3632长尾夹41MM\' or content=\'齐心无线装订本4503A5\' or content=\'齐心无线装订本4506A5\' or content=\'五千年中性笔W289\' or content=\'五千年中性笔W297\' or content=\'通乐圆珠笔G308\' or content=\'青联横搁稿\' or content=\'红双喜乒乓球拍\' or content=\'红双喜乒乓球拍\' or content=\'红双喜乒乓球一星\' or content=\'红双喜乒乓球二星\' or content=\'红双喜羽毛球\' or content=\'粉条\' or content=\'冬枣\' or content=\'小黄花鱼\' or content=\'毛芋头\' or content=\'丰水梨\' or content=\'冷冻带鱼\' or content=\'冷冻黄花鱼\' or content=\'干豆腐\' or content=\'火龙果\' or content=\'大蒜\' or content=\'麻椒\' or content=\'新土豆\' or content=\'西瓜\' or content=\'芸豆\' or content=\'香瓜\' or content=\'西兰花\' or content=\'香雪原味面\' or content=\'佳玉家庭装大米\' or content=\'生姜\' or content=\'黄瓜\' or content=\'烤全腿\' or content=\'伊利利乐枕纯奶\' or content=\'辉山新版百利包奶\' or content=\'五湖一级大豆油\' or content=\'三锋苹果醋无糖\' or content=\'鲜玉米\' or content=\'长茄子\' or content=\'鲜鸡蛋\' or content=\'苹果醋袋装\' or content=\'心相印卷纸\' or content=\'重工茶肠\' or content=\'桃子\' or content=\'牛肉馅\' or content=\'力士嫩白美肤浴露\' or content=\'香雪特制精粉\' or content=\'雕牌超白加香粉\' or content=\'鱼丸\' or content=\'特价牛肉\' or content=\'力士嫩肤娇肤浴乳\' or content=\'力士闪亮冰爽浴露\' or content=\'追风立体弹力素\' or content=\'自动电子健康秤\' or content=\'梭鱼\' or content=\'角瓜\' or content=\'哈尔滨排骨肠\' or content=\'豆中宝大酱\' or content=\'松川屋青豆\' or content=\'新自然鸡蛋面\' or content=\'娃哈哈八宝粥\' or content=\'脊骨\' or content=\'上五花\' or content=\'带皮前腿\' or content=\'大成鸡翅根\' or content=\'小白菜\' or content=\'地雷瓜\' or content=\'山竹\' or content=\'伊丽沙白瓜\' or content=\'优质大蒜\' or content=\'金百味小火腿\' or content=\'康师傅冰红茶\' or content=\'西红柿\' or content=\'卷心菜\' or content=\'花生米\' or content=\'羊肉片\' or content=\'乐大妈风干肠\' or content=\'重工盐水肠\' or content=\'诚信小福烤肠\' or content=\'老沈阳肉肠\' or content=\'西红柿\' or content=\'黄豆\' or content=\'重工茶肠\' or content=\'生鸡头\' or content=\'海南木瓜\' or content=\'红富士苹果\' or content=\'黑小豆\' or content=\'蒜台\' or content=\'角瓜\' or content=\'黄瓜\' or content=\'饭豆\' or content=\'滩枣\' or content=\'辉山核桃花生奶\' or content=\'山椒罗汉笋\' or content=\'金百味优惠装\' or content=\'辉山核桃麦香奶\' or content=\'香雪大众挂面\' or content=\'柚子茶\' or content=\'黑牛核桃芝麻糊\' or content=\'康师傅绿茶\' or content=\'永春内蒙古肥羊卷\' or content=\'带鱼段\' or content=\'惠成白芝麻\' or content=\'诚信哈尔滨红肠\' or content=\'全南蜂蜜大枣茶\' or content=\'有友泡凤爪\' or content=\'牛奶佳钙清脆饼干\' or content=\'牛奶佳钙酥松饼干\' or content=\'全南蜂蜜芦荟茶\' or content=\'阿雷猪蹄\' or content=\'辉山原味酸奶\' or content=\'全南蜂蜜柠檬茶\' or content=\'品牌\' or content=\'COCCI\' or content=\'EINPAD\' or content=\'E派\' or content=\'GX\' or content=\'HOt\' or content=\'innos\' or content=\'iwoo\' or content=\'KENKO\' or content=\'KISSU\' or content=\'KOCIN\' or content=\'LG\' or content=\'NAIDE\' or content=\'NEC\' or content=\'TCL\' or content=\'UT斯达康\' or content=\'VERTU\' or content=\'VEVA\' or content=\'VIM伟恩\' or content=\'阿尔法\' or content=\'阿尔卡特\' or content=\'阿凡提\' or content=\'埃立特\' or content=\'艾酷\' or content=\'艾炜特\' or content=\'爱宝隆\' or content=\'爱尔马\' or content=\'爱国者\' or content=\'爱果\' or content=\'爱久久\' or content=\'爱肯\' or content=\'爱酷\' or content=\'爱立顺\' or content=\'爱立信\' or content=\'爱摩登\' or content=\'爱纳星\' or content=\'爱诺德\' or content=\'爱诺特\' or content=\'爱谱乐\' or content=\'爱时尚\' or content=\'爱维特\' or content=\'爱我\' or content=\'爱讯达\' or content=\'爱易通\' or content=\'爱意通\' or content=\'安科讯\' or content=\'安利嘉\' or content=\'安利普\' or content=\'安派\' or content=\'安卓互联\' or content=\'奥丁\' or content=\'奥克斯\' or content=\'奥乐\' or content=\'奥利信\' or content=\'奥洛斯\' or content=\'奥魅尔\' or content=\'奥维\' or content=\'奥卓\' or content=\'八〇九〇\' or content=\'巴菲\' or content=\'巴拿拿\' or content=\'百达\' or content=\'百达玖玖\' or content=\'百迪宝\' or content=\'百合\' or content=\'百嘉好\' or content=\'百立丰\' or content=\'百裕\' or content=\'佰灵通\' or content=\'佰盛\' or content=\'佰事讯\' or content=\'佰意\' or content=\'邦华\' or content=\'邦讯达\' or content=\'帮盛\' or content=\'宝方\' or content=\'宝捷讯\' or content=\'宝码\' or content=\'贝多芬\' or content=\'贝尔丰\' or content=\'贝尔星\' or content=\'贝龙\' or content=\'本为\' or content=\'比酷时代\' or content=\'比美\' or content=\'毕加索\' or content=\'波导\' or content=\'菠萝\' or content=\'铂乐\' or content=\'铂派\' or content=\'铂锐\' or content=\'博鑫奇\' or content=\'步步高\' or content=\'长虹\' or content=\'长江天音\' or content=\'长普达\' or content=\'长营\' or content=\'畅想未来\' or content=\'宸通和\' or content=\'晨想\' or content=\'晨信\' or content=\'晨兴\' or content=\'诚虹\' or content=\'诚基\' or content=\'传承\' or content=\'传奇\' or content=\'创世能\' or content=\'创维\' or content=\'创雅\' or content=\'创奕\' or content=\'大诚\' or content=\'大大\' or content=\'大华\' or content=\'大唐\' or content=\'大唐数码\' or content=\'大唐移动\' or content=\'大为\' or content=\'大显\' or content=\'大显启辰\' or content=\'大亚\' or content=\'大众电脑\' or content=\'戴尔\' or content=\'德进高通\' or content=\'德赛\' or content=\'迪奥\' or content=\'迪比特\' or content=\'迪迪\' or content=\'迪佳通\' or content=\'迪美\' or content=\'迪妙移动\' or content=\'迪思\' or content=\'迪斯尼\' or content=\'迪泰元\' or content=\'迪为\' or content=\'帝锋\' or content=\'帝狼\' or content=\'帝托\' or content=\'帝唯\' or content=\'电意\' or content=\'蝶变\' or content=\'鼎瑄\' or content=\'东方龙\' or content=\'东茂\' or content=\'东森\' or content=\'东森伟泰\' or content=\'东铁通讯\' or content=\'东信\' or content=\'动感通\' or content=\'多达康\' or content=\'多拉多\' or content=\'多美达\' or content=\'多普达\' or content=\'朵美\' or content=\'朵唯\' or content=\'恩泽通信\' or content=\'凡尔纳\' or content=\'凡美\' or content=\'泛泰\' or content=\'范思哲\' or content=\'梵尚\' or content=\'飞歌王\' or content=\'飞利浦\' or content=\'飞秒\' or content=\'飞思特\' or content=\'飞阳\' or content=\'飞盈\' or content=\'菲乐普\' or content=\'菲力克斯\' or content=\'斐讯\' or content=\'风云时代\' or content=\'峰泽联和\' or content=\'烽火\' or content=\'锋彩\' or content=\'锋达通\' or content=\'福尔特\' or content=\'福日\' or content=\'福兴达\' or content=\'富春江\' or content=\'富尔美\' or content=\'富可视\' or content=\'富士通\' or content=\'港利通\' or content=\'港龙\' or content=\'高尔\' or content=\'高金\' or content=\'高科\' or content=\'高昇\' or content=\'高盛达\' or content=\'高斯贝尔\' or content=\'高通\' or content=\'高威尔\' or content=\'高翔\' or content=\'高新奇\' or content=\'高讯移动\' or content=\'格莱特\' or content=\'格律诗\' or content=\'共展\' or content=\'广东凌鹰\' or content=\'广信\' or content=\'广盈时代\' or content=\'广州盛科\' or content=\'广州索爱\' or content=\'国虹\' or content=\'国力通\' or content=\'国乾\' or content=\'国乾科技\' or content=\'国威\' or content=\'国威HB\' or content=\'国威创新\' or content=\'国信\' or content=\'国信通\' or content=\'国誉\' or content=\'国正通\' or content=\'海尔\' or content=\'海帆\' or content=\'海派贵族\' or content=\'海沃\' or content=\'海信\' or content=\'海旭\' or content=\'汉泰\' or content=\'豪雅\' or content=\'好利通\' or content=\'好兄弟\' or content=\'禾兴江源\' or content=\'和信\' or content=\'核动力\' or content=\'黑莓\' or content=\'黑魅\' or content=\'黑米\' or content=\'恒泰\' or content=\'恒通\' or content=\'恒信\' or content=\'恒宇丰\' or content=\'红橙果\' or content=\'红萝卜\' or content=\'红葉\' or content=\'宏达\' or content=\'宏康\' or content=\'宏碁\' or content=\'宏泰尔\' or content=\'宏天\' or content=\'宏为\' or content=\'鸿嘉源\' or content=\'湖南大成\' or content=\'湖南电子\' or content=\'华臣数码\' or content=\'华慈\' or content=\'华帝高科\' or content=\'华晶\' or content=\'华立\' or content=\'华立时代\' or content=\'华录\' or content=\'华纳威秀\' or content=\'华锐\' or content=\'华尚\' or content=\'华世基\' or content=\'华蜀\' or content=\'华硕\' or content=\'华唐\' or content=\'华唐时代\' or content=\'华为\' or content=\'华夏腾宇\' or content=\'华夏通\' or content=\'华信时代\' or content=\'华讯\' or content=\'华禹\' or content=\'寰宇通\' or content=\'幻影\' or content=\'汇丰源通\' or content=\'汇通世纪\' or content=\'汇讯\' or content=\'惠普\' or content=\'基伍\' or content=\'吉邦\' or content=\'吉事达\' or content=\'集思宝\' or content=\'集友\' or content=\'几米\' or content=\'技嘉\' or content=\'加利利\' or content=\'佳斯特\' or content=\'佳通\' or content=\'佳想\' or content=\'佳域\' or content=\'佳之选\' or content=\'嘉尚\' or content=\'嘉源\' or content=\'杰得微\' or content=\'杰泰尔\' or content=\'捷来\' or content=\'今典\' or content=\'金铂\' or content=\'金步\' or content=\'金得\' or content=\'金尔雅\' or content=\'金格儿\' or content=\'金龟子\' or content=\'金果\' or content=\'金翰\' or content=\'金弘\' or content=\'金凯为\' or content=\'金科鼎\' or content=\'金来\' or content=\'金立\' or content=\'金立致远\' or content=\'金亮典\' or content=\'金曼\' or content=\'金茂\' or content=\'金鹏\' or content=\'金润\' or content=\'金圣达\' or content=\'金腾亿\' or content=\'金信\' or content=\'金兴\' or content=\'金星数码\' or content=\'金讯宏盛\' or content=\'金业\' or content=\'金赢\' or content=\'金运\' or content=\'琻品\' or content=\'锦书\' or content=\'锦炫达\' or content=\'劲动能\' or content=\'京瓷\' or content=\'京华\' or content=\'京凯达\' or content=\'京崎\' or content=\'经纬\' or content=\'精瑞\' or content=\'精英移动\' or content=\'井冈山华禹\' or content=\'景象\' or content=\'竞冠\' or content=\'巨赛\' or content=\'巨盛\' or content=\'君爵\' or content=\'骏域\' or content=\'卡尔雷斯\' or content=\'卡美欧\' or content=\'卡为\' or content=\'卡西欧\' or content=\'卡卓\' or content=\'凯利通\' or content=\'铠基\' or content=\'康佳\' or content=\'康力\' or content=\'科宝\' or content=\'科潮\' or content=\'科达圣龙\' or content=\'科健\' or content=\'科酷\' or content=\'科立讯\' or content=\'科利莱\' or content=\'科米\' or content=\'科摩\' or content=\'科诺\' or content=\'科普达\' or content=\'科盛\' or content=\'科特\' or content=\'科王\' or content=\'渴望\' or content=\'克莱斯\' or content=\'垦鑫达\' or content=\'库柏\' or content=\'酷爱\' or content=\'酷宝\' or content=\'酷比\' or content=\'酷比魔方\' or content=\'酷潮\' or content=\'酷鸽\' or content=\'酷卡\' or content=\'酷开\' or content=\'酷珂\' or content=\'酷龙\' or content=\'酷诺\' or content=\'酷派\' or content=\'酷普\' or content=\'酷绅\' or content=\'酷沃\' or content=\'昆达\' or content=\'拉风\' or content=\'来基达\' or content=\'蓝博兴\' or content=\'蓝极星\' or content=\'蓝天\' or content=\'蓝想\' or content=\'朗格\' or content=\'朗杰\' or content=\'朗界\' or content=\'朗翔\' or content=\'朗星达\' or content=\'乐购天地\' or content=\'乐美佳\' or content=\'乐目\' or content=\'乐派\' or content=\'乐锐\' or content=\'乐维\' or content=\'乐讯\' or content=\'雷奥\' or content=\'雷梦\' or content=\'雷萨\' or content=\'力派\' or content=\'力鑫\' or content=\'联创\' or content=\'联代\' or content=\'联泓\' or content=\'联通\' or content=\'联想\' or content=\'联益合创\' or content=\'亮剑\' or content=\'林宝坚尼\' or content=\'凌科\' or content=\'凌泰\' or content=\'凌拓\' or content=\'凌鹰\' or content=\'聆韵\' or content=\'六虹\' or content=\'龙旗\' or content=\'龙之宇\' or content=\'裸媒\' or content=\'迈道\' or content=\'迈峰\' or content=\'迈腾达\' or content=\'脉腾\' or content=\'美富通\' or content=\'美歌\' or content=\'美菱\' or content=\'美奇\' or content=\'美盛通\' or content=\'美熙\' or content=\'美翼\' or content=\'魅族\' or content=\'盟宝\' or content=\'米歌\' or content=\'米库\' or content=\'米粒\' or content=\'米玛\' or content=\'米语\' or content=\'敏讯\' or content=\'名博\' or content=\'明基\' or content=\'明基西门子\' or content=\'明派\' or content=\'明泰\' or content=\'铭仁\' or content=\'摩购\' or content=\'摩乐\' or content=\'摩玛时代\' or content=\'摩能\' or content=\'摩普士\' or content=\'摩天时代\' or content=\'摩托罗拉\' or content=\'摩托数码\' or content=\'摩托无线\' or content=\'摩西\' or content=\'纳伟仕\' or content=\'奈华特\' or content=\'南方高科\' or content=\'南俘电讯\' or content=\'南和\' or content=\'南极星\' or content=\'尼凯恩\' or content=\'尼蒙\' or content=\'宁波三星\' or content=\'纽曼\' or content=\'纽特\' or content=\'纽维\' or content=\'诺菲世纪\' or content=\'诺基亚\' or content=\'诺记\' or content=\'诺嘉源\' or content=\'诺捷通\' or content=\'诺卡\' or content=\'诺克拉\' or content=\'诺利达\' or content=\'诺利佳\' or content=\'诺亚鸽\' or content=\'诺亚信\' or content=\'欧比\' or content=\'欧博信\' or content=\'欧恩\' or content=\'欧谷\' or content=\'欧凯\' or content=\'欧科\' or content=\'欧酷\' or content=\'欧乐酷\' or content=\'欧珀\' or content=\'欧奇\' or content=\'欧萨\' or content=\'欧上\' or content=\'欧盛\' or content=\'欧网\' or content=\'欧新\' or content=\'欧怡\' or content=\'欧正\' or content=\'派对\' or content=\'派尔\' or content=\'派沃\' or content=\'派信\' or content=\'朋和\' or content=\'苹果\' or content=\'普爱达\' or content=\'普莱达\' or content=\'普蓝\' or content=\'普联\' or content=\'普瑞德\' or content=\'普士\' or content=\'普天三洋\' or content=\'普天同乐\' or content=\'普天王之\' or content=\'普天王芝\' or content=\'普天鑫\' or content=\'普天宜通\' or content=\'七喜\' or content=\'七星河\' or content=\'齐乐\' or content=\'琦基\' or content=\'旗润\' or content=\'侨兴\' or content=\'青橙\' or content=\'庆邦\' or content=\'荣事达\' or content=\'锐铂\' or content=\'锐合\' or content=\'瑞高\' or content=\'瑞恒\' or content=\'瑞翼\' or content=\'萨基姆\' or content=\'萨米\' or content=\'赛丰\' or content=\'赛鸿\' or content=\'赛纳普\' or content=\'赛浦\' or content=\'三宝\' or content=\'三和新\' or content=\'三基摩客\' or content=\'三菱\' or content=\'三美琦\' or content=\'三盟\' or content=\'三耐\' or content=\'三普\' or content=\'三奇\' or content=\'三维\' or content=\'三纬\' or content=\'三五互联\' or content=\'三新\' or content=\'三星\' or content=\'三众\' or content=\'桑达\' or content=\'森密科技\' or content=\'山水\' or content=\'山西天丽\' or content=\'商务通\' or content=\'尚锋\' or content=\'尚合\' or content=\'深爱\' or content=\'深圳欧珀\' or content=\'深圳天时达\' or content=\'深圳亚力通\' or content=\'胜音\' or content=\'圣宝龙\' or content=\'盛和\' or content=\'盛况\' or content=\'盛隆兴\' or content=\'盛乾通\' or content=\'盛泰\' or content=\'时通伟业\' or content=\'世纪天元\' or content=\'世纪伟业\' or content=\'世家\' or content=\'事达\' or content=\'首家\' or content=\'首派科技\' or content=\'首信\' or content=\'首亿通讯\' or content=\'首悦\' or content=\'数源\' or content=\'双科\' or content=\'双侨\' or content=\'硕码\' or content=\'硕颖\' or content=\'思特电子\' or content=\'四吉\' or content=\'四季风\' or content=\'松下\' or content=\'松讯达\' or content=\'搜神\' or content=\'索爱佳通\' or content=\'索尼\' or content=\'索尼爱立信\' or content=\'索普\' or content=\'索信\' or content=\'泰丰网络\' or content=\'泰蒙\' or content=\'泰星\' or content=\'泰讯\' or content=\'唐为\' or content=\'特灵通\' or content=\'腾祥\' or content=\'腾信时代\' or content=\'天歌\' or content=\'天基\' or content=\'天乐\' or content=\'天迈\' or content=\'天频\' or content=\'天勤\' or content=\'天时达\' or content=\'天天高\' or content=\'天玺\' or content=\'天意\' or content=\'天语\' or content=\'天遇\' or content=\'天元通\' or content=\'同威\' or content=\'同心\' or content=\'同洲\' or content=\'彤霖\' or content=\'彤鑫达\' or content=\'托柯\' or content=\'拓展无限\' or content=\'万达斯\' or content=\'万捷\' or content=\'万金塔\' or content=\'万利达\' or content=\'万普\' or content=\'万擎\' or content=\'万事通\' or content=\'网讯\' or content=\'威铂\' or content=\'威而肯\' or content=\'威酷\' or content=\'威智达\' or content=\'威兹奥\' or content=\'葳朗\' or content=\'微铂\' or content=\'微诺\' or content=\'微兴\' or content=\'唯爱\' or content=\'唯奥\' or content=\'唯开\' or content=\'唯科\' or content=\'唯乐\' or content=\'唯米\' or content=\'唯想\' or content=\'帷幄\' or content=\'维佳特\' or content=\'维卡\' or content=\'维纳斯\' or content=\'维图\' or content=\'伟博动力\' or content=\'纬图\' or content=\'闻讯\' or content=\'我爱你\' or content=\'沃达\' or content=\'沃歌\' or content=\'沃凯泰\' or content=\'沃普丰\' or content=\'沃途\' or content=\'吾爱\' or content=\'西铂\' or content=\'西凯\' or content=\'西可\' or content=\'西美\' or content=\'西门子\' or content=\'西泰\' or content=\'西维\' or content=\'喜卡\' or content=\'夏朗\' or content=\'夏浦光电\' or content=\'夏普\' or content=\'夏新\' or content=\'夏星\' or content=\'厦华\' or content=\'先创\' or content=\'先锋\' or content=\'先科\' or content=\'咸通\' or content=\'现代\' or content=\'祥集\' or content=\'响亮\' or content=\'小麦麦果\' or content=\'小米\' or content=\'心爱\' or content=\'心迪\' or content=\'心迪宝\' or content=\'心动科技\' or content=\'心动世纪\' or content=\'心语通\' or content=\'新标达\' or content=\'新创想\' or content=\'新大陆\' or content=\'新国脉\' or content=\'新基德\' or content=\'新势力\' or content=\'新邮\' or content=\'新中桥\' or content=\'鑫诺\' or content=\'鑫卓越\' or content=\'信得乐\' or content=\'信诺\' or content=\'信实\' or content=\'信盈\' or content=\'兴华宝\' or content=\'星火\' or content=\'星科壬\' or content=\'星网锐捷\' or content=\'星维\' or content=\'星宇\' or content=\'星语\' or content=\'雄风\' or content=\'熊猫\' or content=\'炫华\' or content=\'讯歌\' or content=\'雅器\' or content=\'雅讯达\' or content=\'雅迅网络\' or content=\'亚力通\' or content=\'亚米\' or content=\'亚信通\' or content=\'扬新\' or content=\'一三九\' or content=\'依众兴\' or content=\'宜兴中电\' or content=\'亿城\' or content=\'亿和源\' or content=\'亿嘉鑫\' or content=\'亿科泰达\' or content=\'亿美讯联\' or content=\'亿旗\' or content=\'亿通\' or content=\'亿扬\' or content=\'艺科\' or content=\'易百年\' or content=\'易创\' or content=\'易丰展业\' or content=\'易派\' or content=\'易特科\' or content=\'易闻\' or content=\'益阳\' or content=\'翼乐\' or content=\'翼品\' or content=\'翼扬\' or content=\'英达思康\' or content=\'英华达\' or content=\'英莱尔\' or content=\'英迈\' or content=\'英普\' or content=\'英特奇\' or content=\'鹰讯\' or content=\'赢者\' or content=\'优Phone\' or content=\'优尔得\' or content=\'优歌\' or content=\'优购\' or content=\'优酷\' or content=\'优快\' or content=\'优乐酷\' or content=\'优米斯达\' or content=\'优米通达\' or content=\'优摩\' or content=\'优派\' or content=\'优品\' or content=\'优珀\' or content=\'优普\' or content=\'优赛\' or content=\'优思\' or content=\'优索\' or content=\'优友\' or content=\'友利通\' or content=\'友旺\' or content=\'友为\' or content=\'友信达\' or content=\'宇龙\' or content=\'宇阳\' or content=\'羽翼\' or content=\'禹华\' or content=\'语泉\' or content=\'语信\' or content=\'玉科\' or content=\'誉品\' or content=\'远大\' or content=\'远点\' or content=\'远望谷\' or content=\'粤盈\' or content=\'云本\' or content=\'云台\' or content=\'泽爱\' or content=\'泽领\' or content=\'展翼\' or content=\'掌力\' or content=\'掌中宝\' or content=\'兆信\' or content=\'兆讯达\' or content=\'真我\' or content=\'臻爱\' or content=\'振华百智\' or content=\'振华欧比\' or content=\'振华通信\' or content=\'振华宇科\' or content=\'证通金信\' or content=\'知己迅联\' or content=\'知心\' or content=\'职业者\' or content=\'至能\' or content=\'至尊宝\' or content=\'志佳\' or content=\'志能\' or content=\'智爱\' or content=\'智惠\' or content=\'智吉\' or content=\'智灵通\' or content=\'智珀\' or content=\'智普\' or content=\'智信\' or content=\'智讯\' or content=\'中宝\' or content=\'中辰\' or content=\'中德瑞\' or content=\'中电\' or content=\'中国老板\' or content=\'中国振华\' or content=\'中江\' or content=\'中宽\' or content=\'中诺\' or content=\'中锘基雅\' or content=\'中桥\' or content=\'中天\' or content=\'中伟天\' or content=\'中信卫星\' or content=\'中兴\' or content=\'中渔\' or content=\'中轴线\' or content=\'众一\' or content=\'卓比\' or content=\'卓拉\' or content=\'卓普\' or content=\'卓尚\' or content=\'紫光海泰\' or content=\'自然派\' or content=\'节操\' or content=\'尼凯恩\' or content=\'传颂\' or content=\'读者\' or content=\'女装品牌名称\' or content=\'EW\' or content=\'LD\' or content=\'LEVISLADIES\' or content=\'UDB\' or content=\'THE\' or content=\'Y\' or content=\'巴俪锦\' or content=\'SCAT\' or content=\'KALICO\' or content=\'DND\' or content=\'MISSRIGHT\' or content=\'PERF\' or content=\'M演奏\' or content=\'SEEUSOON\' or content=\'TYT\' or content=\'PACEANGEL\' or content=\'芙蓉天使\' or content=\'Ein\' or content=\'经典故事\' or content=\'MOS\' or content=\'B2\' or content=\'TB2\' or content=\'VEEKOWANKO\' or content=\'卡莎布兰卡\' or content=\'KANGJINYOUNG\' or content=\'歌莉娅\' or content=\'G2000\' or content=\'水盈格\' or content=\'CKJEANS\' or content=\'ESPRIT\' or content=\'卡佛莲\' or content=\'NEE\' or content=\'茵佳妮\' or content=\'阿依莲\' or content=\'古谷惠\' or content=\'布布为盈\' or content=\'普色\' or content=\'狐仙\' or content=\'JC5杰西五\' or content=\'A02\' or content=\'伊可爱\' or content=\'自由鸟\' or content=\'麦考林\' or content=\'花思薇\' or content=\'遇见\' or content=\'蓝月\' or content=\'衣本色水虹\' or content=\'花木马\' or content=\'零典\' or content=\'艾可儿AIKERL\' or content=\'塔吉\' or content=\'体育品牌名称\' or content=\'耐克\' or content=\'安踏\' or content=\'百事\' or content=\'百事运动\' or content=\'赛琪\' or content=\'名乐\' or content=\'曼奴\' or content=\'李宁兴尔达\' or content=\'域图\' or content=\'百丽韬博\' or content=\'匡威\' or content=\'正大体育\' or content=\'东方神\' or content=\'361度\' or content=\'好家庭\' or content=\'泽田\' or content=\'康威\' or content=\'锐步\' or content=\'美津浓\' or content=\'ADIDAS\' or content=\'KAPPA\' or content=\'新百伦\' or content=\'斐乐\' or content=\'彪马\' or content=\'艾世克斯\' or content=\'乐途\' or content=\'双星\' or content=\'红双喜\' or content=\'茵宝\' or content=\'DIADDRA\' or content=\'惠尔德\' or content=\'康威\' or content=\'匹克\' or content=\'鸿星尔克\' or content=\'乔丹\' or content=\'特步\' or content=\'耐克360\' or content=\'THEN\' or content=\'THFACE\' or content=\'哥伦比亚\' or content=\'火狐狸\' or content=\'探路者\' or content=\'极地\' or content=\'鳄莱特\' or content=\'斯伯丁\' or content=\'YY\' or content=\'PRINCE\' or content=\'百希达\' or content=\'索牌\' or content=\'麦斯卡\' or content=\'奥得赛\' or content=\'好家庭\' or content=\'轻松伴侣\' or content=\'生命动力\' or content=\'东方神\' or content=\'OSIM\' or content=\'瀚斯宝丽\' or content=\'西纳蒙\' or content=\'哥伦比亚\' or content=\'奥索卡\' or content=\'日高\' or content=\'生活无限\' or content=\'皮鞋皮具品牌名称\' or content=\'摩斯雷\' or content=\'金利来\' or content=\'华伦天奴\' or content=\'花花公子保罗老人头\' or content=\'红晴蜓\' or content=\'沙驰\' or content=\'富贵鸟\' or content=\'七月恋人\' or content=\'迪宝阿治奥\' or content=\'芭迪\' or content=\'迪桑娜\' or content=\'思迪嘉\' or content=\'丹希路\' or content=\'卡露天尼莱斯佩斯\' or content=\'CNE莱尔诗丹\' or content=\'狄高斯\' or content=\'华伦天奴露迪\' or content=\'富贵鸟\' or content=\'哈森\' or content=\'保罗狄龙\' or content=\'澳伦\' or content=\'咪地\' or content=\'贵之步\' or content=\'Fed\' or content=\'宾度\' or content=\'爱步\' or content=\'万里马\' or content=\'花花公子\' or content=\'比莉华\' or content=\'东京\' or content=\'卡仕妮\' or content=\'恭绅\' or content=\'阿俪达\' or content=\'美丽宝\' or content=\'真美诗\' or content=\'百丽他他天美意思加图\' or content=\'浩天龙\' or content=\'老人头袋鼠\' or content=\'千百度\' or content=\'意大意登喜路\' or content=\'接吻猫\' or content=\'华伦天奴露迪\' or content=\'梦特娇\' or content=\'达芙妮\' or content=\'康莉安玛利\' or content=\'华伦天奴\' or content=\'多米尼克\' or content=\'豪行\' or content=\'妙丽\' or content=\'美人鱼伯爵夫人\' or content=\'澳德利\' or content=\'俪嘉\' or content=\'美的\' or content=\'利佳娜\' or content=\'伊奈安\' or content=\'牧羊女\' or content=\'莱尔斯丹\' or content=\'皮鞋皮具品牌名称\' or content=\'百思图\' or content=\'星期六索菲亚\' or content=\'圣伽步\' or content=\'密丝罗妮\' or content=\'皮匠世家\' or content=\'瑕步士\' or content=\'富贵鸟\' or content=\'艾曼达\' or content=\'高琪KUKU\' or content=\'卡丹路\' or content=\'皮尔卡丹\' or content=\'富丽达\' or content=\'宝曼妮\' or content=\'花花公子\' or content=\'小美\' or content=\'特丰鸟\' or content=\'爵根仕\' or content=\'阿俪达\' or content=\'与狼共舞\' or content=\'维多利保罗\' or content=\'圣大保罗沙驰\' or content=\'猫与老鼠\' or content=\'曼妮诗\' or content=\'老爷车\' or content=\'老人头袋鼠\' or content=\'金鱼保罗\' or content=\'华伦天奴艾米力欧\' or content=\'华伦天奴露迪\' or content=\'华伦天奴\' or content=\'花花公子宾奴\' or content=\'鳄鱼\' or content=\'安特丽\' or content=\'BOSSBABI\' or content=\'金利来佛里欧有伊鳄鱼\' or content=\'女装品牌名称\' or content=\'埃米雅文\' or content=\'稀\' or content=\'玛丝菲尔SU\' or content=\'玛丝菲尔\' or content=\'MissK\' or content=\'YIGUE\' or content=\'ALAAur\' or content=\'a\' or content=\'Bloomsbury\' or content=\'onon\' or content=\'sisley\' or content=\'23区\' or content=\'Fairyfair\' or content=\'P\' or content=\'TS\' or content=\'amelie\' or content=\'ninewest\' or content=\'BuouBuou\' or content=\'XLMS\' or content=\'OTT\' or content=\'贝拉维拉\' or content=\'Helloketty\' or content=\'花木马\' or content=\'邓晧\' or content=\'昊艺\' or content=\'朵兰帝\' or content=\'衡韵\' or content=\'影儿国际\' or content=\'白领风采\' or content=\'忆玫\' or content=\'声雨竹\' or content=\'李红\' or content=\'娜尔思\' or content=\'哥弟\' or content=\'伊品\' or content=\'莱姿\' or content=\'千师达\' or content=\'帕丝特\' or content=\'蕾朵\' or content=\'贝特丽诗\' or content=\'baccabocca\' or content=\'BREADNBUTTER\' or content=\'QUA\' or content=\'JESSIMODA\' or content=\'LILY\' or content=\'南梦\' or content=\'Sevenshow\' or content=\'圣迪奥\' or content=\'OASIS\' or content=\'BUSKUS宝丝露\' or content=\'奢爱\' or content=\'SEFON臣枫\' or content=\'INOW\' or content=\'BABYFOX\' or content=\'NOVO次主力店\' or content=\'休闲品牌名称\' or content=\'蓝色天空\' or content=\'嘉意\' or content=\'花花公子\' or content=\'丹迪斯\' or content=\'以纯\' or content=\'保斯特\' or content=\'潮流前线\' or content=\'自由鸟\' or content=\'佐丹奴\' or content=\'康妮雅\' or content=\'异乡人\' or content=\'真维斯\' or content=\'猛龙\' or content=\'宝斯特\' or content=\'飞鱼\' or content=\'依米奴\' or content=\'ESPRIT\' or content=\'麦仕威\' or content=\'威格\' or content=\'与狼共舞\' or content=\'苹果牛仔\' or content=\'GSTAR\' or content=\'MECITY\' or content=\'QUIKSILVER\' or content=\'MOLYHOLY\' or content=\'SMITHS\' or content=\'骆驼\' or content=\'马克华菲\' or content=\'思莱德\' or content=\'TONYJONES\' or content=\'万宝路\' or content=\'GXG\' or content=\'TOUCH牛仔\' or content=\'JC\' or content=\'RIVERSTONE\' or content=\'CANTATE\' or content=\'ISO\' or content=\'HOZ\' or content=\'盈彩美地\' or content=\'格尔马菲\' or content=\'CHEVIGNON\' or content=\'雪鲨\' or content=\'威格\' or content=\'第五街\' or content=\'U2\' or content=\'雅韵\' or content=\'安诺庞玛\' or content=\'皮尔卡丹\' or content=\'与狼共舞\' or content=\'体育品牌名称\' or content=\'生活无限\' or content=\'极地\' or content=\'百福全\' or content=\'倍轻松\' or content=\'可口可乐\' or content=\'够那\' or content=\'迪亚多纳\' or content=\'EXR\' or content=\'AND1\' or content=\'RAPIDO\' or content=\'皮鞋皮具品牌名称\' or content=\'老人头\' or content=\'丹希路\' or content=\'豪麟\' or content=\'金利来\' or content=\'SKAP\' or content=\'爵根仕\' or content=\'多米尼克\' or content=\'迪宝\' or content=\'马飞仕图\' or content=\'GEOX\' or content=\'宾度\' or content=\'沙驰\' or content=\'卓凡尼华伦天奴\' or content=\'FATO\' or content=\'暇步士\' or content=\'其乐\' or content=\'莱尔斯丹\' or content=\'磨里斯基\' or content=\'卡丹路\' or content=\'ECCO\' or content=\'哈森\' or content=\'阿兰德隆\' or content=\'阿里巴巴\' or content=\'华伦天奴\' or content=\'新秀丽\' or content=\'森泰斯\' or content=\'花花公子\' or content=\'巴黎世家\' or content=\'丹尼爱特\' or content=\'皇冠箱\' or content=\'鳄鱼恤\' or content=\'老人头\' or content=\'金利来\' or content=\'皇冠包\' or content=\'伊莱莲\' or content=\'贝蒂\' or content=\'梦特娇鄂鱼恤花花公子\' or content=\'汤姆猫杰利鼠\' or content=\'中国娃娃\' or content=\'雷洛斯\' or content=\'黑眼睛\' or content=\'韩国树一派\' or content=\'与狼共舞\' or content=\'逸格\' or content=\'金利来保罗名莎佛里欧莱茜雅\' or content=\'刘文爵\' or content=\'PTNS\' or content=\'万里马\' or content=\'华伦天奴乔登法国登喜路世家\' or content=\'丽天妮\' or content=\'马莲奴登喜世家\' or content=\'欧玖珂\' or content=\'老人头\' or content=\'波士芭比\' or content=\'老皮匠\' or content=\'皮鞋皮具品牌名称\' or content=\'狄狮劳\' or content=\'宾奴\' or content=\'城市生活\' or content=\'巴黎世家\' or content=\'女装品牌名称\' or content=\'AMASS\' or content=\'积高\' or content=\'法路易娜\' or content=\'雅贝菲斯\' or content=\'JoeJules\' or content=\'TB2\' or content=\'Nice\' or content=\'COLOUR18\' or content=\'twoctv\' or content=\'WHOIAM\' or content=\'kalico\' or content=\'COOLLADY\' or content=\'OBO\' or content=\'GMD\' or content=\'HIRST\' or content=\'678月\' )  ','segment') 
limit 10;




select 
    size(collect_set(r[0])) as dist_sex,
    size(collect_set(r[1])) as dist_province,
    count(*) as cnt,
    count(r[2]) as cnt_long,
    count(distinct r[2]) as dist_long
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,amtlong from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\'  ','segment') 
limit 10;


select 
    r[0] as ydb_sex, 
    size(collect_set(r[1])) as dist_province,
    count(*) as cnt,
    count(r[2]) as cnt_long,
    count(distinct r[2]) as dist_long
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,amtlong from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\'  ','segment')
group by r[0]
limit 10;


 select HPHM ,cnt from 
(
    select 
        HPHM,
        Yorbit_notfound('201604290100:6,10000000:0|201604290101:6,10000001:0|201604290102:6,10000002:0',cast(JGSJ as bigint),cast (KKBH as bigint)) as cnt
    from (
            select 
                r[0] as HPHM,
                r[1] as JGSJ,
                r[2] as KKBH
            from ydb where YSQL('from','select HPHM,JGSJ,KKBH from ydb_oribit where ydbpartion = \'20160619\' and ( (JGSJ=\'201604290100\'  and KKBH=\'10000000\') or (JGSJ=\'201604290101\'  and KKBH=\'10000001\') or (JGSJ=\'201604290102\'  and KKBH=\'10000002\')) ','segment') 
    ) tmp1  
    group by tmp1.HPHM
) tmp 
where tmp.cnt<=0 limit 10;

select 
    r[0] as tollCode,
    r[1] as vehiclePlate
from 
    ydb where YSQL('from','select tollCode,vehiclePlate from vehiclepass where ydbpartion = \'3000w\' ','segment') 
limit 100;


select k21.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'1\'  ','segment')
    ) k1
    LEFT SEMI JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'2\'  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT SEMI JOIN 
(
    select r[0] as vehiclePlate from 
    ydb2 where YSQL('from ydb2','select vehiclePlate,tollCode from vehiclepass  where ydbpartion = \'3000w\' and tollCode=\'3\' ','segment')
 ) k22 on k21.vehiclePlate=k22.vehiclePlate ;
 

select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'1\'  ','segment')
    ) k1
    LEFT JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'2\'  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
    select r[0] as vehiclePlate from 
    ydb2 where YSQL('from ydb2','select vehiclePlate,tollCode from vehiclepass  where ydbpartion = \'3000w\' and tollCode=\'3\' ','segment')
 ) k22 on k21.vehiclePlate=k22.vehiclePlate ;


select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'1\'  ','segment')
    ) k1
    LEFT SEMI JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'2\'  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
    select r[0] as vehiclePlate from 
    ydb2 where YSQL('from ydb2','select vehiclePlate,tollCode from vehiclepass  where ydbpartion = \'3000w\' and tollCode=\'3\' ','segment')
 ) k22 on k21.vehiclePlate=k22.vehiclePlate ;


  select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'1\'  ','segment')
    ) k1
    LEFT SEMI JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'2\'  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate);


  select  k1.vehiclePlate as vehiclePlate,k2.vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'1\'  ','segment')
    ) k1
    LEFT JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'2\'  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate);





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
        min(cast(r[5] as string)) as minprov,
        max(cast(r[6] as string)) as maxprov
    from ydb where 
    YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where   ydbpartion in (  \'3000w0\',\'3000w1\' ,\'3000w2\',\'3000w3\',\'3000w4\',\'3000w5\',\'3000w6\',\'3000w7\',\'3000w8\',\'3000w9\',\'3000w10\' ,\'3000w11\',\'3000w12\',\'3000w13\',\'3000w14\',\'3000w15\' ,\'3000w16\'  ,\'3000w17\',\'3000w18\',\'3000w19\'
,\'3000a0\',\'3000a1\' ,\'3000a2\',\'3000a3\',\'3000a4\',\'3000a5\',\'3000a6\',\'3000a7\',\'3000a8\',\'3000a9\',\'3000a10\' ,\'3000a11\',\'3000a12\',\'3000a13\',\'3000a14\',\'3000a15\' ,\'3000a16\'  ,\'3000a17\',\'3000a18\',\'3000a19\' 
,\'3000b0\',\'3000b1\' ,\'3000b2\',\'3000b3\',\'3000b4\',\'3000b5\',\'3000b6\',\'3000b7\',\'3000b8\',\'3000b9\',\'3000b10\' ,\'3000b11\',\'3000b12\',\'3000b13\',\'3000b14\',\'3000b15\' ,\'3000b16\'  ,\'3000b17\',\'3000b18\',\'3000b19\' 

) ','segment')

)tmp

 limit 10;
 

select sum(cast(r[0] as bigint)) as cnt from 
ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment')
 
union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb1 where YSQL('from ydb1','select count(*) from ydb_example_shu where ydbpartion=\'300winsert\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb2 where YSQL('from ydb2','select count(*) from ydb_example_shu where ydbpartion=\'300winsert2\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb3 where YSQL('from ydb3','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb4 where YSQL('from ydb4','select count(*) from ydb_example_trade where ydbpartion=\'20151011\'   and content=\'工商银行\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb5 where YSQL('from ydb5','select count(*) from ydb_example_trade where ydbpartion=\'20151011\' ','segment')  limit 100;


select sum(cast(r[0] as bigint)) as cnt from 
ydb where YSQL('from ydb','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment')
 
union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb1 where YSQL('from ydb1','select count(*) from ydb_example_shu where ydbpartion=\'300winsert\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb2 where YSQL('from ydb2','select count(*) from ydb_example_shu where ydbpartion=\'300winsert2\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb3 where YSQL('from ydb3','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb4 where YSQL('from ydb4','select count(*) from ydb_example_trade where ydbpartion=\'20151011\'   and content=\'工商银行\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb5 where YSQL('from ydb5','select count(*) from ydb_example_trade where ydbpartion=\'20151011\' ','segment') limit 100;



select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb where YSQL('from','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'旺旺\'  ','segment')
 
union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb1 where YSQL('from ydb1','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\'  ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb2 where YSQL('from ydb2','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'汇源\'  ','segment') 


union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb3 where YSQL('from ydb3','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'哇哈哈\'  ','segment') 


union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb4 where YSQL('from ydb4','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\'  ','segment') limit 100;



select r as r from 
ydb where YSQL('from','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'旺旺\' order by amtlong desc limit 0,1 ','segment')
 
union all
select r as r from 
ydb1 where YSQL('from ydb1','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\' order by amtlong desc limit 0,1 ','segment') 

union all
select r as r from 
ydb2 where YSQL('from ydb2','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'汇源\' order by amtlong desc limit 0,1 ','segment') 


union all
select r as r from 
ydb3 where YSQL('from ydb3','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'哇哈哈\' order by amtlong desc limit 0,1 ','segment')  limit 1000;









select sum(cast(r[0] as bigint)) as cnt from 
ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
limit 10;



select r[0],r[1],r[2],r[3],r[4],r[5],r[6],r[7],r[8],r[9],r[10],r[11],r[12],r[13],r[14] from 
ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
limit 10;


select r[0],r[1] from ydb where YSQL('from','select content,usernick from ydb_example_shu where ydbpartion=\'3000w\' and content=\'王老吉\' ','segment') limit 100;

select r[0],r[1] from ydb where YSQL('from','Ycode@select+content%2Cusernick+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+and+content%3D%27%E7%8E%8B%E8%80%81%E5%90%89%27','segment') limit 100;



select r[0],r[1],r[2],r[3],r[4] from ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where ydbpartion=\'3000w\'  and ydb_sex=\'女\' and ydb_grade=\'本科\' and (ydb_age=\'20到30岁\' or ydb_blood=\'O\') and  (amtlong like \'([3000 TO 4000] )\') ','segment') limit 100;

select r from ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where ydbpartion=\'3000w\'  and ydb_sex=\'女\' and ydb_grade=\'本科\' and (ydb_age=\'20到30岁\' or ydb_blood=\'O\') and  (amtlong like \'([3000 TO 4000] )\') ','segment') limit 100;


select 
    sum(cast(r[0] as bigint)) as cnt,
    sum(cast(r[1] as bigint)) as cntamt,
    sum(cast(r[2] as double)) as sumamt,
    min(cast(r[3] as double)) as minamt,
    max(cast(r[4] as double)) as maxamt,
    min(r[5]) as minprov,
    max(r[6]) as maxprov
from 
ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\'  ','segment')
limit 10;


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
    from ydb where 
    YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\'  ','segment')

)tmp

 limit 10;



select r[0], r[1],sum(cast(r[2] as bigint)) as cnt,sum(cast(r[3] as bigint)),sum(cast(r[4] as double))  from ydb where 
YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_sex,ydb_province  ','segment') 

group by r[0], r[1]  order by cnt desc 
limit 10;



select ydb_sex, phonenum,amtlong,amtdouble from 
(
    select r[0] as ydb_sex,r[1] as phonenum,cast(r[2] as bigint) as amtlong,cast(r[3] as double) as amtdouble from ydb where 
    YSQL('from','select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion=\'3000w\'  order by amtdouble desc ,amtlong limit 10 ','segment')
)tmp order by amtdouble desc ,amtlong  limit 10;


select ydb_sex, phonenum,amtlong,amtdouble from 
(
    select r[0] as ydb_sex,r[1] as phonenum,cast(r[2] as bigint) as amtlong,cast(r[3] as double) as amtdouble from ydb where 
    YSQL('from','Ycode@select+ydb_sex%2C+phonenum%2Camtlong%2Camtdouble+from+ydb_example_shu+where+ydbpartion%3D%273000w%27++order+by+amtdouble+desc+%2Camtlong+limit+10','segment')
)tmp order by amtdouble desc ,amtlong  limit 10;







select sum(cast(r[0] as bigint)) as cnt from 
ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
limit 10;




select r[0],r[1],r[2],r[3],r[4],r[5],r[6],r[7],r[8],r[9],r[10],r[11],r[12],r[13],r[14] from 
ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
limit 10;





select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;

----多个ydb分区数据一起检索###
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion in ("3000w","300winsert","300winsert2","test1","test3") ','segment') 
limit 10;

----数据预览
select 
    r[0] as phone,
    r[1] as usernick,
    r[2] as ydb_sex,
    r[3] as ydb_province ,
    r[4] as ydb_grade,
    r[5] as ydb_age,
    r[6] as ydb_blood,
    r[7] as ydb_zhiye,
    r[8] as ydb_earn,
    r[9] as ydb_prefer,
    r[10] as ydb_consume,
    r[11] as ydb_day,
    r[12] as amtdouble,
    r[13] as amtlong,
    r[14] as content
from 
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;



----全文检索
select 
    r[0] as content,
    r[1] as usernick 
from 
    ydb where YSQL('from','select content,usernick from ydb_example_shu where ydbpartion="3000w" and content="王老吉" ','segment') 
limit 100;

----如果SQL比较复杂，可以通过Ycode@进行urlencode编码
select 
    r[0] as content,
    r[1] as usernick 
from
    ydb where YSQL('from','Ycode@select+content%2Cusernick+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+and+content%3D%27%E7%8E%8B%E8%80%81%E5%90%89%27','segment') 
limit 100;

----多个条件组合过滤
select 
    r[0] as ydb_sex,
    r[1] as ydb_grade,
    r[2] as ydb_age,
    r[3] as ydb_blood,
    r[4] as amtlong
from 
    ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where ydbpartion="3000w"  and ydb_sex="女" and ydb_grade="本科" and (ydb_age="20到30岁" or ydb_blood="O") and  (amtlong like "([3000 TO 4000] )") ','segment') 
limit 100;


----sum求和
select sum(cast(r[0] as bigint)) as sumamtdouble from 
    ydb where YSQL('from','select sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" ','segment') 
limit 10;

----avg求平均数
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


----更复杂点的统计
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
        ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = "3000w"  ','segment')
)tmp
 limit 10;
 
----单列group by
select 
    r[0] as ydb_sex,
    sum(cast(r[1] as bigint)) as cnt,
    sum(cast(r[2] as bigint)) as cntamt,
    sum(cast(r[3] as double)) as sumamt
from 
    ydb where YSQL('from','select ydb_sex,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = "3000w" group by ydb_sex  ','segment') 
group by r[0]  order by cnt desc 
limit 10;

----多列group by
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

----top N 排序
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
order by amtdouble desc ,amtlong  
limit 10;



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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string),c4_string from ydb_all_type where ydbpartion=\'3000w\' group by c4_string  ','segment')
group by r[93]  order by amtdouble desc
limit 10;


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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string),c2_long,c1_float from ydb_all_type where ydbpartion=\'3000w\' group by c2_long,c1_float  ','segment')
group by r[93],r[94]  order by amtdouble desc
limit 10;



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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string),c4_string,c1_long,c2_float,c3_double from ydb_all_type where ydbpartion=\'3000w\' group by c4_string,c1_long,c2_float,c3_double  ','segment')
group by r[93],r[94],r[95],r[96]  order by amtdouble desc
limit 10;


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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string),c4_double from ydb_all_type where ydbpartion=\'3000w\' group by c4_double  ','segment')
group by r[93]  order by amtdouble desc
limit 10;


 
select 
    r[0] as content,
    r[1] as usernick 
from 
    ydb where YSQL('from','select content,usernick from ydb_example_shu where ydbpartion=\'3000w\' and ydb_raw_query_s like \'content:王老吉\' ','segment') 
limit 100;
 
 
select 
    r[0] as content,
    r[1] as usernick 
from 
    ydb where YSQL('from','select content,usernick from ydb_example_shu where ydbpartion=\'3000w\' and ydb_code_query_s like \'content%3A%E7%8E%8B%E8%80%81%E5%90%89\' ','segment') 
limit 100;
 
 
 
 
 select sum(cast(r[0] as bigint)) as cnt from 
     ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'刘博涛\' ','segment') 
 limit 10;
 
 
 
 select sum(cast(r[0] as bigint)) as cnt from 
     ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and  content = \'王老吉\'and ( ( amtdouble like \'({5 TO 10} )\') or ( amtlong like \'({5 TO 10} )\')  ) and ((phonenum =\'273\') or ydb_province=\'北京\' or ydb_blood=\'O\' or ydb_zhiye=\'IT\' or ydb_prefer=\'电影\' or usernick=\'刘博涛\') and ydb_sex=\'男\' and ydb_day=\'20160311\'  ','segment') 
 limit 10;
 
 select sum(cast(r[0] as bigint)) as cnt,
         sum(cast(r[1] as bigint)) as cntamt,
         sum(cast(r[2] as double)) as sumamt,
         min(cast(r[3] as double)) as minamt,
         max(cast(r[4] as double)) as maxamt,
         min(r[5]) as minprov,
         max(r[6]) as maxprov from 
     ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
 limit 10;
 
 
 select sum(cast(r[0] as bigint)) as cnt,
         sum(cast(r[1] as bigint)) as cntamt,
         sum(cast(r[2] as double)) as sumamt,
         min(cast(r[3] as double)) as minamt,
         max(cast(r[4] as double)) as maxamt,
         min(r[5]) as minprov,
         max(r[6]) as maxprov from 
     ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'刘博涛\' ','segment') 
 limit 10;
 
 
 select sum(cast(r[0] as bigint)) as cnt,
         sum(cast(r[1] as bigint)) as cntamt,
         sum(cast(r[2] as double)) as sumamt,
         min(cast(r[3] as double)) as minamt,
         max(cast(r[4] as double)) as maxamt,
         min(r[5]) as minprov,
         max(r[6]) as maxprov from 
     ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\' and  content = \'王老吉\'and ( ( amtdouble like \'({5 TO 10} )\') or ( amtlong like \'({5 TO 10} )\')  ) and ((phonenum =\'273\') or ydb_province=\'北京\' or ydb_blood=\'O\' or ydb_zhiye=\'IT\' or ydb_prefer=\'电影\' or usernick=\'刘博涛\') and ydb_sex=\'男\' and ydb_day=\'20160311\'  ','segment') 
 limit 10;
 
 select r[0] as ydb_sex,r[1] as ydb_grade,r[2] as ydb_blood,r[3] as ydb_zhiye,r[4] as ydb_province,
         sum(cast(r[5] as bigint)) as cnt,
         sum(cast(r[6] as bigint)) as cntamt,
         sum(cast(r[7] as double)) as sumamt,
         min(cast(r[8] as double)) as minamt,
         max(cast(r[9] as double)) as maxamt,
         min(r[10]) as minprov,
         max(r[11]) as maxprov from 
     ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_blood,ydb_zhiye,ydb_province,count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_sex,ydb_grade,ydb_blood,ydb_zhiye,ydb_province ','segment') 
 group by r[0],r[1],r[2],r[3],r[4] order by cnt desc
 limit 10;
 
 select r[0] as ydb_sex,r[1] as ydb_grade,r[2] as ydb_blood,r[3] as ydb_zhiye,r[4] as ydb_province,
         sum(cast(r[5] as bigint)) as cnt,
         sum(cast(r[6] as bigint)) as cntamt,
         sum(cast(r[7] as double)) as sumamt,
         min(cast(r[8] as double)) as minamt,
         max(cast(r[9] as double)) as maxamt,
         min(r[10]) as minprov,
         max(r[11]) as maxprov from 
     ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_blood,ydb_zhiye,ydb_province,count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'刘博涛\' group by ydb_sex,ydb_grade,ydb_blood,ydb_zhiye,ydb_province ','segment') 
 group by r[0],r[1],r[2],r[3],r[4] order by cnt desc
 limit 10;
 
 

 select r[0] as ydb_sex,r[1] as ydb_grade,r[2] as ydb_blood,r[3] as ydb_zhiye,r[4] as ydb_province,
         sum(cast(r[5] as bigint)) as cnt,
         sum(cast(r[6] as bigint)) as cntamt,
         sum(cast(r[7] as double)) as sumamt,
         min(cast(r[8] as double)) as minamt,
         max(cast(r[9] as double)) as maxamt,
         min(r[10]) as minprov,
         max(r[11]) as maxprov from 
     ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_blood,ydb_zhiye,ydb_province,count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\' and  content = \'王老吉\'and ( ( amtdouble like \'({5 TO 10} )\') or ( amtlong like \'({5 TO 10} )\')  ) and ((phonenum =\'273\') or ydb_province=\'北京\' or ydb_blood=\'O\' or ydb_zhiye=\'IT\' or ydb_prefer=\'电影\' or usernick=\'刘博涛\') and ydb_sex=\'男\' and ydb_day=\'20160311\' group by ydb_sex,ydb_grade,ydb_blood,ydb_zhiye,ydb_province ','segment') 
 group by r[0],r[1],r[2],r[3],r[4] order by cnt desc limit 10;
 
 select 
     r[0] as phone,
     r[1] as usernick,
     r[2] as ydb_sex,
     r[3] as ydb_province ,
     r[4] as ydb_grade,
     r[5] as ydb_age,
     r[6] as ydb_blood,
     r[7] as ydb_zhiye,
     r[8] as ydb_earn,
     r[9] as ydb_prefer,
     r[10] as ydb_consume,
     r[11] as ydb_day,
     r[12] as amtdouble,
     r[13] as amtlong,
     r[14] as content
 from 
     ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\'   order by amtdouble desc ,amtlong limit 10 ','segment') 
  order by amtdouble desc ,amtlong limit 10;
 
  select r[0] as phone, r[1] as usernick, r[2] as ydb_sex, r[3] as ydb_province , r[4] as ydb_grade,
     r[5] as ydb_age,
     r[6] as ydb_blood,
     r[7] as ydb_zhiye,
     r[8] as ydb_earn,
     r[9] as ydb_prefer,
     r[10] as ydb_consume,
     r[11] as ydb_day,
     r[12] as amtdouble,
     r[13] as amtlong,
     r[14] as content
 from 
     ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\'  and content=\'刘博涛\'  order by amtdouble desc ,amtlong limit 10 ','segment') 
  order by amtdouble desc ,amtlong limit 10;
  
  

 
  
  select     r[0] as phone,    r[1] as usernick,    r[2] as ydb_sex,
     r[3] as ydb_province ,    r[4] as ydb_grade,    r[5] as ydb_age,    r[6] as ydb_blood,
     r[7] as ydb_zhiye,    r[8] as ydb_earn,    r[9] as ydb_prefer,    r[10] as ydb_consume,    r[11] as ydb_day,    r[12] as amtdouble,    r[13] as amtlong,    r[14] as content
 from 
     ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content = \'王老吉\'and ( ( amtdouble like \'({5 TO 10} )\') or ( amtlong like \'({5 TO 10} )\')  ) and ((phonenum =\'273\') or ydb_province=\'北京\' or ydb_blood=\'O\' or ydb_zhiye=\'IT\' or ydb_prefer=\'电影\' or usernick=\'刘博涛\') and ydb_sex=\'男\' and ydb_day=\'20160311\'  order by amtdouble desc ,amtlong limit 10 ','segment') 
  order by amtdouble desc ,amtlong limit 10;
  
 
 

select ydb_sex,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_province,cnt,cntamt,sumamt)))) from (
select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]

)tmp  group by ydb_sex limit 10;



select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_sex,cnt,cntamt,sumamt)))) from (
select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]

)tmp  group by ydb_province order by scnt desc limit 10;




select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (
select 
    r[0] as ydb_blood, 
    r[1] as ydb_sex, 
    r[2] as ydb_province,
    sum(cast(r[3] as bigint)) as cnt,
    sum(cast(r[4] as bigint)) as cntamt
from 
    ydb where YSQL('from','select ydb_blood,ydb_sex,ydb_province,count(*),count(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_blood,ydb_sex,ydb_province  ','segment') 
group by r[0], r[1], r[2]

)tmp  group by ydb_province order by scnt desc limit 10;



select ydb_day,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt,cntamt)))) from (
select 
    r[0] as ydb_day, 
    r[1] as ydb_sex, 
    r[2] as ydb_blood,
    sum(cast(r[3] as bigint)) as cnt,
    sum(cast(r[4] as bigint)) as cntamt
from 
    ydb where YSQL('from','select ydb_day,ydb_sex,ydb_blood,count(*),count(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_day,ydb_sex,ydb_blood  ','segment') 
group by r[0], r[1], r[2]

)tmp  group by ydb_day order by scnt desc limit 10;



---以下为旧版写法示例


select ydb_sex,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,cnt)))) from (
    select ydb_sex, ydb_blood,Ycount('*',ya100_pipe) as cnt from ydb_example_shu where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe) and   Ycombine('ydb_example_shu','*',ya100_pipe) group by ydb_sex, ydb_blood  
) tmp  group by ydb_sex limit 10;

select ydb_day,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt)))) from (
    select ydb_day,ydb_sex,ydb_blood,Ycount('*',ya100_pipe) as cnt from ydb_example_shu where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe) and   Ycombine('ydb_example_shu','*',ya100_pipe) group by ydb_day,ydb_sex,ydb_blood  
)tmp  group by ydb_day order by scnt desc limit 10;

select ydb_province,sum(cnt) as scnt,concat_ws('#', sort_array(collect_set(concat_ws(',',ydb_blood,ydb_sex,cnt)))) from (
    select ydb_blood,ydb_sex,ydb_province,Ycount('*',ya100_pipe) as cnt from ydb_example_shu where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe) and   Ycombine('ydb_example_shu','*',ya100_pipe) group by ydb_blood,ydb_sex,ydb_province  
)tmp  group by ydb_province order by scnt desc limit 10;


select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu ','segment') 
limit 10;

select 
    r[0] as phone,
    r[1] as usernick,
    r[2] as ydb_sex,
    r[3] as ydb_province ,
    r[4] as ydb_grade,
    r[5] as ydb_age,
    r[6] as ydb_blood,
    r[7] as ydb_zhiye,
    r[8] as ydb_earn,
    r[9] as ydb_prefer,
    r[10] as ydb_consume,
    r[11] as ydb_day,
    r[12] as amtdouble,
    r[13] as amtlong,
    r[14] as content
from 
    ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
limit 10;


select 
    r[0] as content,
    r[1] as usernick 
from 
    ydb where YSQL('from','select content,usernick from ydb_example_shu where  content=\'王老吉\' ','segment') 
limit 100;



select 
    r[0] as ydb_sex,
    r[1] as ydb_grade,
    r[2] as ydb_age,
    r[3] as ydb_blood,
    r[4] as amtlong
from 
    ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where  ydb_sex=\'女\' and ydb_grade=\'本科\' and (ydb_age=\'20到30岁\' or ydb_blood=\'O\') and  (amtlong like \'([3000 TO 4000] )\') ','segment') 
limit 100;


select sum(cast(r[0] as bigint)) as sumamtdouble from 
    ydb where YSQL('from','select sum(amtdouble) from ydb_example_shu  ','segment') 
limit 10;

select 
    tmp.cntamt,
    tmp.sumamt,
    case when tmp.cntamt>0 then tmp.sumamt/tmp.cntamt else 0 end as avgamt
from (
    select 
        sum(cast(r[0] as bigint)) as cntamt,
        sum(cast(r[1] as double)) as sumamt
    from 
        ydb where YSQL('from','select count(amtdouble),sum(amtdouble) from ydb_example_shu  ','segment')

)tmp
limit 10;


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
        ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu   ','segment')
)tmp
 limit 10;
 
select 
    r[0] as ydb_sex,
    sum(cast(r[1] as bigint)) as cnt,
    sum(cast(r[2] as bigint)) as cntamt,
    sum(cast(r[3] as double)) as sumamt
from 
    ydb where YSQL('from','select ydb_sex,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu  group by ydb_sex  ','segment') 
group by r[0]  order by cnt desc 
limit 10;

select 
    r[0] as ydb_sex, 
    r[1] as ydb_province,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu  group by ydb_sex,ydb_province  ','segment') 
group by r[0], r[1]  order by cnt desc 
limit 10;

select ydb_sex, phonenum,amtlong,amtdouble from 
(
    select 
        r[0] as ydb_sex,
        r[1] as phonenum,
        cast(r[2] as bigint) as amtlong,
        cast(r[3] as double) as amtdouble 
    from 
        ydb where YSQL('from','select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu  order by amtdouble desc ,amtlong limit 10 ','segment')
)tmp 
order by amtdouble desc ,amtlong  
limit 10;




select 
    r[0] as usernick, 
    r[1] as amtlong,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select usernick,amtlong,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by usernick,amtlong  ','segment') 
group by r[0], r[1]  order by cnt desc  ,sumamt desc 
limit 30;




select 
    r[0] as usernick, 
    r[1] as amtdouble,
    sum(cast(r[2] as bigint)) as cnt,
    sum(cast(r[3] as bigint)) as cntamt,
    sum(cast(r[4] as double)) as sumamt 
from 
    ydb where YSQL('from','select usernick,amtdouble,count(*),count(amtlong),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' group by usernick,amtdouble  ','segment') 
group by r[0], r[1]  order by cnt desc,sumamt desc 
limit 10;



select 
    r[0] as usernick, 
    r[1] as amtdouble,
    r[2] as ydb_day,
    r[3] as amtlong,
    sum(cast(r[4] as double)) as cnt 
from 
    ydb where YSQL('from','select usernick,amtdouble,ydb_day,amtlong,count(*) from ydb_example_shu where ydbpartion = \'3000w\' group by usernick,amtdouble,ydb_day,amtlong  ','segment') 
group by r[0],r[1],r[2],r[3]  order by cnt desc,usernick asc ,ydb_day desc 
limit 20;


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
        sum(cast(r[77] as double)),sum(cast(r[78] as double)),max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string) from ydb_all_type where ydbpartion=\'3000w\'   ','segment')
limit 10;

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
        sum(cast(r[77] as double)),sum(cast(r[78] as double)),max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(d1_byte),sum(d1_byte),max(d1_byte),min(d1_byte),count(d2_byte),sum(d2_byte),max(d2_byte),min(d2_byte),count(d1_short),sum(d1_short),max(d1_short),min(d1_short),count(d2_short),sum(d2_short),max(d2_short),min(d2_short),count(d1_int),sum(d1_int),max(d1_int),min(d1_int),count(d2_int),sum(d2_int),max(d2_int),min(d2_int),count(d3_int),sum(d3_int),max(d3_int),min(d3_int),count(d4_int),sum(d4_int),max(d4_int),min(d4_int),count(d1_long),sum(d1_long),max(d1_long),min(d1_long),count(d2_long),sum(d2_long),max(d2_long),min(d2_long),count(d3_long),sum(d3_long),max(d3_long),min(d3_long),count(d4_long),sum(d4_long),max(d4_long),min(d4_long),count(d1_float),sum(d1_float),max(d1_float),min(d1_float),count(d2_float),sum(d2_float),max(d2_float),min(d2_float),count(d3_float),sum(d3_float),max(d3_float),min(d3_float),count(d4_float),sum(d4_float),max(d4_float),min(d4_float),count(d1_double),sum(d1_double),max(d1_double),min(d1_double),count(d2_double),sum(d2_double),max(d2_double),min(d2_double),count(d3_double),sum(d3_double),max(d3_double),min(d3_double),count(d4_double),sum(d4_double),max(d4_double),min(d4_double),count(d1_string),max(d1_string),min(d1_string),count(d2_string),max(d2_string),min(d2_string),count(d3_string),max(d3_string),min(d3_string),count(d4_string),max(d4_string),min(d4_string) from ydb_all_type where ydbpartion=\'3000w\'   ','segment')
limit 10 ;

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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string),d4_double from ydb_all_type where ydbpartion=\'3000w\' group by d4_double  ','segment')
group by r[93]  order by amtdouble desc
limit 10;


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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string),d4_string from ydb_all_type where ydbpartion=\'3000w\' group by d4_string  ','segment')
group by r[93]  order by amtdouble desc
limit 10;

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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string),d2_long,d1_float from ydb_all_type where ydbpartion=\'3000w\' group by d2_long,d1_float  ','segment')
group by r[93],r[94]  order by amtdouble desc
limit 10;


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
        sum(cast(r[41] as double)),sum(cast(r[42] as double)),max(cast(r[43] as double)),min(cast(r[44] as double)),
        sum(cast(r[45] as double)),sum(cast(r[46] as double)),max(cast(r[47] as double)),min(cast(r[48] as double)),
        sum(cast(r[49] as double)),sum(cast(r[50] as double)),max(cast(r[51] as double)),min(cast(r[52] as double)),
        sum(cast(r[53] as double)),sum(cast(r[54] as double)),max(cast(r[55] as double)),min(cast(r[56] as double)),
        sum(cast(r[57] as double)),sum(cast(r[58] as double)),max(cast(r[59] as double)),min(cast(r[60] as double)),
        sum(cast(r[61] as double)),sum(cast(r[62] as double)),max(cast(r[63] as double)),min(cast(r[64] as double)),
        sum(cast(r[65] as double)),sum(cast(r[66] as double)),max(cast(r[67] as double)),min(cast(r[68] as double)),
        sum(cast(r[69] as double)),sum(cast(r[70] as double)),max(cast(r[71] as double)),min(cast(r[72] as double)),
        sum(cast(r[73] as double)),sum(cast(r[74] as double)),max(cast(r[75] as double)),min(cast(r[76] as double)),
        sum(cast(r[77] as double)),sum(cast(r[78] as double)) as amtdouble,max(cast(r[79] as double)),min(cast(r[80] as double)),
        sum(cast(r[81] as string)),max(cast(r[82] as string)),min(cast(r[83] as string)),
        sum(cast(r[84] as string)),max(cast(r[85] as string)),min(cast(r[86] as string)),
        sum(cast(r[87] as string)),max(cast(r[88] as string)),min(cast(r[89] as string)),
        sum(cast(r[90] as string)),max(cast(r[91] as string)),min(cast(r[92] as string))
    from 
        ydb where YSQL('from','select count(*),count(c1_byte),sum(c1_byte),max(c1_byte),min(c1_byte),count(c2_byte),sum(c2_byte),max(c2_byte),min(c2_byte),count(c1_short),sum(c1_short),max(c1_short),min(c1_short),count(c2_short),sum(c2_short),max(c2_short),min(c2_short),count(c1_int),sum(c1_int),max(c1_int),min(c1_int),count(c2_int),sum(c2_int),max(c2_int),min(c2_int),count(c3_int),sum(c3_int),max(c3_int),min(c3_int),count(c4_int),sum(c4_int),max(c4_int),min(c4_int),count(c1_long),sum(c1_long),max(c1_long),min(c1_long),count(c2_long),sum(c2_long),max(c2_long),min(c2_long),count(c3_long),sum(c3_long),max(c3_long),min(c3_long),count(c4_long),sum(c4_long),max(c4_long),min(c4_long),count(c1_float),sum(c1_float),max(c1_float),min(c1_float),count(c2_float),sum(c2_float),max(c2_float),min(c2_float),count(c3_float),sum(c3_float),max(c3_float),min(c3_float),count(c4_float),sum(c4_float),max(c4_float),min(c4_float),count(c1_double),sum(c1_double),max(c1_double),min(c1_double),count(c2_double),sum(c2_double),max(c2_double),min(c2_double),count(c3_double),sum(c3_double),max(c3_double),min(c3_double),count(c4_double),sum(c4_double),max(c4_double),min(c4_double),count(c1_string),max(c1_string),min(c1_string),count(c2_string),max(c2_string),min(c2_string),count(c3_string),max(c3_string),min(c3_string),count(c4_string),max(c4_string),min(c4_string),d4_string,d1_long,d2_float,d3_double from ydb_all_type where ydbpartion=\'3000w\' group by d4_string,d1_long,d2_float,d3_double  ','segment')
group by r[93],r[94],r[95],r[96]  order by amtdouble desc
limit 10;






select sum(cnt) as cnt from 
(
select sum(cast(r[0] as bigint)) as cnt from 
ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment')
 
union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb1 where YSQL('from ydb1','select count(*) from ydb_example_shu where ydbpartion=\'300winsert\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb2 where YSQL('from ydb2','select count(*) from ydb_example_shu where ydbpartion=\'300winsert2\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb3 where YSQL('from ydb3','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb4 where YSQL('from ydb4','select count(*) from ydb_example_trade where ydbpartion=\'20151011\'   and content=\'工商银行\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb5 where YSQL('from ydb5','select count(*) from ydb_example_trade where ydbpartion=\'20151011\' ','segment') 

) tmp limit 10;


select sum(cnt) as cnt from 
(
select sum(cast(r[0] as bigint)) as cnt from 
ydb where YSQL('from ydb','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment')
 
union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb1 where YSQL('from ydb1','select count(*) from ydb_example_shu where ydbpartion=\'300winsert\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb2 where YSQL('from ydb2','select count(*) from ydb_example_shu where ydbpartion=\'300winsert2\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb3 where YSQL('from ydb3','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb4 where YSQL('from ydb4','select count(*) from ydb_example_trade where ydbpartion=\'20151011\'   and content=\'工商银行\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb5 where YSQL('from ydb5','select count(*) from ydb_example_trade where ydbpartion=\'20151011\' ','segment') 

) tmp limit 10;


select sum(cnt) as cnt,sum(sumamt) as cnt from 
(
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb where YSQL('from','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'旺旺\'  ','segment')
 
union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb1 where YSQL('from ydb1','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\'  ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb2 where YSQL('from ydb2','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'汇源\'  ','segment') 


union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb3 where YSQL('from ydb3','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'哇哈哈\'  ','segment') 


union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb4 where YSQL('from ydb4','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\'  ','segment') 

) tmp limit 10;

select r from 
(
select r as r from 
ydb where YSQL('from','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'旺旺\' order by amtlong desc limit 0,1 ','segment')
 
union all
select r as r from 
ydb1 where YSQL('from ydb1','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\' order by amtlong desc limit 0,1 ','segment') 

union all
select r as r from 
ydb2 where YSQL('from ydb2','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'汇源\' order by amtlong desc limit 0,1 ','segment') 


union all
select r as r from 
ydb3 where YSQL('from ydb3','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'哇哈哈\' order by amtlong desc limit 0,1 ','segment') 



) tmp  limit 1000;






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
        min(cast(r[5] as string)) as minprov,
        max(cast(r[6] as string)) as maxprov
    from ydb where 
    YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where   ydbpartion in (  \'3000w0\',\'3000w1\' ,\'3000w2\',\'3000w3\',\'3000w4\',\'3000w5\',\'3000w6\',\'3000w7\',\'3000w8\',\'3000w9\',\'3000w10\' ,\'3000w11\',\'3000w12\',\'3000w13\',\'3000w14\',\'3000w15\' ,\'3000w16\'  ,\'3000w17\',\'3000w18\',\'3000w19\'
,\'3000a0\',\'3000a1\' ,\'3000a2\',\'3000a3\',\'3000a4\',\'3000a5\',\'3000a6\',\'3000a7\',\'3000a8\',\'3000a9\',\'3000a10\' ,\'3000a11\',\'3000a12\',\'3000a13\',\'3000a14\',\'3000a15\' ,\'3000a16\'  ,\'3000a17\',\'3000a18\',\'3000a19\' 
,\'3000b0\',\'3000b1\' ,\'3000b2\',\'3000b3\',\'3000b4\',\'3000b5\',\'3000b6\',\'3000b7\',\'3000b8\',\'3000b9\',\'3000b10\' ,\'3000b11\',\'3000b12\',\'3000b13\',\'3000b14\',\'3000b15\' ,\'3000b16\'  ,\'3000b17\',\'3000b18\',\'3000b19\' 

) ','segment')

)tmp

 limit 10;


 



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
        min(cast(r[5] as string)) as minprov,
        max(cast(r[6] as string)) as maxprov
    from ydb where 
    YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where   ydbpartion in (  \'3000w0\',\'3000w1\' ,\'3000w2\',\'3000w3\',\'3000w4\',\'3000w5\',\'3000w6\',\'3000w7\',\'3000w8\',\'3000w9\',\'3000w10\' ,\'3000w11\',\'3000w12\',\'3000w13\',\'3000w14\',\'3000w15\' ,\'3000w16\'  ,\'3000w17\',\'3000w18\',\'3000w19\'
,\'3000a0\',\'3000a1\' ,\'3000a2\',\'3000a3\',\'3000a4\',\'3000a5\',\'3000a6\',\'3000a7\',\'3000a8\',\'3000a9\',\'3000a10\' ,\'3000a11\',\'3000a12\',\'3000a13\',\'3000a14\',\'3000a15\' ,\'3000a16\'  ,\'3000a17\',\'3000a18\',\'3000a19\' 
,\'3000b0\',\'3000b1\' ,\'3000b2\',\'3000b3\',\'3000b4\',\'3000b5\',\'3000b6\',\'3000b7\',\'3000b8\',\'3000b9\',\'3000b10\' ,\'3000b11\',\'3000b12\',\'3000b13\',\'3000b14\',\'3000b15\' ,\'3000b16\'  ,\'3000b17\',\'3000b18\',\'3000b19\' 

) ','segment')

)tmp

 limit 10;
 

 

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
        min(cast(r[5] as string)) as minprov,
        max(cast(r[6] as string)) as maxprov
    from ydb where 
    YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where   ydbpartion in (  \'3000w0\',\'3000w1\' ,\'3000w2\',\'3000w3\',\'3000w4\',\'3000w5\',\'3000w6\',\'3000w7\',\'3000w8\',\'3000w9\',\'3000w10\' ,\'3000w11\',\'3000w12\',\'3000w13\',\'3000w14\',\'3000w15\' ,\'3000w16\'  ,\'3000w17\',\'3000w18\',\'3000w19\'
,\'3000a0\',\'3000a1\' ,\'3000a2\',\'3000a3\',\'3000a4\',\'3000a5\',\'3000a6\',\'3000a7\',\'3000a8\',\'3000a9\',\'3000a10\' ,\'3000a11\',\'3000a12\',\'3000a13\',\'3000a14\',\'3000a15\' ,\'3000a16\'  ,\'3000a17\',\'3000a18\',\'3000a19\' 
,\'3000b0\',\'3000b1\' ,\'3000b2\',\'3000b3\',\'3000b4\',\'3000b5\',\'3000b6\',\'3000b7\',\'3000b8\',\'3000b9\',\'3000b10\' ,\'3000b11\',\'3000b12\',\'3000b13\',\'3000b14\',\'3000b15\' ,\'3000b16\'  ,\'3000b17\',\'3000b18\',\'3000b19\' 

) ','segment')

)tmp

 limit 10;
 
 


----2048个in查询
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and amtlong in (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047)  ','segment') 
limit 10;




----2048个or查询
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and (amtlong=\'0\' or amtlong=\'1\' or amtlong=\'2\' or amtlong=\'3\' or amtlong=\'4\' or amtlong=\'5\' or amtlong=\'6\' or amtlong=\'7\' or amtlong=\'8\' or amtlong=\'9\' or amtlong=\'10\' or amtlong=\'11\' or amtlong=\'12\' or amtlong=\'13\' or amtlong=\'14\' or amtlong=\'15\' or amtlong=\'16\' or amtlong=\'17\' or amtlong=\'18\' or amtlong=\'19\' or amtlong=\'20\' or amtlong=\'21\' or amtlong=\'22\' or amtlong=\'23\' or amtlong=\'24\' or amtlong=\'25\' or amtlong=\'26\' or amtlong=\'27\' or amtlong=\'28\' or amtlong=\'29\' or amtlong=\'30\' or amtlong=\'31\' or amtlong=\'32\' or amtlong=\'33\' or amtlong=\'34\' or amtlong=\'35\' or amtlong=\'36\' or amtlong=\'37\' or amtlong=\'38\' or amtlong=\'39\' or amtlong=\'40\' or amtlong=\'41\' or amtlong=\'42\' or amtlong=\'43\' or amtlong=\'44\' or amtlong=\'45\' or amtlong=\'46\' or amtlong=\'47\' or amtlong=\'48\' or amtlong=\'49\' or amtlong=\'50\' or amtlong=\'51\' or amtlong=\'52\' or amtlong=\'53\' or amtlong=\'54\' or amtlong=\'55\' or amtlong=\'56\' or amtlong=\'57\' or amtlong=\'58\' or amtlong=\'59\' or amtlong=\'60\' or amtlong=\'61\' or amtlong=\'62\' or amtlong=\'63\' or amtlong=\'64\' or amtlong=\'65\' or amtlong=\'66\' or amtlong=\'67\' or amtlong=\'68\' or amtlong=\'69\' or amtlong=\'70\' or amtlong=\'71\' or amtlong=\'72\' or amtlong=\'73\' or amtlong=\'74\' or amtlong=\'75\' or amtlong=\'76\' or amtlong=\'77\' or amtlong=\'78\' or amtlong=\'79\' or amtlong=\'80\' or amtlong=\'81\' or amtlong=\'82\' or amtlong=\'83\' or amtlong=\'84\' or amtlong=\'85\' or amtlong=\'86\' or amtlong=\'87\' or amtlong=\'88\' or amtlong=\'89\' or amtlong=\'90\' or amtlong=\'91\' or amtlong=\'92\' or amtlong=\'93\' or amtlong=\'94\' or amtlong=\'95\' or amtlong=\'96\' or amtlong=\'97\' or amtlong=\'98\' or amtlong=\'99\' or amtlong=\'100\' or amtlong=\'101\' or amtlong=\'102\' or amtlong=\'103\' or amtlong=\'104\' or amtlong=\'105\' or amtlong=\'106\' or amtlong=\'107\' or amtlong=\'108\' or amtlong=\'109\' or amtlong=\'110\' or amtlong=\'111\' or amtlong=\'112\' or amtlong=\'113\' or amtlong=\'114\' or amtlong=\'115\' or amtlong=\'116\' or amtlong=\'117\' or amtlong=\'118\' or amtlong=\'119\' or amtlong=\'120\' or amtlong=\'121\' or amtlong=\'122\' or amtlong=\'123\' or amtlong=\'124\' or amtlong=\'125\' or amtlong=\'126\' or amtlong=\'127\' or amtlong=\'128\' or amtlong=\'129\' or amtlong=\'130\' or amtlong=\'131\' or amtlong=\'132\' or amtlong=\'133\' or amtlong=\'134\' or amtlong=\'135\' or amtlong=\'136\' or amtlong=\'137\' or amtlong=\'138\' or amtlong=\'139\' or amtlong=\'140\' or amtlong=\'141\' or amtlong=\'142\' or amtlong=\'143\' or amtlong=\'144\' or amtlong=\'145\' or amtlong=\'146\' or amtlong=\'147\' or amtlong=\'148\' or amtlong=\'149\' or amtlong=\'150\' or amtlong=\'151\' or amtlong=\'152\' or amtlong=\'153\' or amtlong=\'154\' or amtlong=\'155\' or amtlong=\'156\' or amtlong=\'157\' or amtlong=\'158\' or amtlong=\'159\' or amtlong=\'160\' or amtlong=\'161\' or amtlong=\'162\' or amtlong=\'163\' or amtlong=\'164\' or amtlong=\'165\' or amtlong=\'166\' or amtlong=\'167\' or amtlong=\'168\' or amtlong=\'169\' or amtlong=\'170\' or amtlong=\'171\' or amtlong=\'172\' or amtlong=\'173\' or amtlong=\'174\' or amtlong=\'175\' or amtlong=\'176\' or amtlong=\'177\' or amtlong=\'178\' or amtlong=\'179\' or amtlong=\'180\' or amtlong=\'181\' or amtlong=\'182\' or amtlong=\'183\' or amtlong=\'184\' or amtlong=\'185\' or amtlong=\'186\' or amtlong=\'187\' or amtlong=\'188\' or amtlong=\'189\' or amtlong=\'190\' or amtlong=\'191\' or amtlong=\'192\' or amtlong=\'193\' or amtlong=\'194\' or amtlong=\'195\' or amtlong=\'196\' or amtlong=\'197\' or amtlong=\'198\' or amtlong=\'199\' or amtlong=\'200\' or amtlong=\'201\' or amtlong=\'202\' or amtlong=\'203\' or amtlong=\'204\' or amtlong=\'205\' or amtlong=\'206\' or amtlong=\'207\' or amtlong=\'208\' or amtlong=\'209\' or amtlong=\'210\' or amtlong=\'211\' or amtlong=\'212\' or amtlong=\'213\' or amtlong=\'214\' or amtlong=\'215\' or amtlong=\'216\' or amtlong=\'217\' or amtlong=\'218\' or amtlong=\'219\' or amtlong=\'220\' or amtlong=\'221\' or amtlong=\'222\' or amtlong=\'223\' or amtlong=\'224\' or amtlong=\'225\' or amtlong=\'226\' or amtlong=\'227\' or amtlong=\'228\' or amtlong=\'229\' or amtlong=\'230\' or amtlong=\'231\' or amtlong=\'232\' or amtlong=\'233\' or amtlong=\'234\' or amtlong=\'235\' or amtlong=\'236\' or amtlong=\'237\' or amtlong=\'238\' or amtlong=\'239\' or amtlong=\'240\' or amtlong=\'241\' or amtlong=\'242\' or amtlong=\'243\' or amtlong=\'244\' or amtlong=\'245\' or amtlong=\'246\' or amtlong=\'247\' or amtlong=\'248\' or amtlong=\'249\' or amtlong=\'250\' or amtlong=\'251\' or amtlong=\'252\' or amtlong=\'253\' or amtlong=\'254\' or amtlong=\'255\' or amtlong=\'256\' or amtlong=\'257\' or amtlong=\'258\' or amtlong=\'259\' or amtlong=\'260\' or amtlong=\'261\' or amtlong=\'262\' or amtlong=\'263\' or amtlong=\'264\' or amtlong=\'265\' or amtlong=\'266\' or amtlong=\'267\' or amtlong=\'268\' or amtlong=\'269\' or amtlong=\'270\' or amtlong=\'271\' or amtlong=\'272\' or amtlong=\'273\' or amtlong=\'274\' or amtlong=\'275\' or amtlong=\'276\' or amtlong=\'277\' or amtlong=\'278\' or amtlong=\'279\' or amtlong=\'280\' or amtlong=\'281\' or amtlong=\'282\' or amtlong=\'283\' or amtlong=\'284\' or amtlong=\'285\' or amtlong=\'286\' or amtlong=\'287\' or amtlong=\'288\' or amtlong=\'289\' or amtlong=\'290\' or amtlong=\'291\' or amtlong=\'292\' or amtlong=\'293\' or amtlong=\'294\' or amtlong=\'295\' or amtlong=\'296\' or amtlong=\'297\' or amtlong=\'298\' or amtlong=\'299\' or amtlong=\'300\' or amtlong=\'301\' or amtlong=\'302\' or amtlong=\'303\' or amtlong=\'304\' or amtlong=\'305\' or amtlong=\'306\' or amtlong=\'307\' or amtlong=\'308\' or amtlong=\'309\' or amtlong=\'310\' or amtlong=\'311\' or amtlong=\'312\' or amtlong=\'313\' or amtlong=\'314\' or amtlong=\'315\' or amtlong=\'316\' or amtlong=\'317\' or amtlong=\'318\' or amtlong=\'319\' or amtlong=\'320\' or amtlong=\'321\' or amtlong=\'322\' or amtlong=\'323\' or amtlong=\'324\' or amtlong=\'325\' or amtlong=\'326\' or amtlong=\'327\' or amtlong=\'328\' or amtlong=\'329\' or amtlong=\'330\' or amtlong=\'331\' or amtlong=\'332\' or amtlong=\'333\' or amtlong=\'334\' or amtlong=\'335\' or amtlong=\'336\' or amtlong=\'337\' or amtlong=\'338\' or amtlong=\'339\' or amtlong=\'340\' or amtlong=\'341\' or amtlong=\'342\' or amtlong=\'343\' or amtlong=\'344\' or amtlong=\'345\' or amtlong=\'346\' or amtlong=\'347\' or amtlong=\'348\' or amtlong=\'349\' or amtlong=\'350\' or amtlong=\'351\' or amtlong=\'352\' or amtlong=\'353\' or amtlong=\'354\' or amtlong=\'355\' or amtlong=\'356\' or amtlong=\'357\' or amtlong=\'358\' or amtlong=\'359\' or amtlong=\'360\' or amtlong=\'361\' or amtlong=\'362\' or amtlong=\'363\' or amtlong=\'364\' or amtlong=\'365\' or amtlong=\'366\' or amtlong=\'367\' or amtlong=\'368\' or amtlong=\'369\' or amtlong=\'370\' or amtlong=\'371\' or amtlong=\'372\' or amtlong=\'373\' or amtlong=\'374\' or amtlong=\'375\' or amtlong=\'376\' or amtlong=\'377\' or amtlong=\'378\' or amtlong=\'379\' or amtlong=\'380\' or amtlong=\'381\' or amtlong=\'382\' or amtlong=\'383\' or amtlong=\'384\' or amtlong=\'385\' or amtlong=\'386\' or amtlong=\'387\' or amtlong=\'388\' or amtlong=\'389\' or amtlong=\'390\' or amtlong=\'391\' or amtlong=\'392\' or amtlong=\'393\' or amtlong=\'394\' or amtlong=\'395\' or amtlong=\'396\' or amtlong=\'397\' or amtlong=\'398\' or amtlong=\'399\' or amtlong=\'400\' or amtlong=\'401\' or amtlong=\'402\' or amtlong=\'403\' or amtlong=\'404\' or amtlong=\'405\' or amtlong=\'406\' or amtlong=\'407\' or amtlong=\'408\' or amtlong=\'409\' or amtlong=\'410\' or amtlong=\'411\' or amtlong=\'412\' or amtlong=\'413\' or amtlong=\'414\' or amtlong=\'415\' or amtlong=\'416\' or amtlong=\'417\' or amtlong=\'418\' or amtlong=\'419\' or amtlong=\'420\' or amtlong=\'421\' or amtlong=\'422\' or amtlong=\'423\' or amtlong=\'424\' or amtlong=\'425\' or amtlong=\'426\' or amtlong=\'427\' or amtlong=\'428\' or amtlong=\'429\' or amtlong=\'430\' or amtlong=\'431\' or amtlong=\'432\' or amtlong=\'433\' or amtlong=\'434\' or amtlong=\'435\' or amtlong=\'436\' or amtlong=\'437\' or amtlong=\'438\' or amtlong=\'439\' or amtlong=\'440\' or amtlong=\'441\' or amtlong=\'442\' or amtlong=\'443\' or amtlong=\'444\' or amtlong=\'445\' or amtlong=\'446\' or amtlong=\'447\' or amtlong=\'448\' or amtlong=\'449\' or amtlong=\'450\' or amtlong=\'451\' or amtlong=\'452\' or amtlong=\'453\' or amtlong=\'454\' or amtlong=\'455\' or amtlong=\'456\' or amtlong=\'457\' or amtlong=\'458\' or amtlong=\'459\' or amtlong=\'460\' or amtlong=\'461\' or amtlong=\'462\' or amtlong=\'463\' or amtlong=\'464\' or amtlong=\'465\' or amtlong=\'466\' or amtlong=\'467\' or amtlong=\'468\' or amtlong=\'469\' or amtlong=\'470\' or amtlong=\'471\' or amtlong=\'472\' or amtlong=\'473\' or amtlong=\'474\' or amtlong=\'475\' or amtlong=\'476\' or amtlong=\'477\' or amtlong=\'478\' or amtlong=\'479\' or amtlong=\'480\' or amtlong=\'481\' or amtlong=\'482\' or amtlong=\'483\' or amtlong=\'484\' or amtlong=\'485\' or amtlong=\'486\' or amtlong=\'487\' or amtlong=\'488\' or amtlong=\'489\' or amtlong=\'490\' or amtlong=\'491\' or amtlong=\'492\' or amtlong=\'493\' or amtlong=\'494\' or amtlong=\'495\' or amtlong=\'496\' or amtlong=\'497\' or amtlong=\'498\' or amtlong=\'499\' or amtlong=\'500\' or amtlong=\'501\' or amtlong=\'502\' or amtlong=\'503\' or amtlong=\'504\' or amtlong=\'505\' or amtlong=\'506\' or amtlong=\'507\' or amtlong=\'508\' or amtlong=\'509\' or amtlong=\'510\' or amtlong=\'511\' or amtlong=\'512\' or amtlong=\'513\' or amtlong=\'514\' or amtlong=\'515\' or amtlong=\'516\' or amtlong=\'517\' or amtlong=\'518\' or amtlong=\'519\' or amtlong=\'520\' or amtlong=\'521\' or amtlong=\'522\' or amtlong=\'523\' or amtlong=\'524\' or amtlong=\'525\' or amtlong=\'526\' or amtlong=\'527\' or amtlong=\'528\' or amtlong=\'529\' or amtlong=\'530\' or amtlong=\'531\' or amtlong=\'532\' or amtlong=\'533\' or amtlong=\'534\' or amtlong=\'535\' or amtlong=\'536\' or amtlong=\'537\' or amtlong=\'538\' or amtlong=\'539\' or amtlong=\'540\' or amtlong=\'541\' or amtlong=\'542\' or amtlong=\'543\' or amtlong=\'544\' or amtlong=\'545\' or amtlong=\'546\' or amtlong=\'547\' or amtlong=\'548\' or amtlong=\'549\' or amtlong=\'550\' or amtlong=\'551\' or amtlong=\'552\' or amtlong=\'553\' or amtlong=\'554\' or amtlong=\'555\' or amtlong=\'556\' or amtlong=\'557\' or amtlong=\'558\' or amtlong=\'559\' or amtlong=\'560\' or amtlong=\'561\' or amtlong=\'562\' or amtlong=\'563\' or amtlong=\'564\' or amtlong=\'565\' or amtlong=\'566\' or amtlong=\'567\' or amtlong=\'568\' or amtlong=\'569\' or amtlong=\'570\' or amtlong=\'571\' or amtlong=\'572\' or amtlong=\'573\' or amtlong=\'574\' or amtlong=\'575\' or amtlong=\'576\' or amtlong=\'577\' or amtlong=\'578\' or amtlong=\'579\' or amtlong=\'580\' or amtlong=\'581\' or amtlong=\'582\' or amtlong=\'583\' or amtlong=\'584\' or amtlong=\'585\' or amtlong=\'586\' or amtlong=\'587\' or amtlong=\'588\' or amtlong=\'589\' or amtlong=\'590\' or amtlong=\'591\' or amtlong=\'592\' or amtlong=\'593\' or amtlong=\'594\' or amtlong=\'595\' or amtlong=\'596\' or amtlong=\'597\' or amtlong=\'598\' or amtlong=\'599\' or amtlong=\'600\' or amtlong=\'601\' or amtlong=\'602\' or amtlong=\'603\' or amtlong=\'604\' or amtlong=\'605\' or amtlong=\'606\' or amtlong=\'607\' or amtlong=\'608\' or amtlong=\'609\' or amtlong=\'610\' or amtlong=\'611\' or amtlong=\'612\' or amtlong=\'613\' or amtlong=\'614\' or amtlong=\'615\' or amtlong=\'616\' or amtlong=\'617\' or amtlong=\'618\' or amtlong=\'619\' or amtlong=\'620\' or amtlong=\'621\' or amtlong=\'622\' or amtlong=\'623\' or amtlong=\'624\' or amtlong=\'625\' or amtlong=\'626\' or amtlong=\'627\' or amtlong=\'628\' or amtlong=\'629\' or amtlong=\'630\' or amtlong=\'631\' or amtlong=\'632\' or amtlong=\'633\' or amtlong=\'634\' or amtlong=\'635\' or amtlong=\'636\' or amtlong=\'637\' or amtlong=\'638\' or amtlong=\'639\' or amtlong=\'640\' or amtlong=\'641\' or amtlong=\'642\' or amtlong=\'643\' or amtlong=\'644\' or amtlong=\'645\' or amtlong=\'646\' or amtlong=\'647\' or amtlong=\'648\' or amtlong=\'649\' or amtlong=\'650\' or amtlong=\'651\' or amtlong=\'652\' or amtlong=\'653\' or amtlong=\'654\' or amtlong=\'655\' or amtlong=\'656\' or amtlong=\'657\' or amtlong=\'658\' or amtlong=\'659\' or amtlong=\'660\' or amtlong=\'661\' or amtlong=\'662\' or amtlong=\'663\' or amtlong=\'664\' or amtlong=\'665\' or amtlong=\'666\' or amtlong=\'667\' or amtlong=\'668\' or amtlong=\'669\' or amtlong=\'670\' or amtlong=\'671\' or amtlong=\'672\' or amtlong=\'673\' or amtlong=\'674\' or amtlong=\'675\' or amtlong=\'676\' or amtlong=\'677\' or amtlong=\'678\' or amtlong=\'679\' or amtlong=\'680\' or amtlong=\'681\' or amtlong=\'682\' or amtlong=\'683\' or amtlong=\'684\' or amtlong=\'685\' or amtlong=\'686\' or amtlong=\'687\' or amtlong=\'688\' or amtlong=\'689\' or amtlong=\'690\' or amtlong=\'691\' or amtlong=\'692\' or amtlong=\'693\' or amtlong=\'694\' or amtlong=\'695\' or amtlong=\'696\' or amtlong=\'697\' or amtlong=\'698\' or amtlong=\'699\' or amtlong=\'700\' or amtlong=\'701\' or amtlong=\'702\' or amtlong=\'703\' or amtlong=\'704\' or amtlong=\'705\' or amtlong=\'706\' or amtlong=\'707\' or amtlong=\'708\' or amtlong=\'709\' or amtlong=\'710\' or amtlong=\'711\' or amtlong=\'712\' or amtlong=\'713\' or amtlong=\'714\' or amtlong=\'715\' or amtlong=\'716\' or amtlong=\'717\' or amtlong=\'718\' or amtlong=\'719\' or amtlong=\'720\' or amtlong=\'721\' or amtlong=\'722\' or amtlong=\'723\' or amtlong=\'724\' or amtlong=\'725\' or amtlong=\'726\' or amtlong=\'727\' or amtlong=\'728\' or amtlong=\'729\' or amtlong=\'730\' or amtlong=\'731\' or amtlong=\'732\' or amtlong=\'733\' or amtlong=\'734\' or amtlong=\'735\' or amtlong=\'736\' or amtlong=\'737\' or amtlong=\'738\' or amtlong=\'739\' or amtlong=\'740\' or amtlong=\'741\' or amtlong=\'742\' or amtlong=\'743\' or amtlong=\'744\' or amtlong=\'745\' or amtlong=\'746\' or amtlong=\'747\' or amtlong=\'748\' or amtlong=\'749\' or amtlong=\'750\' or amtlong=\'751\' or amtlong=\'752\' or amtlong=\'753\' or amtlong=\'754\' or amtlong=\'755\' or amtlong=\'756\' or amtlong=\'757\' or amtlong=\'758\' or amtlong=\'759\' or amtlong=\'760\' or amtlong=\'761\' or amtlong=\'762\' or amtlong=\'763\' or amtlong=\'764\' or amtlong=\'765\' or amtlong=\'766\' or amtlong=\'767\' or amtlong=\'768\' or amtlong=\'769\' or amtlong=\'770\' or amtlong=\'771\' or amtlong=\'772\' or amtlong=\'773\' or amtlong=\'774\' or amtlong=\'775\' or amtlong=\'776\' or amtlong=\'777\' or amtlong=\'778\' or amtlong=\'779\' or amtlong=\'780\' or amtlong=\'781\' or amtlong=\'782\' or amtlong=\'783\' or amtlong=\'784\' or amtlong=\'785\' or amtlong=\'786\' or amtlong=\'787\' or amtlong=\'788\' or amtlong=\'789\' or amtlong=\'790\' or amtlong=\'791\' or amtlong=\'792\' or amtlong=\'793\' or amtlong=\'794\' or amtlong=\'795\' or amtlong=\'796\' or amtlong=\'797\' or amtlong=\'798\' or amtlong=\'799\' or amtlong=\'800\' or amtlong=\'801\' or amtlong=\'802\' or amtlong=\'803\' or amtlong=\'804\' or amtlong=\'805\' or amtlong=\'806\' or amtlong=\'807\' or amtlong=\'808\' or amtlong=\'809\' or amtlong=\'810\' or amtlong=\'811\' or amtlong=\'812\' or amtlong=\'813\' or amtlong=\'814\' or amtlong=\'815\' or amtlong=\'816\' or amtlong=\'817\' or amtlong=\'818\' or amtlong=\'819\' or amtlong=\'820\' or amtlong=\'821\' or amtlong=\'822\' or amtlong=\'823\' or amtlong=\'824\' or amtlong=\'825\' or amtlong=\'826\' or amtlong=\'827\' or amtlong=\'828\' or amtlong=\'829\' or amtlong=\'830\' or amtlong=\'831\' or amtlong=\'832\' or amtlong=\'833\' or amtlong=\'834\' or amtlong=\'835\' or amtlong=\'836\' or amtlong=\'837\' or amtlong=\'838\' or amtlong=\'839\' or amtlong=\'840\' or amtlong=\'841\' or amtlong=\'842\' or amtlong=\'843\' or amtlong=\'844\' or amtlong=\'845\' or amtlong=\'846\' or amtlong=\'847\' or amtlong=\'848\' or amtlong=\'849\' or amtlong=\'850\' or amtlong=\'851\' or amtlong=\'852\' or amtlong=\'853\' or amtlong=\'854\' or amtlong=\'855\' or amtlong=\'856\' or amtlong=\'857\' or amtlong=\'858\' or amtlong=\'859\' or amtlong=\'860\' or amtlong=\'861\' or amtlong=\'862\' or amtlong=\'863\' or amtlong=\'864\' or amtlong=\'865\' or amtlong=\'866\' or amtlong=\'867\' or amtlong=\'868\' or amtlong=\'869\' or amtlong=\'870\' or amtlong=\'871\' or amtlong=\'872\' or amtlong=\'873\' or amtlong=\'874\' or amtlong=\'875\' or amtlong=\'876\' or amtlong=\'877\' or amtlong=\'878\' or amtlong=\'879\' or amtlong=\'880\' or amtlong=\'881\' or amtlong=\'882\' or amtlong=\'883\' or amtlong=\'884\' or amtlong=\'885\' or amtlong=\'886\' or amtlong=\'887\' or amtlong=\'888\' or amtlong=\'889\' or amtlong=\'890\' or amtlong=\'891\' or amtlong=\'892\' or amtlong=\'893\' or amtlong=\'894\' or amtlong=\'895\' or amtlong=\'896\' or amtlong=\'897\' or amtlong=\'898\' or amtlong=\'899\' or amtlong=\'900\' or amtlong=\'901\' or amtlong=\'902\' or amtlong=\'903\' or amtlong=\'904\' or amtlong=\'905\' or amtlong=\'906\' or amtlong=\'907\' or amtlong=\'908\' or amtlong=\'909\' or amtlong=\'910\' or amtlong=\'911\' or amtlong=\'912\' or amtlong=\'913\' or amtlong=\'914\' or amtlong=\'915\' or amtlong=\'916\' or amtlong=\'917\' or amtlong=\'918\' or amtlong=\'919\' or amtlong=\'920\' or amtlong=\'921\' or amtlong=\'922\' or amtlong=\'923\' or amtlong=\'924\' or amtlong=\'925\' or amtlong=\'926\' or amtlong=\'927\' or amtlong=\'928\' or amtlong=\'929\' or amtlong=\'930\' or amtlong=\'931\' or amtlong=\'932\' or amtlong=\'933\' or amtlong=\'934\' or amtlong=\'935\' or amtlong=\'936\' or amtlong=\'937\' or amtlong=\'938\' or amtlong=\'939\' or amtlong=\'940\' or amtlong=\'941\' or amtlong=\'942\' or amtlong=\'943\' or amtlong=\'944\' or amtlong=\'945\' or amtlong=\'946\' or amtlong=\'947\' or amtlong=\'948\' or amtlong=\'949\' or amtlong=\'950\' or amtlong=\'951\' or amtlong=\'952\' or amtlong=\'953\' or amtlong=\'954\' or amtlong=\'955\' or amtlong=\'956\' or amtlong=\'957\' or amtlong=\'958\' or amtlong=\'959\' or amtlong=\'960\' or amtlong=\'961\' or amtlong=\'962\' or amtlong=\'963\' or amtlong=\'964\' or amtlong=\'965\' or amtlong=\'966\' or amtlong=\'967\' or amtlong=\'968\' or amtlong=\'969\' or amtlong=\'970\' or amtlong=\'971\' or amtlong=\'972\' or amtlong=\'973\' or amtlong=\'974\' or amtlong=\'975\' or amtlong=\'976\' or amtlong=\'977\' or amtlong=\'978\' or amtlong=\'979\' or amtlong=\'980\' or amtlong=\'981\' or amtlong=\'982\' or amtlong=\'983\' or amtlong=\'984\' or amtlong=\'985\' or amtlong=\'986\' or amtlong=\'987\' or amtlong=\'988\' or amtlong=\'989\' or amtlong=\'990\' or amtlong=\'991\' or amtlong=\'992\' or amtlong=\'993\' or amtlong=\'994\' or amtlong=\'995\' or amtlong=\'996\' or amtlong=\'997\' or amtlong=\'998\' or amtlong=\'999\' or amtlong=\'1000\' or amtlong=\'1001\' or amtlong=\'1002\' or amtlong=\'1003\' or amtlong=\'1004\' or amtlong=\'1005\' or amtlong=\'1006\' or amtlong=\'1007\' or amtlong=\'1008\' or amtlong=\'1009\' or amtlong=\'1010\' or amtlong=\'1011\' or amtlong=\'1012\' or amtlong=\'1013\' or amtlong=\'1014\' or amtlong=\'1015\' or amtlong=\'1016\' or amtlong=\'1017\' or amtlong=\'1018\' or amtlong=\'1019\' or amtlong=\'1020\' or amtlong=\'1021\' or amtlong=\'1022\' or amtlong=\'1023\' or amtlong=\'1024\' or amtlong=\'1025\' or amtlong=\'1026\' or amtlong=\'1027\' or amtlong=\'1028\' or amtlong=\'1029\' or amtlong=\'1030\' or amtlong=\'1031\' or amtlong=\'1032\' or amtlong=\'1033\' or amtlong=\'1034\' or amtlong=\'1035\' or amtlong=\'1036\' or amtlong=\'1037\' or amtlong=\'1038\' or amtlong=\'1039\' or amtlong=\'1040\' or amtlong=\'1041\' or amtlong=\'1042\' or amtlong=\'1043\' or amtlong=\'1044\' or amtlong=\'1045\' or amtlong=\'1046\' or amtlong=\'1047\' or amtlong=\'1048\' or amtlong=\'1049\' or amtlong=\'1050\' or amtlong=\'1051\' or amtlong=\'1052\' or amtlong=\'1053\' or amtlong=\'1054\' or amtlong=\'1055\' or amtlong=\'1056\' or amtlong=\'1057\' or amtlong=\'1058\' or amtlong=\'1059\' or amtlong=\'1060\' or amtlong=\'1061\' or amtlong=\'1062\' or amtlong=\'1063\' or amtlong=\'1064\' or amtlong=\'1065\' or amtlong=\'1066\' or amtlong=\'1067\' or amtlong=\'1068\' or amtlong=\'1069\' or amtlong=\'1070\' or amtlong=\'1071\' or amtlong=\'1072\' or amtlong=\'1073\' or amtlong=\'1074\' or amtlong=\'1075\' or amtlong=\'1076\' or amtlong=\'1077\' or amtlong=\'1078\' or amtlong=\'1079\' or amtlong=\'1080\' or amtlong=\'1081\' or amtlong=\'1082\' or amtlong=\'1083\' or amtlong=\'1084\' or amtlong=\'1085\' or amtlong=\'1086\' or amtlong=\'1087\' or amtlong=\'1088\' or amtlong=\'1089\' or amtlong=\'1090\' or amtlong=\'1091\' or amtlong=\'1092\' or amtlong=\'1093\' or amtlong=\'1094\' or amtlong=\'1095\' or amtlong=\'1096\' or amtlong=\'1097\' or amtlong=\'1098\' or amtlong=\'1099\' or amtlong=\'1100\' or amtlong=\'1101\' or amtlong=\'1102\' or amtlong=\'1103\' or amtlong=\'1104\' or amtlong=\'1105\' or amtlong=\'1106\' or amtlong=\'1107\' or amtlong=\'1108\' or amtlong=\'1109\' or amtlong=\'1110\' or amtlong=\'1111\' or amtlong=\'1112\' or amtlong=\'1113\' or amtlong=\'1114\' or amtlong=\'1115\' or amtlong=\'1116\' or amtlong=\'1117\' or amtlong=\'1118\' or amtlong=\'1119\' or amtlong=\'1120\' or amtlong=\'1121\' or amtlong=\'1122\' or amtlong=\'1123\' or amtlong=\'1124\' or amtlong=\'1125\' or amtlong=\'1126\' or amtlong=\'1127\' or amtlong=\'1128\' or amtlong=\'1129\' or amtlong=\'1130\' or amtlong=\'1131\' or amtlong=\'1132\' or amtlong=\'1133\' or amtlong=\'1134\' or amtlong=\'1135\' or amtlong=\'1136\' or amtlong=\'1137\' or amtlong=\'1138\' or amtlong=\'1139\' or amtlong=\'1140\' or amtlong=\'1141\' or amtlong=\'1142\' or amtlong=\'1143\' or amtlong=\'1144\' or amtlong=\'1145\' or amtlong=\'1146\' or amtlong=\'1147\' or amtlong=\'1148\' or amtlong=\'1149\' or amtlong=\'1150\' or amtlong=\'1151\' or amtlong=\'1152\' or amtlong=\'1153\' or amtlong=\'1154\' or amtlong=\'1155\' or amtlong=\'1156\' or amtlong=\'1157\' or amtlong=\'1158\' or amtlong=\'1159\' or amtlong=\'1160\' or amtlong=\'1161\' or amtlong=\'1162\' or amtlong=\'1163\' or amtlong=\'1164\' or amtlong=\'1165\' or amtlong=\'1166\' or amtlong=\'1167\' or amtlong=\'1168\' or amtlong=\'1169\' or amtlong=\'1170\' or amtlong=\'1171\' or amtlong=\'1172\' or amtlong=\'1173\' or amtlong=\'1174\' or amtlong=\'1175\' or amtlong=\'1176\' or amtlong=\'1177\' or amtlong=\'1178\' or amtlong=\'1179\' or amtlong=\'1180\' or amtlong=\'1181\' or amtlong=\'1182\' or amtlong=\'1183\' or amtlong=\'1184\' or amtlong=\'1185\' or amtlong=\'1186\' or amtlong=\'1187\' or amtlong=\'1188\' or amtlong=\'1189\' or amtlong=\'1190\' or amtlong=\'1191\' or amtlong=\'1192\' or amtlong=\'1193\' or amtlong=\'1194\' or amtlong=\'1195\' or amtlong=\'1196\' or amtlong=\'1197\' or amtlong=\'1198\' or amtlong=\'1199\' or amtlong=\'1200\' or amtlong=\'1201\' or amtlong=\'1202\' or amtlong=\'1203\' or amtlong=\'1204\' or amtlong=\'1205\' or amtlong=\'1206\' or amtlong=\'1207\' or amtlong=\'1208\' or amtlong=\'1209\' or amtlong=\'1210\' or amtlong=\'1211\' or amtlong=\'1212\' or amtlong=\'1213\' or amtlong=\'1214\' or amtlong=\'1215\' or amtlong=\'1216\' or amtlong=\'1217\' or amtlong=\'1218\' or amtlong=\'1219\' or amtlong=\'1220\' or amtlong=\'1221\' or amtlong=\'1222\' or amtlong=\'1223\' or amtlong=\'1224\' or amtlong=\'1225\' or amtlong=\'1226\' or amtlong=\'1227\' or amtlong=\'1228\' or amtlong=\'1229\' or amtlong=\'1230\' or amtlong=\'1231\' or amtlong=\'1232\' or amtlong=\'1233\' or amtlong=\'1234\' or amtlong=\'1235\' or amtlong=\'1236\' or amtlong=\'1237\' or amtlong=\'1238\' or amtlong=\'1239\' or amtlong=\'1240\' or amtlong=\'1241\' or amtlong=\'1242\' or amtlong=\'1243\' or amtlong=\'1244\' or amtlong=\'1245\' or amtlong=\'1246\' or amtlong=\'1247\' or amtlong=\'1248\' or amtlong=\'1249\' or amtlong=\'1250\' or amtlong=\'1251\' or amtlong=\'1252\' or amtlong=\'1253\' or amtlong=\'1254\' or amtlong=\'1255\' or amtlong=\'1256\' or amtlong=\'1257\' or amtlong=\'1258\' or amtlong=\'1259\' or amtlong=\'1260\' or amtlong=\'1261\' or amtlong=\'1262\' or amtlong=\'1263\' or amtlong=\'1264\' or amtlong=\'1265\' or amtlong=\'1266\' or amtlong=\'1267\' or amtlong=\'1268\' or amtlong=\'1269\' or amtlong=\'1270\' or amtlong=\'1271\' or amtlong=\'1272\' or amtlong=\'1273\' or amtlong=\'1274\' or amtlong=\'1275\' or amtlong=\'1276\' or amtlong=\'1277\' or amtlong=\'1278\' or amtlong=\'1279\' or amtlong=\'1280\' or amtlong=\'1281\' or amtlong=\'1282\' or amtlong=\'1283\' or amtlong=\'1284\' or amtlong=\'1285\' or amtlong=\'1286\' or amtlong=\'1287\' or amtlong=\'1288\' or amtlong=\'1289\' or amtlong=\'1290\' or amtlong=\'1291\' or amtlong=\'1292\' or amtlong=\'1293\' or amtlong=\'1294\' or amtlong=\'1295\' or amtlong=\'1296\' or amtlong=\'1297\' or amtlong=\'1298\' or amtlong=\'1299\' or amtlong=\'1300\' or amtlong=\'1301\' or amtlong=\'1302\' or amtlong=\'1303\' or amtlong=\'1304\' or amtlong=\'1305\' or amtlong=\'1306\' or amtlong=\'1307\' or amtlong=\'1308\' or amtlong=\'1309\' or amtlong=\'1310\' or amtlong=\'1311\' or amtlong=\'1312\' or amtlong=\'1313\' or amtlong=\'1314\' or amtlong=\'1315\' or amtlong=\'1316\' or amtlong=\'1317\' or amtlong=\'1318\' or amtlong=\'1319\' or amtlong=\'1320\' or amtlong=\'1321\' or amtlong=\'1322\' or amtlong=\'1323\' or amtlong=\'1324\' or amtlong=\'1325\' or amtlong=\'1326\' or amtlong=\'1327\' or amtlong=\'1328\' or amtlong=\'1329\' or amtlong=\'1330\' or amtlong=\'1331\' or amtlong=\'1332\' or amtlong=\'1333\' or amtlong=\'1334\' or amtlong=\'1335\' or amtlong=\'1336\' or amtlong=\'1337\' or amtlong=\'1338\' or amtlong=\'1339\' or amtlong=\'1340\' or amtlong=\'1341\' or amtlong=\'1342\' or amtlong=\'1343\' or amtlong=\'1344\' or amtlong=\'1345\' or amtlong=\'1346\' or amtlong=\'1347\' or amtlong=\'1348\' or amtlong=\'1349\' or amtlong=\'1350\' or amtlong=\'1351\' or amtlong=\'1352\' or amtlong=\'1353\' or amtlong=\'1354\' or amtlong=\'1355\' or amtlong=\'1356\' or amtlong=\'1357\' or amtlong=\'1358\' or amtlong=\'1359\' or amtlong=\'1360\' or amtlong=\'1361\' or amtlong=\'1362\' or amtlong=\'1363\' or amtlong=\'1364\' or amtlong=\'1365\' or amtlong=\'1366\' or amtlong=\'1367\' or amtlong=\'1368\' or amtlong=\'1369\' or amtlong=\'1370\' or amtlong=\'1371\' or amtlong=\'1372\' or amtlong=\'1373\' or amtlong=\'1374\' or amtlong=\'1375\' or amtlong=\'1376\' or amtlong=\'1377\' or amtlong=\'1378\' or amtlong=\'1379\' or amtlong=\'1380\' or amtlong=\'1381\' or amtlong=\'1382\' or amtlong=\'1383\' or amtlong=\'1384\' or amtlong=\'1385\' or amtlong=\'1386\' or amtlong=\'1387\' or amtlong=\'1388\' or amtlong=\'1389\' or amtlong=\'1390\' or amtlong=\'1391\' or amtlong=\'1392\' or amtlong=\'1393\' or amtlong=\'1394\' or amtlong=\'1395\' or amtlong=\'1396\' or amtlong=\'1397\' or amtlong=\'1398\' or amtlong=\'1399\' or amtlong=\'1400\' or amtlong=\'1401\' or amtlong=\'1402\' or amtlong=\'1403\' or amtlong=\'1404\' or amtlong=\'1405\' or amtlong=\'1406\' or amtlong=\'1407\' or amtlong=\'1408\' or amtlong=\'1409\' or amtlong=\'1410\' or amtlong=\'1411\' or amtlong=\'1412\' or amtlong=\'1413\' or amtlong=\'1414\' or amtlong=\'1415\' or amtlong=\'1416\' or amtlong=\'1417\' or amtlong=\'1418\' or amtlong=\'1419\' or amtlong=\'1420\' or amtlong=\'1421\' or amtlong=\'1422\' or amtlong=\'1423\' or amtlong=\'1424\' or amtlong=\'1425\' or amtlong=\'1426\' or amtlong=\'1427\' or amtlong=\'1428\' or amtlong=\'1429\' or amtlong=\'1430\' or amtlong=\'1431\' or amtlong=\'1432\' or amtlong=\'1433\' or amtlong=\'1434\' or amtlong=\'1435\' or amtlong=\'1436\' or amtlong=\'1437\' or amtlong=\'1438\' or amtlong=\'1439\' or amtlong=\'1440\' or amtlong=\'1441\' or amtlong=\'1442\' or amtlong=\'1443\' or amtlong=\'1444\' or amtlong=\'1445\' or amtlong=\'1446\' or amtlong=\'1447\' or amtlong=\'1448\' or amtlong=\'1449\' or amtlong=\'1450\' or amtlong=\'1451\' or amtlong=\'1452\' or amtlong=\'1453\' or amtlong=\'1454\' or amtlong=\'1455\' or amtlong=\'1456\' or amtlong=\'1457\' or amtlong=\'1458\' or amtlong=\'1459\' or amtlong=\'1460\' or amtlong=\'1461\' or amtlong=\'1462\' or amtlong=\'1463\' or amtlong=\'1464\' or amtlong=\'1465\' or amtlong=\'1466\' or amtlong=\'1467\' or amtlong=\'1468\' or amtlong=\'1469\' or amtlong=\'1470\' or amtlong=\'1471\' or amtlong=\'1472\' or amtlong=\'1473\' or amtlong=\'1474\' or amtlong=\'1475\' or amtlong=\'1476\' or amtlong=\'1477\' or amtlong=\'1478\' or amtlong=\'1479\' or amtlong=\'1480\' or amtlong=\'1481\' or amtlong=\'1482\' or amtlong=\'1483\' or amtlong=\'1484\' or amtlong=\'1485\' or amtlong=\'1486\' or amtlong=\'1487\' or amtlong=\'1488\' or amtlong=\'1489\' or amtlong=\'1490\' or amtlong=\'1491\' or amtlong=\'1492\' or amtlong=\'1493\' or amtlong=\'1494\' or amtlong=\'1495\' or amtlong=\'1496\' or amtlong=\'1497\' or amtlong=\'1498\' or amtlong=\'1499\' or amtlong=\'1500\' or amtlong=\'1501\' or amtlong=\'1502\' or amtlong=\'1503\' or amtlong=\'1504\' or amtlong=\'1505\' or amtlong=\'1506\' or amtlong=\'1507\' or amtlong=\'1508\' or amtlong=\'1509\' or amtlong=\'1510\' or amtlong=\'1511\' or amtlong=\'1512\' or amtlong=\'1513\' or amtlong=\'1514\' or amtlong=\'1515\' or amtlong=\'1516\' or amtlong=\'1517\' or amtlong=\'1518\' or amtlong=\'1519\' or amtlong=\'1520\' or amtlong=\'1521\' or amtlong=\'1522\' or amtlong=\'1523\' or amtlong=\'1524\' or amtlong=\'1525\' or amtlong=\'1526\' or amtlong=\'1527\' or amtlong=\'1528\' or amtlong=\'1529\' or amtlong=\'1530\' or amtlong=\'1531\' or amtlong=\'1532\' or amtlong=\'1533\' or amtlong=\'1534\' or amtlong=\'1535\' or amtlong=\'1536\' or amtlong=\'1537\' or amtlong=\'1538\' or amtlong=\'1539\' or amtlong=\'1540\' or amtlong=\'1541\' or amtlong=\'1542\' or amtlong=\'1543\' or amtlong=\'1544\' or amtlong=\'1545\' or amtlong=\'1546\' or amtlong=\'1547\' or amtlong=\'1548\' or amtlong=\'1549\' or amtlong=\'1550\' or amtlong=\'1551\' or amtlong=\'1552\' or amtlong=\'1553\' or amtlong=\'1554\' or amtlong=\'1555\' or amtlong=\'1556\' or amtlong=\'1557\' or amtlong=\'1558\' or amtlong=\'1559\' or amtlong=\'1560\' or amtlong=\'1561\' or amtlong=\'1562\' or amtlong=\'1563\' or amtlong=\'1564\' or amtlong=\'1565\' or amtlong=\'1566\' or amtlong=\'1567\' or amtlong=\'1568\' or amtlong=\'1569\' or amtlong=\'1570\' or amtlong=\'1571\' or amtlong=\'1572\' or amtlong=\'1573\' or amtlong=\'1574\' or amtlong=\'1575\' or amtlong=\'1576\' or amtlong=\'1577\' or amtlong=\'1578\' or amtlong=\'1579\' or amtlong=\'1580\' or amtlong=\'1581\' or amtlong=\'1582\' or amtlong=\'1583\' or amtlong=\'1584\' or amtlong=\'1585\' or amtlong=\'1586\' or amtlong=\'1587\' or amtlong=\'1588\' or amtlong=\'1589\' or amtlong=\'1590\' or amtlong=\'1591\' or amtlong=\'1592\' or amtlong=\'1593\' or amtlong=\'1594\' or amtlong=\'1595\' or amtlong=\'1596\' or amtlong=\'1597\' or amtlong=\'1598\' or amtlong=\'1599\' or amtlong=\'1600\' or amtlong=\'1601\' or amtlong=\'1602\' or amtlong=\'1603\' or amtlong=\'1604\' or amtlong=\'1605\' or amtlong=\'1606\' or amtlong=\'1607\' or amtlong=\'1608\' or amtlong=\'1609\' or amtlong=\'1610\' or amtlong=\'1611\' or amtlong=\'1612\' or amtlong=\'1613\' or amtlong=\'1614\' or amtlong=\'1615\' or amtlong=\'1616\' or amtlong=\'1617\' or amtlong=\'1618\' or amtlong=\'1619\' or amtlong=\'1620\' or amtlong=\'1621\' or amtlong=\'1622\' or amtlong=\'1623\' or amtlong=\'1624\' or amtlong=\'1625\' or amtlong=\'1626\' or amtlong=\'1627\' or amtlong=\'1628\' or amtlong=\'1629\' or amtlong=\'1630\' or amtlong=\'1631\' or amtlong=\'1632\' or amtlong=\'1633\' or amtlong=\'1634\' or amtlong=\'1635\' or amtlong=\'1636\' or amtlong=\'1637\' or amtlong=\'1638\' or amtlong=\'1639\' or amtlong=\'1640\' or amtlong=\'1641\' or amtlong=\'1642\' or amtlong=\'1643\' or amtlong=\'1644\' or amtlong=\'1645\' or amtlong=\'1646\' or amtlong=\'1647\' or amtlong=\'1648\' or amtlong=\'1649\' or amtlong=\'1650\' or amtlong=\'1651\' or amtlong=\'1652\' or amtlong=\'1653\' or amtlong=\'1654\' or amtlong=\'1655\' or amtlong=\'1656\' or amtlong=\'1657\' or amtlong=\'1658\' or amtlong=\'1659\' or amtlong=\'1660\' or amtlong=\'1661\' or amtlong=\'1662\' or amtlong=\'1663\' or amtlong=\'1664\' or amtlong=\'1665\' or amtlong=\'1666\' or amtlong=\'1667\' or amtlong=\'1668\' or amtlong=\'1669\' or amtlong=\'1670\' or amtlong=\'1671\' or amtlong=\'1672\' or amtlong=\'1673\' or amtlong=\'1674\' or amtlong=\'1675\' or amtlong=\'1676\' or amtlong=\'1677\' or amtlong=\'1678\' or amtlong=\'1679\' or amtlong=\'1680\' or amtlong=\'1681\' or amtlong=\'1682\' or amtlong=\'1683\' or amtlong=\'1684\' or amtlong=\'1685\' or amtlong=\'1686\' or amtlong=\'1687\' or amtlong=\'1688\' or amtlong=\'1689\' or amtlong=\'1690\' or amtlong=\'1691\' or amtlong=\'1692\' or amtlong=\'1693\' or amtlong=\'1694\' or amtlong=\'1695\' or amtlong=\'1696\' or amtlong=\'1697\' or amtlong=\'1698\' or amtlong=\'1699\' or amtlong=\'1700\' or amtlong=\'1701\' or amtlong=\'1702\' or amtlong=\'1703\' or amtlong=\'1704\' or amtlong=\'1705\' or amtlong=\'1706\' or amtlong=\'1707\' or amtlong=\'1708\' or amtlong=\'1709\' or amtlong=\'1710\' or amtlong=\'1711\' or amtlong=\'1712\' or amtlong=\'1713\' or amtlong=\'1714\' or amtlong=\'1715\' or amtlong=\'1716\' or amtlong=\'1717\' or amtlong=\'1718\' or amtlong=\'1719\' or amtlong=\'1720\' or amtlong=\'1721\' or amtlong=\'1722\' or amtlong=\'1723\' or amtlong=\'1724\' or amtlong=\'1725\' or amtlong=\'1726\' or amtlong=\'1727\' or amtlong=\'1728\' or amtlong=\'1729\' or amtlong=\'1730\' or amtlong=\'1731\' or amtlong=\'1732\' or amtlong=\'1733\' or amtlong=\'1734\' or amtlong=\'1735\' or amtlong=\'1736\' or amtlong=\'1737\' or amtlong=\'1738\' or amtlong=\'1739\' or amtlong=\'1740\' or amtlong=\'1741\' or amtlong=\'1742\' or amtlong=\'1743\' or amtlong=\'1744\' or amtlong=\'1745\' or amtlong=\'1746\' or amtlong=\'1747\' or amtlong=\'1748\' or amtlong=\'1749\' or amtlong=\'1750\' or amtlong=\'1751\' or amtlong=\'1752\' or amtlong=\'1753\' or amtlong=\'1754\' or amtlong=\'1755\' or amtlong=\'1756\' or amtlong=\'1757\' or amtlong=\'1758\' or amtlong=\'1759\' or amtlong=\'1760\' or amtlong=\'1761\' or amtlong=\'1762\' or amtlong=\'1763\' or amtlong=\'1764\' or amtlong=\'1765\' or amtlong=\'1766\' or amtlong=\'1767\' or amtlong=\'1768\' or amtlong=\'1769\' or amtlong=\'1770\' or amtlong=\'1771\' or amtlong=\'1772\' or amtlong=\'1773\' or amtlong=\'1774\' or amtlong=\'1775\' or amtlong=\'1776\' or amtlong=\'1777\' or amtlong=\'1778\' or amtlong=\'1779\' or amtlong=\'1780\' or amtlong=\'1781\' or amtlong=\'1782\' or amtlong=\'1783\' or amtlong=\'1784\' or amtlong=\'1785\' or amtlong=\'1786\' or amtlong=\'1787\' or amtlong=\'1788\' or amtlong=\'1789\' or amtlong=\'1790\' or amtlong=\'1791\' or amtlong=\'1792\' or amtlong=\'1793\' or amtlong=\'1794\' or amtlong=\'1795\' or amtlong=\'1796\' or amtlong=\'1797\' or amtlong=\'1798\' or amtlong=\'1799\' or amtlong=\'1800\' or amtlong=\'1801\' or amtlong=\'1802\' or amtlong=\'1803\' or amtlong=\'1804\' or amtlong=\'1805\' or amtlong=\'1806\' or amtlong=\'1807\' or amtlong=\'1808\' or amtlong=\'1809\' or amtlong=\'1810\' or amtlong=\'1811\' or amtlong=\'1812\' or amtlong=\'1813\' or amtlong=\'1814\' or amtlong=\'1815\' or amtlong=\'1816\' or amtlong=\'1817\' or amtlong=\'1818\' or amtlong=\'1819\' or amtlong=\'1820\' or amtlong=\'1821\' or amtlong=\'1822\' or amtlong=\'1823\' or amtlong=\'1824\' or amtlong=\'1825\' or amtlong=\'1826\' or amtlong=\'1827\' or amtlong=\'1828\' or amtlong=\'1829\' or amtlong=\'1830\' or amtlong=\'1831\' or amtlong=\'1832\' or amtlong=\'1833\' or amtlong=\'1834\' or amtlong=\'1835\' or amtlong=\'1836\' or amtlong=\'1837\' or amtlong=\'1838\' or amtlong=\'1839\' or amtlong=\'1840\' or amtlong=\'1841\' or amtlong=\'1842\' or amtlong=\'1843\' or amtlong=\'1844\' or amtlong=\'1845\' or amtlong=\'1846\' or amtlong=\'1847\' or amtlong=\'1848\' or amtlong=\'1849\' or amtlong=\'1850\' or amtlong=\'1851\' or amtlong=\'1852\' or amtlong=\'1853\' or amtlong=\'1854\' or amtlong=\'1855\' or amtlong=\'1856\' or amtlong=\'1857\' or amtlong=\'1858\' or amtlong=\'1859\' or amtlong=\'1860\' or amtlong=\'1861\' or amtlong=\'1862\' or amtlong=\'1863\' or amtlong=\'1864\' or amtlong=\'1865\' or amtlong=\'1866\' or amtlong=\'1867\' or amtlong=\'1868\' or amtlong=\'1869\' or amtlong=\'1870\' or amtlong=\'1871\' or amtlong=\'1872\' or amtlong=\'1873\' or amtlong=\'1874\' or amtlong=\'1875\' or amtlong=\'1876\' or amtlong=\'1877\' or amtlong=\'1878\' or amtlong=\'1879\' or amtlong=\'1880\' or amtlong=\'1881\' or amtlong=\'1882\' or amtlong=\'1883\' or amtlong=\'1884\' or amtlong=\'1885\' or amtlong=\'1886\' or amtlong=\'1887\' or amtlong=\'1888\' or amtlong=\'1889\' or amtlong=\'1890\' or amtlong=\'1891\' or amtlong=\'1892\' or amtlong=\'1893\' or amtlong=\'1894\' or amtlong=\'1895\' or amtlong=\'1896\' or amtlong=\'1897\' or amtlong=\'1898\' or amtlong=\'1899\' or amtlong=\'1900\' or amtlong=\'1901\' or amtlong=\'1902\' or amtlong=\'1903\' or amtlong=\'1904\' or amtlong=\'1905\' or amtlong=\'1906\' or amtlong=\'1907\' or amtlong=\'1908\' or amtlong=\'1909\' or amtlong=\'1910\' or amtlong=\'1911\' or amtlong=\'1912\' or amtlong=\'1913\' or amtlong=\'1914\' or amtlong=\'1915\' or amtlong=\'1916\' or amtlong=\'1917\' or amtlong=\'1918\' or amtlong=\'1919\' or amtlong=\'1920\' or amtlong=\'1921\' or amtlong=\'1922\' or amtlong=\'1923\' or amtlong=\'1924\' or amtlong=\'1925\' or amtlong=\'1926\' or amtlong=\'1927\' or amtlong=\'1928\' or amtlong=\'1929\' or amtlong=\'1930\' or amtlong=\'1931\' or amtlong=\'1932\' or amtlong=\'1933\' or amtlong=\'1934\' or amtlong=\'1935\' or amtlong=\'1936\' or amtlong=\'1937\' or amtlong=\'1938\' or amtlong=\'1939\' or amtlong=\'1940\' or amtlong=\'1941\' or amtlong=\'1942\' or amtlong=\'1943\' or amtlong=\'1944\' or amtlong=\'1945\' or amtlong=\'1946\' or amtlong=\'1947\' or amtlong=\'1948\' or amtlong=\'1949\' or amtlong=\'1950\' or amtlong=\'1951\' or amtlong=\'1952\' or amtlong=\'1953\' or amtlong=\'1954\' or amtlong=\'1955\' or amtlong=\'1956\' or amtlong=\'1957\' or amtlong=\'1958\' or amtlong=\'1959\' or amtlong=\'1960\' or amtlong=\'1961\' or amtlong=\'1962\' or amtlong=\'1963\' or amtlong=\'1964\' or amtlong=\'1965\' or amtlong=\'1966\' or amtlong=\'1967\' or amtlong=\'1968\' or amtlong=\'1969\' or amtlong=\'1970\' or amtlong=\'1971\' or amtlong=\'1972\' or amtlong=\'1973\' or amtlong=\'1974\' or amtlong=\'1975\' or amtlong=\'1976\' or amtlong=\'1977\' or amtlong=\'1978\' or amtlong=\'1979\' or amtlong=\'1980\' or amtlong=\'1981\' or amtlong=\'1982\' or amtlong=\'1983\' or amtlong=\'1984\' or amtlong=\'1985\' or amtlong=\'1986\' or amtlong=\'1987\' or amtlong=\'1988\' or amtlong=\'1989\' or amtlong=\'1990\' or amtlong=\'1991\' or amtlong=\'1992\' or amtlong=\'1993\' or amtlong=\'1994\' or amtlong=\'1995\' or amtlong=\'1996\' or amtlong=\'1997\' or amtlong=\'1998\' or amtlong=\'1999\' or amtlong=\'2000\' or amtlong=\'2001\' or amtlong=\'2002\' or amtlong=\'2003\' or amtlong=\'2004\' or amtlong=\'2005\' or amtlong=\'2006\' or amtlong=\'2007\' or amtlong=\'2008\' or amtlong=\'2009\' or amtlong=\'2010\' or amtlong=\'2011\' or amtlong=\'2012\' or amtlong=\'2013\' or amtlong=\'2014\' or amtlong=\'2015\' or amtlong=\'2016\' or amtlong=\'2017\' or amtlong=\'2018\' or amtlong=\'2019\' or amtlong=\'2020\' or amtlong=\'2021\' or amtlong=\'2022\' or amtlong=\'2023\' or amtlong=\'2024\' or amtlong=\'2025\' or amtlong=\'2026\' or amtlong=\'2027\' or amtlong=\'2028\' or amtlong=\'2029\' or amtlong=\'2030\' or amtlong=\'2031\' or amtlong=\'2032\' or amtlong=\'2033\' or amtlong=\'2034\' or amtlong=\'2035\' or amtlong=\'2036\' or amtlong=\'2037\' or amtlong=\'2038\' or amtlong=\'2039\' or amtlong=\'2040\' or amtlong=\'2041\' or amtlong=\'2042\' or amtlong=\'2043\' or amtlong=\'2044\' or amtlong=\'2045\' or amtlong=\'2046\' or amtlong=\'2047\' )  ','segment') 
limit 10;



----2000多个模糊匹配查询
select sum(cast(r[0] as bigint)) as cnt from 
    ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and ( content=\'娃哈哈桂圆莲子八宝粥\' or content=\'500ml娃哈哈非常冰红茶\' or content=\'280ml娃哈哈营养快线原味\' or content=\'280ml娃哈哈营养快线菠萝\' or content=\'500ml娃哈哈营养快线原味\' or content=\'500ml娃哈哈营养快线菠萝\' or content=\'350ml呦呦奶茶原味\' or content=\'350ml呦呦奶茶桂花\' or content=\'350ml呦呦奶茶茉莉\' or content=\'王老吉凉茶\' or content=\'355ml可口可乐\' or content=\'355ml雪碧\' or content=\'355ml醒目苹果\' or content=\'355ml醒目西瓜\' or content=\'600ml雪碧\' or content=\'600ml可口可乐\' or content=\'500ml醒目苹果\' or content=\'可口可乐\' or content=\'雪碧\' or content=\'330ml酷儿橙汁\' or content=\'470ml茶研工坊清研\' or content=\'480ml雀巢冰爽柠檬茶\' or content=\'450ml美汁源果粒橙\' or content=\'美汁源果粒橙\' or content=\'光明橙汁饮料\' or content=\'香派红糖姜茶\' or content=\'雀巢咖啡盒装\' or content=\'雀巢咖啡12\' or content=\'农夫果园100胡萝卜\' or content=\'农夫果园100番茄味\' or content=\'550ml农夫山泉天然水普通型\' or content=\'380ml农夫山泉天然水\' or content=\'600ml农夫果园30橙胡味\' or content=\'600ml农夫果园30菠芒\' or content=\'380ml农夫果园30番莓味\' or content=\'红牛饮料促销\' or content=\'80g香飘飘奶茶原味\' or content=\'80g香飘飘奶茶草莓\' or content=\'80g香飘飘奶茶麦香\' or content=\'80g香飘飘奶茶香芋\' or content=\'70g香飘飘珍珠奶茶香芋\' or content=\'70g香飘飘珍珠奶茶巧克力\' or content=\'70g香飘飘珍珠奶茶原味红茶\' or content=\'72g大好大香约奶茶哈密瓜\' or content=\'22g大好大香约条装奶茶香芋\' or content=\'22g大好大香约条装奶茶草莓\' or content=\'22g大好大香约条装奶茶原味\' or content=\'80g喜之郎优乐美原味\' or content=\'480ml雀巢冰极茶\' or content=\'香派蜂蜜姜茶\' or content=\'雀巢咖啡\' or content=\'雀巢咖啡伴侣\' or content=\'雀巢咖啡杯装\' or content=\'雀巢咖啡1210条装\' or content=\'康师傅橙汁饮品\' or content=\'490ml康师傅冰红茶\' or content=\'500ml康师傅茉莉清茶\' or content=\'500ml康师傅每日C葡萄\' or content=\'340ml康师傅冰红茶\' or content=\'340ml康师傅每日C橙汁\' or content=\'340ml康师傅每日C水晶葡萄\' or content=\'250ml康师傅冰红茶\' or content=\'250ml康师傅橙汁饮料\' or content=\'72g相约奶茶原味\' or content=\'72g相约奶茶麦香\' or content=\'72g相约奶茶咖啡\' or content=\'72g相约奶茶巧克力\' or content=\'72g相约奶茶草莓\' or content=\'80g喜之郎优乐美香芋\' or content=\'80g喜之郎优乐美草莓\' or content=\'80g喜之郎优乐美麦香\' or content=\'500ml娃哈哈营养快线香草\' or content=\'600ml娃哈哈激活柠檬\' or content=\'600ml娃哈哈激活柑橘\' or content=\'500ml娃哈哈龙井绿茶低糖\' or content=\'350ml启力卡布奇诺口味\' or content=\'350ml启力焦糖玛奇朵口味\' or content=\'200ml娃哈哈爽歪歪益生菌\' or content=\'550ml尖叫纤维饮料柠檬味\' or content=\'550ml尖叫运动饮料西柚\' or content=\'550ml尖叫植物饮料复合果味\' or content=\'农夫果园30菠芒味\' or content=\'农夫果园30番莓味\' or content=\'250ML红牛\' or content=\'农夫果园30橙胡味\' or content=\'农夫果园100橙汁\' or content=\'500ml康师傅水晶葡萄\' or content=\'500ml康师傅水蜜桃\' or content=\'500ml康师傅每日C橙汁\' or content=\'500ml康师傅绿茶\' or content=\'480ml原叶冰红茶\' or content=\'480ml原叶绿茶\' or content=\'500ml娃哈哈思慕C香橙味\' or content=\'500ml娃哈哈思慕C桃杏味\' or content=\'500ml娃哈哈思慕C芒果味\' or content=\'250ml娃哈哈营养快线菠萝味\' or content=\'250ml娃哈哈营养快线原味\' or content=\'600ML芬达\' or content=\'500ml醒目西瓜味\' or content=\'470ml茶研工坊清本绿茶\' or content=\'220ml娃哈哈乳娃娃\' or content=\'500ml呦呦奶茶奶味茶桂花\' or content=\'500ml呦呦奶茶奶味茶原味\' or content=\'500ml呦呦奶茶奶味茶茉莉\' or content=\'450ml酷儿橙汁\' or content=\'500ml康师傅每日C水晶葡萄\' or content=\'550ml水森活纯净水\' or content=\'娃哈哈纯净水\' or content=\'596ml娃哈哈纯真年代\' or content=\'娃哈哈纯净水\' or content=\'农夫山泉天然水\' or content=\'农夫山泉天然水\' or content=\'600ml康师傅纯净水\' or content=\'350ml康师傅纯净水\' or content=\'250ml伊利早餐奶麦香\' or content=\'250ml伊利早餐奶鸡蛋\' or content=\'250ml伊利双果奇缘芒果西蕃莲\' or content=\'250ml伊利双果奇缘荔枝梨\' or content=\'250ml伊利双果奇缘哈密瓜猕猴桃\' or content=\'娃哈哈AD钙奶220ml24\' or content=\'250ml伊利优酸乳原味\' or content=\'250ml伊利优酸乳草莓味\' or content=\'250ml伊利双果奇缘菠萝橙味\' or content=\'250ml伊利果之优酸乳原味\' or content=\'250ml伊利果之优酸乳草莓\' or content=\'250ml伊利果之优酸乳菠萝\' or content=\'250ml伊利早餐奶核桃\' or content=\'250ml伊利早餐奶花生味\' or content=\'250ml伊利草莓奶\' or content=\'250ml伊利优酸乳蓝莓味\' or content=\'250ml伊利双果奇缘木瓜杏味\' or content=\'伊利纯牛奶\' or content=\'伊利营养舒化奶全脂型\' or content=\'伊利营养舒化奶低脂\' or content=\'308g广信大冰糖\' or content=\'80g百诺麦丽素\' or content=\'77g百诺巧克力草莓\' or content=\'85g百诺奶心果仁\' or content=\'37g曼妥思薄荷条装\' or content=\'37g曼妥思青柠条装\' or content=\'35g阿尔卑斯牛奶条装\' or content=\'35g阿尔卑斯草莓条装\' or content=\'阿尔卑斯牛奶\' or content=\'阿尔卑斯鲜橙\' or content=\'69g清嘴含片草莓味\' or content=\'69g清嘴含片柠檬味\' or content=\'绿箭三条装\' or content=\'益达蓝莓单条装\' or content=\'益达木糖醇草莓饼装40粒\' or content=\'益达木糖醇薄荷饼装40粒\' or content=\'瑞士糖草莓味条装\' or content=\'瑞士糖黑加仑子味条装\' or content=\'25g旺仔QQ糖葡萄\' or content=\'25g旺仔QQ糖菠萝\' or content=\'25g旺仔QQ糖草莓\' or content=\'70g旺仔QQ糖水蜜桃\' or content=\'70g旺仔QQ糖荔枝\' or content=\'70g旺仔QQ糖草莓\' or content=\'120g上好佳青苹果硬糖\' or content=\'120g上好佳什锦果糖\' or content=\'120上好佳牛奶软糖\' or content=\'120g上好佳缤纷什锦软糖\' or content=\'王老吉润喉糖\' or content=\'18g旺仔牛奶糖\' or content=\'120g上好佳提子硬糖\' or content=\'大大切切乐泡泡糖蜜瓜味\' or content=\'35g瑞士糖草莓味条装\' or content=\'35g瑞士青苹果味条装\' or content=\'瑞士糖柠檬味条装\' or content=\'瑞士糖香橙味条装\' or content=\'瑞士糖黑加仑子味条装\' or content=\'大大卷切切乐草莓味12卷\' or content=\'大大卷切切乐青柠味12卷\' or content=\'绿箭薄荷糖原味\' or content=\'绿箭薄荷糖茉莉花茶\' or content=\'绿箭瓶装40粒\' or content=\'绿箭三条装\' or content=\'绿箭超强薄荷味单支装\' or content=\'五片绿箭单支装\' or content=\'绿箭分享包\' or content=\'益达蓝莓单条装\' or content=\'益达香浓蜜瓜40粒瓶装\' or content=\'100g喔喔奶糖红豆味\' or content=\'100g喔喔奶糖原味\' or content=\'阿尔卑斯棒棒糖牛奶味\' or content=\'阿尔卑斯棒棒糖草莓味\' or content=\'阿尔卑斯棒棒糖芒果\' or content=\'阿尔卑斯棒棒糖树莓\' or content=\'25g旺仔QQ糖蓝莓\' or content=\'70g旺仔QQ糖菠萝\' or content=\'70g旺仔QQ糖蓝莓\' or content=\'70g旺仔QQ糖葡萄\' or content=\'阿尔卑斯棒棒糖香蕉\' or content=\'阿尔卑斯棒棒糖香草\' or content=\'果然多CC卷菠萝\' or content=\'果然多CC卷草莓\' or content=\'150G金娃维C果冻爽\' or content=\'185G金娃大果肉果冻\' or content=\'218G金娃高钙椰果果冻\' or content=\'90g喜之郎香橙味果冻\' or content=\'200g喜之郎果肉单杯混装\' or content=\'218g喜之郎蜜桃果冻爽\' or content=\'218g喜之郎荔枝果冻爽\' or content=\'150g喜之郎荔枝维C爽\' or content=\'150g喜之郎芒果维C爽\' or content=\'150g喜之郎苹果维C爽\' or content=\'117g喜之郎茶味果冻桶\' or content=\'117g喜之郎咖啡味果冻桶\' or content=\'150G喜之郎菠萝维C爽\' or content=\'150G喜之郎香橙维C爽\' or content=\'150G喜之郎葡萄维C爽\' or content=\'218G喜之朗苹果果冻爽\' or content=\'旺旺咖啡冻\' or content=\'218g喜之郎芒果味果冻爽\' or content=\'18G奇多牛排\' or content=\'18G奇多火鸡\' or content=\'70G奇多牛排\' or content=\'70G奇多火鸡\' or content=\'100G正航梳打奶油饼\' or content=\'100GD正航葱香味薄片饼\' or content=\'100G正航烧烤味薄片饼\' or content=\'120G正航蛋黄饼干\' or content=\'110G正航蛋奶饼干\' or content=\'60G正航快乐熊仔饼\' or content=\'60G正航快乐趣味饼\' or content=\'50G乐事原味\' or content=\'50G乐事烧烤\' or content=\'50G乐事红烩\' or content=\'50G乐事番茄\' or content=\'50G乐事波番茄\' or content=\'50G乐事波烤肋\' or content=\'120G乐事原味\' or content=\'120G乐事烤肉\' or content=\'120G乐事海鲜\' or content=\'120G乐事番茄\' or content=\'18G乐事原味\' or content=\'18G乐事烧烤\' or content=\'18G乐事红烩\' or content=\'18G乐事番茄\' or content=\'125g达能牛奶香脆\' or content=\'130g达能牛奶特浓夹心\' or content=\'130g达能牛奶特浓花生味夹心\' or content=\'45g达能牛奶香脆便利装\' or content=\'100g达能牛奶佳钙夹心牛奶\' or content=\'100g达能牛奶佳钙甜脆饼干\' or content=\'105g达能牛奶佳钙甜酥饼干\' or content=\'达能无限脆饼干玉米味\' or content=\'85g达能王子巧颗粒曲奇星\' or content=\'120g达能王子夹心草莓味\' or content=\'120g达能王子夹心巧克力味\' or content=\'100g达能甜趣\' or content=\'100g达能闲趣\' or content=\'500G福马蛋黄派\' or content=\'小熊维尼灌心饼牛奶味\' or content=\'小熊维尼灌心饼草莓味\' or content=\'小熊灌心饼奶油味\' or content=\'小熊灌心饼草莓味\' or content=\'375G福马蛋黄派\' or content=\'40G福马爱尚非蛋糕香蕉味\' or content=\'40G爱尚非蛋糕草莓味\' or content=\'80G爱尚非蛋糕草莓味\' or content=\'80G爱尚非蛋糕椰香味\' or content=\'160G爱尚非蛋糕草莓味\' or content=\'格里高百力濨白脱味\' or content=\'格力高双层百力滋巧克力味\' or content=\'格力高双层百力滋奶咖味\' or content=\'100g格力高菜园小饼芝麻味\' or content=\'100g格力高菜园小饼烧烤味\' or content=\'18g妙脆角葱香原味\' or content=\'咪咪巧克力棒蛋奶味\' or content=\'18g妙脆角美式茄汁\' or content=\'18g妙脆角魔力炭烧\' or content=\'18g妙脆角香浓辣鸡\' or content=\'40g妙脆角魔力炭烧\' or content=\'40g妙脆角葱香原味\' or content=\'40g妙脆角美式茄汁\' or content=\'200g三辉法式香奶面包\' or content=\'200g三辉日式点心面包\' or content=\'84g旺旺雪饼\' or content=\'52g旺旺仙贝\' or content=\'上好佳天然薯片原味\' or content=\'上好佳天然薯片烤肉口味\' or content=\'上好佳鲜虾片\' or content=\'上好佳朱古力粟米条\' or content=\'上好佳可可甜心香芋味\' or content=\'50g迪士尼牛奶灌心饼\' or content=\'50g迪士尼草莓灌心饼\' or content=\'40g迪士尼后调味红烧牛肉棒\' or content=\'30g迪士尼后牛奶棒\' or content=\'45g迪士尼草莓灌心饼\' or content=\'105g迪士尼葱香味饼\' or content=\'100g正航薄饼奶油味\' or content=\'380g正航快乐乖乖兔饼干\' or content=\'380g正航快乐趣味饼干\' or content=\'500g正航玉米酥饼干\' or content=\'500g正航花生酥\' or content=\'100g正航巧克力薄饼\' or content=\'上好佳天然薯片番茄口味\' or content=\'上好佳鲜虾条\' or content=\'上好佳荷兰豆\' or content=\'上好佳玉米口味\' or content=\'上好佳玉米花果仁奶油\' or content=\'上好佳玉米卷\' or content=\'上好佳草莓栗米条\' or content=\'上好佳番茄薯条\' or content=\'上好佳可可甜心\' or content=\'上好佳日本鱼果海苔味\' or content=\'125g康师傅32甜苏打奶油\' or content=\'125g康师傅32甜苏打柠檬\' or content=\'125g康师傅32甜苏打香巧\' or content=\'125g康师傅32甜苏打蓝莓\' or content=\'125g康师傅32甜苏打咖啡牛奶\' or content=\'100g康师傅32咸苏打葱香味\' or content=\'118g康师傅32酥松奶油\' or content=\'118g康师傅32酥松花生\' or content=\'118g康师傅32酥松巧克力\' or content=\'118g康师傅32酥松草莓\' or content=\'80g康师傅咸酥醇香奶油\' or content=\'80g康师傅咸酥葱香奶油\' or content=\'80g康师傅咸酥火腿芝士\' or content=\'80g康师傅甜酥榛巧\' or content=\'80g康师傅甜酥柠檬\' or content=\'80g康师傅甜酥蓝莓\' or content=\'80g康师傅甜酥酸奶\' or content=\'80g康师傅蛋黄酥酥牛奶\' or content=\'80g康师傅蛋黄酥酥原味\' or content=\'85g康师傅美味酥葱香\' or content=\'85g康师傅美味酥烧烤\' or content=\'85g康师傅美味酥蒜香鸡蓉\' or content=\'85g康师傅美味酥黑胡椒牛排\' or content=\'85g康师傅美味酥海苔\' or content=\'96g康师傅妙芙欧式奶油\' or content=\'96g康师傅妙芙欧式巧克力\' or content=\'96g康师傅妙芙欧式香芋牛奶\' or content=\'96g康师傅妙芙欧式鲜橙牛奶\' or content=\'40g康师傅彩笛卷巧克力\' or content=\'40g康师傅彩笛卷草莓\' or content=\'40g康师傅彩笛卷哈密瓜\' or content=\'60g康师傅乐芙球牛奶\' or content=\'60g康师傅乐芙球巧克力\' or content=\'60g康师傅乐芙球草莓\' or content=\'60g康师傅乐芙球蓝莓\' or content=\'好丽友巧克力派6枚装\' or content=\'好丽友巧克力派2枚装\' or content=\'好丽友好多鱼浓香茄汁\' or content=\'百力滋微辣比萨味\' or content=\'好丽友蘑古力香浓巧克力\' or content=\'好丽友蘑古力红豆巧克力\' or content=\'好丽友注心蛋黄派2枚装\' or content=\'格力高菜园小饼番茄味\' or content=\'达能王子夹心饼干牛奶巧克力\' or content=\'200G咪咪虾条\' or content=\'明治欣欣杯巧克力味\' or content=\'明治欣欣杯香蕉味\' or content=\'明治欣欣杯牛奶味\' or content=\'明治欣欣杯香橙味\' or content=\'明治欣欣杯草莓味\' or content=\'明治欣欣杯香橙味\' or content=\'明治欣欣杯朱古力\' or content=\'明治欣欣杯草莓味\' or content=\'明治欣欣杯香蕉味\' or content=\'150g长鼻王麦烧葱香口味\' or content=\'130g长鼻王麦烧蛋黄夹心\' or content=\'150g长鼻王麦烧海苔芝麻味\' or content=\'150g长鼻王麦烧原味\' or content=\'130g长鼻王麦烧花生夹心\' or content=\'150g长鼻王麦烧蕃茄口味\' or content=\'130g长鼻王麦烧巧克力夹心\' or content=\'160g长鼻王夹心卷蛋黄口味\' or content=\'48g长鼻王夹心卷蛋黄口味\' or content=\'90g卡夫奥利奥威化巧克力5条\' or content=\'75g卡夫奥利奥夹心巧克力饼干\' or content=\'80g凯达e趣夹心饼干奶油味\' or content=\'118g好搭档沙琪玛\' or content=\'绿豆糕\' or content=\'红豆糕\' or content=\'桂花糕\' or content=\'桔红糕\' or content=\'蛋糕\' or content=\'蛋糕\' or content=\'蛋糕\' or content=\'蛋糕\' or content=\'蛋糕\' or content=\'蛋糕\' or content=\'125g鬼脸嘟嘟花生\' or content=\'125g鬼脸嘟嘟草莓\' or content=\'哥俩好沙琪玛促销装\' or content=\'100g太平梳打饼干蔬菜\' or content=\'100g太平梳打饼干奶盐\' or content=\'100g太平梳打饼干香葱\' or content=\'350g康元柠檬卜夹心饼干\' or content=\'80g凯达e趣夹心饼干柠檬味\' or content=\'好多鱼烧烤味\' or content=\'好丽友蛋黄派注心蛋黄\' or content=\'亿合牛奶鸡蛋虾条\' or content=\'亿合原香味虾条\' or content=\'亿合什锦派\' or content=\'亿合原香味虾片\' or content=\'50G乐事芒果味\' or content=\'50G乐事青柠味\' or content=\'50G乐事鸡翅味\' or content=\'50G乐事黄瓜味\' or content=\'旺旺煎饼鸡蛋煎饼\' or content=\'达能王子曲奇星饼干醇香奶油\' or content=\'达能佳钙牛奶夹心饼干巧克力\' or content=\'波力鸡蛋捲\' or content=\'波力香葱捲\' or content=\'福马咪咪虾条\' or content=\'名称\' or content=\'115g恒康青青豆\' or content=\'96g恒康柳香瓜子\' or content=\'105g恒康五香瓜子\' or content=\'100g恒康小京生\' or content=\'68g广信西瓜子\' or content=\'118g香飘飘花生烤鸡味\' or content=\'118g香飘飘花生牛肉味\' or content=\'68g香飘飘花生牛肉味\' or content=\'68g香飘飘花生原味\' or content=\'80g大好大瓜子\' or content=\'120g亿合锅巴烧烤味\' or content=\'120g亿合锅巴麻辣味\' or content=\'138g大好大瓜子奶油味\' or content=\'香飘缘香辣花生鸡汁味\' or content=\'香飘缘脆皮松松果奇味\' or content=\'老酒花生\' or content=\'香飘缘原味香辣花生\' or content=\'大好大水煮花生五香味\' or content=\'大好大水煮花生香辣\' or content=\'香飘飘香辣花生烤鸡味\' or content=\'130g广信台湾甘草梅\' or content=\'128g广信冰糖杨梅\' or content=\'128g广信盐津榄\' or content=\'130g广信正野乌梅\' or content=\'103g广信正宗话梅\' or content=\'128g广信爽口榄\' or content=\'128g广信台湾情人梅\' or content=\'128g广信相思梅\' or content=\'108g广信原味野乌梅\' or content=\'23g洽洽怪怪豆麻辣\' or content=\'23g洽洽怪怪豆番茄\' or content=\'23g洽洽怪怪豆五香\' or content=\'52g洽洽怪怪豆五香\' or content=\'晋禾宫廷无核枣\' or content=\'晋禾阿胶无核枣\' or content=\'85g亨仕利袋装话梅皇\' or content=\'55g亨仕利袋装清香芒果\' or content=\'40g亨仕利袋装广式话梅\' or content=\'70g亨仕利袋装盐津山楂\' or content=\'85g亨仕利袋装话梅肉\' or content=\'85g亨仕利袋装话梅桃片\' or content=\'120g亨仕利瓶装泰国话梅\' or content=\'160g亨仕利瓶装野乌梅\' or content=\'150g亨仕利瓶装吃不厌桃肉\' or content=\'170g亨仕利瓶装特级话梅\' or content=\'70g亨仕利盐津梅\' or content=\'70g亨仕利盐津葡萄\' or content=\'75g亨仕利情人梅\' or content=\'180g亨仕利盐津葡萄\' or content=\'180g亨仕利开胃金桔\' or content=\'160g亨仕利话梅皇\' or content=\'150g亨仕利盐津桃肉\' or content=\'160g亨仕利话梅肉\' or content=\'170g亨仕利话梅橄榄\' or content=\'130g亨仕利盐津陈皮\' or content=\'180g亨仕利相思梅\' or content=\'160g亨仕利水晶杨梅\' or content=\'150g亨仕利甘草桃肉\' or content=\'亨仕利袋装盐津桃肉\' or content=\'亨仕利袋装甘草桃肉\' or content=\'亨仕利袋装相思梅\' or content=\'太仓香酥肉松\' or content=\'太仓肉松\' or content=\'太仓塑盒原味肉松\' or content=\'20g母亲牛肉棒原味\' or content=\'20g母亲牛肉棒香烤\' or content=\'10g母亲牛肉条葱爆\' or content=\'10g母亲牛肉条麻辣\' or content=\'10g母亲牛肉条原味\' or content=\'波力渔趣鳕柳丝辣味\' or content=\'波力渔趣鳕柳丝海苔味\' or content=\'萨啦咪烤鸡脖\' or content=\'萨啦咪啃德佬鸡翅\' or content=\'萨啦咪小鸡腿\' or content=\'萨啦咪11小鸡腿\' or content=\'萨啦咪大鸡爪\' or content=\'萨啦咪翅尖\' or content=\'萨啦咪BB丸子\' or content=\'萨啦咪鸭翅\' or content=\'萨啦咪大鸡腿\' or content=\'18G绿盛牛肉丁\' or content=\'30G绿盛农夫与海鱼柳夹心\' or content=\'28g绿盛牛肉丁芝麻味\' or content=\'40g绿盛牛肉粒原汁\' or content=\'40g绿盛牛肉粒沙嗲\' or content=\'30g绿盛牛肉粒红烧卤汁\' or content=\'100g祖名豆腐干海鲜\' or content=\'100g祖名豆腐干肉汁\' or content=\'100g祖名豆腐干五香\' or content=\'100g祖名豆腐干鸡汁\' or content=\'100g祖名豆腐干麻辣\' or content=\'鱼派香烤鱼丝\' or content=\'鱼派烟熏三文鱼味\' or content=\'鱼派烧烤味\' or content=\'鱼派烤墨鱼味\' or content=\'鱼派天然原味\' or content=\'鱼派泰式香辣味\' or content=\'鱼派风味辣鱼片\' or content=\'唯新牛肉脯原味\' or content=\'唯新猪肉脯原味\' or content=\'唯新金枪鱼脯原味\' or content=\'唯新猪肉脯原味\' or content=\'唯新猪肉脯果味\' or content=\'唯新猪肉脯\' or content=\'唯新猪肉脯黑胡椒味\' or content=\'唯新猪肉脯麻辣味\' or content=\'唐纳兹红烧牛肉粥\' or content=\'唐纳兹桂圆核桃粉\' or content=\'唐纳兹高钙桂花西湖藕粉\' or content=\'唐纳兹葱香牛肉粥\' or content=\'唐纳兹皮蛋瘦肉粥\' or content=\'唐纳兹鸡肉粥\' or content=\'唐纳兹核桃粉豆奶粉\' or content=\'新达利清炖排骨米线\' or content=\'新达利香辣排骨米线\' or content=\'新达利酸辣牛肉米线\' or content=\'新达利香辣牛肉米线\' or content=\'新达利香菇炖鸡米线\' or content=\'新达利酸辣牛肉桶装米线\' or content=\'新达利香辣牛肉桶装米线\' or content=\'新达利香辣排骨桶装米线\' or content=\'新达利香菇炖鸡桶装米线\' or content=\'新达利清炖排骨桶装米线\' or content=\'华丰巴西烤肉\' or content=\'华丰原汁牛排\' or content=\'华丰台式烤肠\' or content=\'华丰孜然羊排\' or content=\'华丰香烤鸡翅\' or content=\'华丰叉烧烤肉\' or content=\'华丰碳烤牛肉\' or content=\'华丰串烤甜虾\' or content=\'华丰麻辣牛排\' or content=\'华丰铁板牛肉\' or content=\'华丰田园香辣鸡\' or content=\'华丰阿根廷烤肉\' or content=\'华丰德国香肠\' or content=\'华丰挪威海鲜\' or content=\'日清UFO铁板牛肉\' or content=\'日清UFO四川火锅\' or content=\'日清UFO虾仁炒面\' or content=\'日清碗炒面大王糖醋排骨\' or content=\'日清碗面炒大王葱油肉丝\' or content=\'日清碗面炒大王八宝辣酱\' or content=\'日清碗面炒大王红油辣肉\' or content=\'日清点心杯香香牛肉\' or content=\'日清点心杯鲜鲜虾仁\' or content=\'日清点心杯美美罗宋汤\' or content=\'日清袋炒面大王糖醋排骨\' or content=\'日清袋炒面大王葱油肉丝\' or content=\'日清骨汤拉面海鲜\' or content=\'日清骨汤拉面牛骨\' or content=\'日清面道什锦海鲜\' or content=\'日清面道腐乳炖肉\' or content=\'童师傅馄沌海鲜\' or content=\'童师傅馄沌鲜肉\' or content=\'统一小当家奇奇怪怪\' or content=\'统一小当家魔力辣子鸡\' or content=\'统一小当家红烧\' or content=\'统一小当家香葱\' or content=\'统一小当家五香\' or content=\'统一小当家鸡汁\' or content=\'好劲道上汤大骨麻辣牛肉\' or content=\'好劲道上汤大骨红烧牛肉\' or content=\'巧面馆香菇炖鸡袋面\' or content=\'巧面馆红烧牛肉袋面\' or content=\'来一桶鲜虾\' or content=\'来一桶红烧\' or content=\'好劲道鸡蛋面雪菜\' or content=\'好劲道鸡蛋面五香\' or content=\'袋统一100鲜虾鱼板面\' or content=\'袋统一100葱爆牛肉面\' or content=\'75g顾大嫂菜泡饭海鲜\' or content=\'75g顾大嫂菜泡饭宫廷\' or content=\'160g旺旺小馒头\' or content=\'康师傅鱼板鲜虾面\' or content=\'康师傅笋干老鸭煲\' or content=\'康师傅红烧牛肉面\' or content=\'康师傅鲜虾鱼板面\' or content=\'康师傅红烧牛肉面\' or content=\'康师傅香辣牛肉面袋\' or content=\'康师傅红烧牛肉面袋\' or content=\'康师傅魔鬼拉面\' or content=\'康师傅蟹粉狮子头面\' or content=\'康师傅香辣牛肉面\' or content=\'康师傅东坡红烧肉面\' or content=\'康师傅红烧烤牛肉面\' or content=\'香飘飘方便粉丝鲜虾海苔\' or content=\'香飘飘方便粉丝红烧牛肉\' or content=\'香飘飘方便粉丝香辣排骨\' or content=\'香飘飘过桥米线鲜虾海苔\' or content=\'香飘飘过桥米线红烧牛肉\' or content=\'香飘飘过桥米线川香酸辣\' or content=\'香飘飘小馄饨香茹炖鸡\' or content=\'香飘飘小馄饨海鲜虾仁\' or content=\'香飘飘小馄饨上汤鲜肉\' or content=\'香飘飘小馄饨香辣牛肉\' or content=\'香飘飘汤年糕雪菜笋干\' or content=\'香飘飘菜泡饭海鲜泡饭\' or content=\'香飘飘菜泡饭鸡汁泡饭\' or content=\'香飘飘菜泡饭霉菜扣肉\' or content=\'康师傅海鲜碗面\' or content=\'康师傅笋干老鸭煲碗面\' or content=\'康师傅香辣牛肉碗面\' or content=\'康师傅香菇炖鸡碗\' or content=\'康师傅香菇炖鸡杯面\' or content=\'巧面馆香菇炖鸡面桶装\' or content=\'巧面馆红烧牛肉面桶装\' or content=\'日清炒面大王黑椒牛柳\' or content=\'日清开杯乐五香牛肉\' or content=\'日清开杯乐意大利牛肉\' or content=\'日清开杯乐香浓叉烧\' or content=\'日清开杯乐虾仁原味\' or content=\'日清开杯乐香辣牛肉\' or content=\'日清面道精炖牛肉\' or content=\'童师傅馄钝香菇\' or content=\'童师傅馄钝牛肉\' or content=\'娃哈哈大厨艺杭州片儿川\' or content=\'娃哈哈大厨艺鲜汤虾仁\' or content=\'娃哈哈大厨艺香辣牛肉味\' or content=\'统一100浓香排骨面\' or content=\'统一100精炖番茄牛肉面\' or content=\'统一100红椒牛肉面\' or content=\'康师傅东坡红烧肉面\' or content=\'华丰魔法师怪味豆\' or content=\'千喜鹤新驱动鸡肉肠\' or content=\'千喜鹤金牌王中王\' or content=\'千喜鹤王中王\' or content=\'千喜鹤甜玉米香肠\' or content=\'千喜鹤金装喜鹤王\' or content=\'千喜鹤新驱动火腿肠\' or content=\'千喜鹤鸡肉王\' or content=\'伊利学生营养奶粉\' or content=\'伊利学生高锌钙奶粉\' or content=\'智多星AD钙豆奶粉\' or content=\'香派西湖藕粉桂花莲子\' or content=\'波力牛肉夹心鳕柳丝\' or content=\'波力芝麻夹心鳕柳丝\' or content=\'波力原味鳕柳丝\' or content=\'波力香辣鳕柳丝\' or content=\'波力海苔鳕柳丝\' or content=\'波力原味鳕柳丝\' or content=\'波力牛肉夹心鳕柳丝\' or content=\'波力芝麻夹心鳕柳丝\' or content=\'65g爽康香辣鸡翅\' or content=\'70g爽康香酥凤爪\' or content=\'85g爽康香酥鸡腿\' or content=\'65g爽康酱汁鸭翅\' or content=\'40g爽康精品喜蛋\' or content=\'波力原味海苔\' or content=\'波力原味海苔\' or content=\'波力脆片海苔\' or content=\'香派黑芝麻糊\' or content=\'雀巢麦片高钙\' or content=\'雀巢麦片燕麦\' or content=\'伊利女士营养奶粉\' or content=\'3克美好时光原味海苔\' or content=\'美好时光45克海苔原味\' or content=\'千喜鹤优级火腿肠\' or content=\'千喜鹤金牌王中王火腿肠\' or content=\'高露洁多能波浪型牙刷\' or content=\'三笑2309牙刷\' or content=\'90克高露洁防蛀美白牙膏\' or content=\'140G高露洁三重功效\' or content=\'90G高露洁草本牙膏\' or content=\'三笑704香柠清香牙刷送手机链\' or content=\'高露洁草本翠爽水晶牙膏\' or content=\'三笑2413舒适洁净爱情海牙刷\' or content=\'三笑S503纸卡牙刷\' or content=\'90g佳洁士强根固齿\' or content=\'90g佳洁士草本水晶\' or content=\'120g田七双钙固齿\' or content=\'140ML索芙特亮发保温嗜喱水\' or content=\'175g夏士莲洗发水\' or content=\'400ml舒蕾洗发水\' or content=\'8g舒蕾洗发水简装去屑清爽型\' or content=\'海飞丝洗发水简装去屑\' or content=\'200ml飘柔日用护理\' or content=\'小青清纯植物精华护发素营养润色\' or content=\'小青清纯植物精华洗发露去屑修护\' or content=\'小青清纯植物精华护发素修护顺滑\' or content=\'小青溥纯植物精华洗发露舒爽顺滑\' or content=\'舒蕾洗发露柔滑型\' or content=\'飘柔洗发露去屑\' or content=\'舒蕾凝水焗油洗发露简\' or content=\'175ML夏士莲洗发水清爽长效\' or content=\'380ML索芙特木瓜白肤香浴油精纯沐浴露\' or content=\'120G索芙特木瓜白肤SOD蜜\' or content=\'丁家宜洗面奶美白补水\' or content=\'丁家宜洗面奶美白控油\' or content=\'丁家宜男士活炭劲爽洁面乳\' or content=\'200ml六神清新滋润沐浴露\' or content=\'200ml舒肤佳沐浴露\' or content=\'小青清纯植物养护洁面乳祛痘\' or content=\'小青清纯植物养护洁面乳控油\' or content=\'小青清纯植物养护洁面乳美白\' or content=\'小青四季滋养护手霜\' or content=\'小青清润美白保湿霜\' or content=\'200ml六神清凉沐浴露绿茶\' or content=\'300ML蓝月亮芦荟洗手液\' or content=\'125g纳爱斯香皂\' or content=\'雕牌增白皂\' or content=\'300g雕牌洗衣粉\' or content=\'180g雕牌天然皂粉\' or content=\'纳爱斯珍珠营养香皂\' or content=\'300g奥妙洗衣粉\' or content=\'500g雕牌洗洁精\' or content=\'威露士水果味洗手液\' or content=\'蓝月亮芦荟抑菌洗手液\' or content=\'226G奥妙皂\' or content=\'135G奥妙皂\' or content=\'V0002维达餐巾纸\' or content=\'0261叶雷餐巾纸\' or content=\'064GB清风餐巾纸\' or content=\'180抽叶蕾错不了面纸\' or content=\'8203纸音抽纸\' or content=\'B66AD清风餐巾纸\' or content=\'唯尔福卷筒纸\' or content=\'6包真真手帕纸\' or content=\'W112心相印皮夹\' or content=\'C910心相印手帕纸\' or content=\'B66AS清风手帕纸\' or content=\'0012维达三色超柔手帕纸\' or content=\'8801苗苗手帕纸\' or content=\'8802苗苗260软抽\' or content=\'8803苗苗180软抽\' or content=\'0605叶蕾手帕纸\' or content=\'0438叶蕾抽纸\' or content=\'0575叶蕾抽纸\' or content=\'苏菲立体护围日用洁翼5片\' or content=\'苏菲动感丝薄日用洁翼5片\' or content=\'苏菲弹力贴身日用洁翼10片\' or content=\'苏菲弹力贴身夜用洁翼5片\' or content=\'苏菲动感丝薄超长夜用洁翼4片\' or content=\'苏菲柔棉日5片\' or content=\'护舒宝护垫\' or content=\'护舒宝棉柔日用\' or content=\'102护舒宝瞬洁日用\' or content=\'护舒宝棉柔夜用\' or content=\'护舒宝日用丝薄\' or content=\'护舒宝夜用丝薄\' or content=\'2025珂蓉干爽网面\' or content=\'2023珂蓉丝棉表层\' or content=\'珂蓉倍爽卫生巾\' or content=\'珂蓉快易加长日用\' or content=\'苏菲柔棉夜5片\' or content=\'护舒宝护垫棉柔表层\' or content=\'2030珂蓉丝薄护翼卫生巾干爽网面\' or content=\'女单面印花三角裤两条\' or content=\'女单面印花三角裤两条\' or content=\'女单面印花三角裤两条\' or content=\'宜而爽女氨纶两条装三角裤\' or content=\'宜而爽女氨纶两条装三角裤\' or content=\'宜而爽女氨纶两条装三角裤\' or content=\'宜而爽男单面三角裤两条\' or content=\'宜而爽男单面三角裤两条\' or content=\'奕清方巾A001\' or content=\'奕清毛巾B1001\' or content=\'奕清毛巾A1003\' or content=\'奕清毛巾CM1601\' or content=\'奕清毛巾C8120\' or content=\'梦娜原子弹男棉袜运动A1508\' or content=\'梦娜原子弹男棉袜A1517\' or content=\'梦娜女棉袜B1308\' or content=\'梦娜5双装水晶丝短袜130\' or content=\'奕清毛巾B1004\' or content=\'梦娜休闲男袜A1516\' or content=\'梦娜休闲男袜A1857\' or content=\'梦娜休闲男袜747\' or content=\'梦娜休闲女袜6138\' or content=\'梦娜休闲女袜6219\' or content=\'梦娜休闲女袜6119\' or content=\'长命电池7简\' or content=\'长命电池5简\' or content=\'长命电池7精\' or content=\'长命电池5精\' or content=\'双鹿电池7普\' or content=\'双鹿电池5普\' or content=\'双鹿碱性电池5\' or content=\'好享和垃圾袋大\' or content=\'好享和垃圾袋中\' or content=\'好享和垃圾袋小\' or content=\'好享和纸杯\' or content=\'红珊瑚毛巾\' or content=\'玉麒麟毛巾\' or content=\'三利毛巾\' or content=\'妍妍毛巾\' or content=\'421盆\' or content=\'420盆\' or content=\'1130盆\' or content=\'1137盆\' or content=\'0233杯子\' or content=\'1009杯子\' or content=\'0227杯子\' or content=\'奕清毛巾A1202\' or content=\'兴盛不锈钢勺子\' or content=\'热水瓶\' or content=\'齐心抽杆夹\' or content=\'得力透明板夹\' or content=\'元昌订书机\' or content=\'齐心订书机\' or content=\'得力回型针\' or content=\'得力大头针\' or content=\'元昌图订\' or content=\'得力订书针\' or content=\'得力订书针\' or content=\'齐心文件夹\' or content=\'三木文件夹\' or content=\'齐心C330按扣袋\' or content=\'得力9545长尾夹\' or content=\'得力9544长尾夹\' or content=\'得力9492透明彩色票夹\' or content=\'玛丽60页软抄\' or content=\'玛丽80页硬抄\' or content=\'玛丽100页硬抄\' or content=\'得力美工刀\' or content=\'得力美工刀\' or content=\'益而高不锈钢剪刀\' or content=\'HB中华绘图铅笔\' or content=\'B中华绘图铅笔\' or content=\'2B中华绘图铅笔\' or content=\'金万年K1024中性笔\' or content=\'晨光GP1212中性笔\' or content=\'晨光GP1008中性笔\' or content=\'齐BP102R圆珠笔\' or content=\'晨光星潮ABP14701\' or content=\'金万年K3019圆珠笔\' or content=\'超级女生B1219C圆珠笔\' or content=\'白金BS60圆珠笔\' or content=\'400L学生三用圆规\' or content=\'高博士饭盒\' or content=\'高博士手工折纸\' or content=\'高博士笔袋D160200404\' or content=\'高博士笔袋D160200904\' or content=\'3B中华绘图铅笔\' or content=\'4B中华绘图铅笔\' or content=\'5B中华绘图铅笔\' or content=\'白雪修正液\' or content=\'6B中华绘图铅笔\' or content=\'西瓜太郎12色彩色笔\' or content=\'马利水彩颜料\' or content=\'西瓜太郎30CC胶水\' or content=\'中华白雪考试专用套装\' or content=\'超女活动铅笔\' or content=\'长城牌高级绘图橡皮\' or content=\'英语本\' or content=\'练习本\' or content=\'星光墨汁\' or content=\'得力6230直尺\' or content=\'得力6240直尺\' or content=\'得力6415三角尺\' or content=\'321有机半圆量角器\' or content=\'长城滚轮橡皮\' or content=\'15CM直尺\' or content=\'得力笔筒\' or content=\'得力7203修正带\' or content=\'西瓜太郎修正贴\' or content=\'得力7101固体胶\' or content=\'齐心B2651固体胶\' or content=\'永大双面胶\' or content=\'永大双面胶\' or content=\'永大学生胶带\' or content=\'永大封箱带\' or content=\'玛丽纪念册\' or content=\'添美同学录\' or content=\'真彩009中性笔\' or content=\'真彩0341F中性笔\' or content=\'晨光BP1188红圆珠笔\' or content=\'真彩0221B中性笔\' or content=\'齐心3636长尾夹15MM\' or content=\'齐心3635长尾夹19MM\' or content=\'齐心3634长尾夹25MM\' or content=\'齐心3633长尾夹32MM\' or content=\'齐心3632长尾夹41MM\' or content=\'齐心无线装订本4503A5\' or content=\'齐心无线装订本4506A5\' or content=\'五千年中性笔W289\' or content=\'五千年中性笔W297\' or content=\'通乐圆珠笔G308\' or content=\'青联横搁稿\' or content=\'红双喜乒乓球拍\' or content=\'红双喜乒乓球拍\' or content=\'红双喜乒乓球一星\' or content=\'红双喜乒乓球二星\' or content=\'红双喜羽毛球\' or content=\'粉条\' or content=\'冬枣\' or content=\'小黄花鱼\' or content=\'毛芋头\' or content=\'丰水梨\' or content=\'冷冻带鱼\' or content=\'冷冻黄花鱼\' or content=\'干豆腐\' or content=\'火龙果\' or content=\'大蒜\' or content=\'麻椒\' or content=\'新土豆\' or content=\'西瓜\' or content=\'芸豆\' or content=\'香瓜\' or content=\'西兰花\' or content=\'香雪原味面\' or content=\'佳玉家庭装大米\' or content=\'生姜\' or content=\'黄瓜\' or content=\'烤全腿\' or content=\'伊利利乐枕纯奶\' or content=\'辉山新版百利包奶\' or content=\'五湖一级大豆油\' or content=\'三锋苹果醋无糖\' or content=\'鲜玉米\' or content=\'长茄子\' or content=\'鲜鸡蛋\' or content=\'苹果醋袋装\' or content=\'心相印卷纸\' or content=\'重工茶肠\' or content=\'桃子\' or content=\'牛肉馅\' or content=\'力士嫩白美肤浴露\' or content=\'香雪特制精粉\' or content=\'雕牌超白加香粉\' or content=\'鱼丸\' or content=\'特价牛肉\' or content=\'力士嫩肤娇肤浴乳\' or content=\'力士闪亮冰爽浴露\' or content=\'追风立体弹力素\' or content=\'自动电子健康秤\' or content=\'梭鱼\' or content=\'角瓜\' or content=\'哈尔滨排骨肠\' or content=\'豆中宝大酱\' or content=\'松川屋青豆\' or content=\'新自然鸡蛋面\' or content=\'娃哈哈八宝粥\' or content=\'脊骨\' or content=\'上五花\' or content=\'带皮前腿\' or content=\'大成鸡翅根\' or content=\'小白菜\' or content=\'地雷瓜\' or content=\'山竹\' or content=\'伊丽沙白瓜\' or content=\'优质大蒜\' or content=\'金百味小火腿\' or content=\'康师傅冰红茶\' or content=\'西红柿\' or content=\'卷心菜\' or content=\'花生米\' or content=\'羊肉片\' or content=\'乐大妈风干肠\' or content=\'重工盐水肠\' or content=\'诚信小福烤肠\' or content=\'老沈阳肉肠\' or content=\'西红柿\' or content=\'黄豆\' or content=\'重工茶肠\' or content=\'生鸡头\' or content=\'海南木瓜\' or content=\'红富士苹果\' or content=\'黑小豆\' or content=\'蒜台\' or content=\'角瓜\' or content=\'黄瓜\' or content=\'饭豆\' or content=\'滩枣\' or content=\'辉山核桃花生奶\' or content=\'山椒罗汉笋\' or content=\'金百味优惠装\' or content=\'辉山核桃麦香奶\' or content=\'香雪大众挂面\' or content=\'柚子茶\' or content=\'黑牛核桃芝麻糊\' or content=\'康师傅绿茶\' or content=\'永春内蒙古肥羊卷\' or content=\'带鱼段\' or content=\'惠成白芝麻\' or content=\'诚信哈尔滨红肠\' or content=\'全南蜂蜜大枣茶\' or content=\'有友泡凤爪\' or content=\'牛奶佳钙清脆饼干\' or content=\'牛奶佳钙酥松饼干\' or content=\'全南蜂蜜芦荟茶\' or content=\'阿雷猪蹄\' or content=\'辉山原味酸奶\' or content=\'全南蜂蜜柠檬茶\' or content=\'品牌\' or content=\'COCCI\' or content=\'EINPAD\' or content=\'E派\' or content=\'GX\' or content=\'HOt\' or content=\'innos\' or content=\'iwoo\' or content=\'KENKO\' or content=\'KISSU\' or content=\'KOCIN\' or content=\'LG\' or content=\'NAIDE\' or content=\'NEC\' or content=\'TCL\' or content=\'UT斯达康\' or content=\'VERTU\' or content=\'VEVA\' or content=\'VIM伟恩\' or content=\'阿尔法\' or content=\'阿尔卡特\' or content=\'阿凡提\' or content=\'埃立特\' or content=\'艾酷\' or content=\'艾炜特\' or content=\'爱宝隆\' or content=\'爱尔马\' or content=\'爱国者\' or content=\'爱果\' or content=\'爱久久\' or content=\'爱肯\' or content=\'爱酷\' or content=\'爱立顺\' or content=\'爱立信\' or content=\'爱摩登\' or content=\'爱纳星\' or content=\'爱诺德\' or content=\'爱诺特\' or content=\'爱谱乐\' or content=\'爱时尚\' or content=\'爱维特\' or content=\'爱我\' or content=\'爱讯达\' or content=\'爱易通\' or content=\'爱意通\' or content=\'安科讯\' or content=\'安利嘉\' or content=\'安利普\' or content=\'安派\' or content=\'安卓互联\' or content=\'奥丁\' or content=\'奥克斯\' or content=\'奥乐\' or content=\'奥利信\' or content=\'奥洛斯\' or content=\'奥魅尔\' or content=\'奥维\' or content=\'奥卓\' or content=\'八〇九〇\' or content=\'巴菲\' or content=\'巴拿拿\' or content=\'百达\' or content=\'百达玖玖\' or content=\'百迪宝\' or content=\'百合\' or content=\'百嘉好\' or content=\'百立丰\' or content=\'百裕\' or content=\'佰灵通\' or content=\'佰盛\' or content=\'佰事讯\' or content=\'佰意\' or content=\'邦华\' or content=\'邦讯达\' or content=\'帮盛\' or content=\'宝方\' or content=\'宝捷讯\' or content=\'宝码\' or content=\'贝多芬\' or content=\'贝尔丰\' or content=\'贝尔星\' or content=\'贝龙\' or content=\'本为\' or content=\'比酷时代\' or content=\'比美\' or content=\'毕加索\' or content=\'波导\' or content=\'菠萝\' or content=\'铂乐\' or content=\'铂派\' or content=\'铂锐\' or content=\'博鑫奇\' or content=\'步步高\' or content=\'长虹\' or content=\'长江天音\' or content=\'长普达\' or content=\'长营\' or content=\'畅想未来\' or content=\'宸通和\' or content=\'晨想\' or content=\'晨信\' or content=\'晨兴\' or content=\'诚虹\' or content=\'诚基\' or content=\'传承\' or content=\'传奇\' or content=\'创世能\' or content=\'创维\' or content=\'创雅\' or content=\'创奕\' or content=\'大诚\' or content=\'大大\' or content=\'大华\' or content=\'大唐\' or content=\'大唐数码\' or content=\'大唐移动\' or content=\'大为\' or content=\'大显\' or content=\'大显启辰\' or content=\'大亚\' or content=\'大众电脑\' or content=\'戴尔\' or content=\'德进高通\' or content=\'德赛\' or content=\'迪奥\' or content=\'迪比特\' or content=\'迪迪\' or content=\'迪佳通\' or content=\'迪美\' or content=\'迪妙移动\' or content=\'迪思\' or content=\'迪斯尼\' or content=\'迪泰元\' or content=\'迪为\' or content=\'帝锋\' or content=\'帝狼\' or content=\'帝托\' or content=\'帝唯\' or content=\'电意\' or content=\'蝶变\' or content=\'鼎瑄\' or content=\'东方龙\' or content=\'东茂\' or content=\'东森\' or content=\'东森伟泰\' or content=\'东铁通讯\' or content=\'东信\' or content=\'动感通\' or content=\'多达康\' or content=\'多拉多\' or content=\'多美达\' or content=\'多普达\' or content=\'朵美\' or content=\'朵唯\' or content=\'恩泽通信\' or content=\'凡尔纳\' or content=\'凡美\' or content=\'泛泰\' or content=\'范思哲\' or content=\'梵尚\' or content=\'飞歌王\' or content=\'飞利浦\' or content=\'飞秒\' or content=\'飞思特\' or content=\'飞阳\' or content=\'飞盈\' or content=\'菲乐普\' or content=\'菲力克斯\' or content=\'斐讯\' or content=\'风云时代\' or content=\'峰泽联和\' or content=\'烽火\' or content=\'锋彩\' or content=\'锋达通\' or content=\'福尔特\' or content=\'福日\' or content=\'福兴达\' or content=\'富春江\' or content=\'富尔美\' or content=\'富可视\' or content=\'富士通\' or content=\'港利通\' or content=\'港龙\' or content=\'高尔\' or content=\'高金\' or content=\'高科\' or content=\'高昇\' or content=\'高盛达\' or content=\'高斯贝尔\' or content=\'高通\' or content=\'高威尔\' or content=\'高翔\' or content=\'高新奇\' or content=\'高讯移动\' or content=\'格莱特\' or content=\'格律诗\' or content=\'共展\' or content=\'广东凌鹰\' or content=\'广信\' or content=\'广盈时代\' or content=\'广州盛科\' or content=\'广州索爱\' or content=\'国虹\' or content=\'国力通\' or content=\'国乾\' or content=\'国乾科技\' or content=\'国威\' or content=\'国威HB\' or content=\'国威创新\' or content=\'国信\' or content=\'国信通\' or content=\'国誉\' or content=\'国正通\' or content=\'海尔\' or content=\'海帆\' or content=\'海派贵族\' or content=\'海沃\' or content=\'海信\' or content=\'海旭\' or content=\'汉泰\' or content=\'豪雅\' or content=\'好利通\' or content=\'好兄弟\' or content=\'禾兴江源\' or content=\'和信\' or content=\'核动力\' or content=\'黑莓\' or content=\'黑魅\' or content=\'黑米\' or content=\'恒泰\' or content=\'恒通\' or content=\'恒信\' or content=\'恒宇丰\' or content=\'红橙果\' or content=\'红萝卜\' or content=\'红葉\' or content=\'宏达\' or content=\'宏康\' or content=\'宏碁\' or content=\'宏泰尔\' or content=\'宏天\' or content=\'宏为\' or content=\'鸿嘉源\' or content=\'湖南大成\' or content=\'湖南电子\' or content=\'华臣数码\' or content=\'华慈\' or content=\'华帝高科\' or content=\'华晶\' or content=\'华立\' or content=\'华立时代\' or content=\'华录\' or content=\'华纳威秀\' or content=\'华锐\' or content=\'华尚\' or content=\'华世基\' or content=\'华蜀\' or content=\'华硕\' or content=\'华唐\' or content=\'华唐时代\' or content=\'华为\' or content=\'华夏腾宇\' or content=\'华夏通\' or content=\'华信时代\' or content=\'华讯\' or content=\'华禹\' or content=\'寰宇通\' or content=\'幻影\' or content=\'汇丰源通\' or content=\'汇通世纪\' or content=\'汇讯\' or content=\'惠普\' or content=\'基伍\' or content=\'吉邦\' or content=\'吉事达\' or content=\'集思宝\' or content=\'集友\' or content=\'几米\' or content=\'技嘉\' or content=\'加利利\' or content=\'佳斯特\' or content=\'佳通\' or content=\'佳想\' or content=\'佳域\' or content=\'佳之选\' or content=\'嘉尚\' or content=\'嘉源\' or content=\'杰得微\' or content=\'杰泰尔\' or content=\'捷来\' or content=\'今典\' or content=\'金铂\' or content=\'金步\' or content=\'金得\' or content=\'金尔雅\' or content=\'金格儿\' or content=\'金龟子\' or content=\'金果\' or content=\'金翰\' or content=\'金弘\' or content=\'金凯为\' or content=\'金科鼎\' or content=\'金来\' or content=\'金立\' or content=\'金立致远\' or content=\'金亮典\' or content=\'金曼\' or content=\'金茂\' or content=\'金鹏\' or content=\'金润\' or content=\'金圣达\' or content=\'金腾亿\' or content=\'金信\' or content=\'金兴\' or content=\'金星数码\' or content=\'金讯宏盛\' or content=\'金业\' or content=\'金赢\' or content=\'金运\' or content=\'琻品\' or content=\'锦书\' or content=\'锦炫达\' or content=\'劲动能\' or content=\'京瓷\' or content=\'京华\' or content=\'京凯达\' or content=\'京崎\' or content=\'经纬\' or content=\'精瑞\' or content=\'精英移动\' or content=\'井冈山华禹\' or content=\'景象\' or content=\'竞冠\' or content=\'巨赛\' or content=\'巨盛\' or content=\'君爵\' or content=\'骏域\' or content=\'卡尔雷斯\' or content=\'卡美欧\' or content=\'卡为\' or content=\'卡西欧\' or content=\'卡卓\' or content=\'凯利通\' or content=\'铠基\' or content=\'康佳\' or content=\'康力\' or content=\'科宝\' or content=\'科潮\' or content=\'科达圣龙\' or content=\'科健\' or content=\'科酷\' or content=\'科立讯\' or content=\'科利莱\' or content=\'科米\' or content=\'科摩\' or content=\'科诺\' or content=\'科普达\' or content=\'科盛\' or content=\'科特\' or content=\'科王\' or content=\'渴望\' or content=\'克莱斯\' or content=\'垦鑫达\' or content=\'库柏\' or content=\'酷爱\' or content=\'酷宝\' or content=\'酷比\' or content=\'酷比魔方\' or content=\'酷潮\' or content=\'酷鸽\' or content=\'酷卡\' or content=\'酷开\' or content=\'酷珂\' or content=\'酷龙\' or content=\'酷诺\' or content=\'酷派\' or content=\'酷普\' or content=\'酷绅\' or content=\'酷沃\' or content=\'昆达\' or content=\'拉风\' or content=\'来基达\' or content=\'蓝博兴\' or content=\'蓝极星\' or content=\'蓝天\' or content=\'蓝想\' or content=\'朗格\' or content=\'朗杰\' or content=\'朗界\' or content=\'朗翔\' or content=\'朗星达\' or content=\'乐购天地\' or content=\'乐美佳\' or content=\'乐目\' or content=\'乐派\' or content=\'乐锐\' or content=\'乐维\' or content=\'乐讯\' or content=\'雷奥\' or content=\'雷梦\' or content=\'雷萨\' or content=\'力派\' or content=\'力鑫\' or content=\'联创\' or content=\'联代\' or content=\'联泓\' or content=\'联通\' or content=\'联想\' or content=\'联益合创\' or content=\'亮剑\' or content=\'林宝坚尼\' or content=\'凌科\' or content=\'凌泰\' or content=\'凌拓\' or content=\'凌鹰\' or content=\'聆韵\' or content=\'六虹\' or content=\'龙旗\' or content=\'龙之宇\' or content=\'裸媒\' or content=\'迈道\' or content=\'迈峰\' or content=\'迈腾达\' or content=\'脉腾\' or content=\'美富通\' or content=\'美歌\' or content=\'美菱\' or content=\'美奇\' or content=\'美盛通\' or content=\'美熙\' or content=\'美翼\' or content=\'魅族\' or content=\'盟宝\' or content=\'米歌\' or content=\'米库\' or content=\'米粒\' or content=\'米玛\' or content=\'米语\' or content=\'敏讯\' or content=\'名博\' or content=\'明基\' or content=\'明基西门子\' or content=\'明派\' or content=\'明泰\' or content=\'铭仁\' or content=\'摩购\' or content=\'摩乐\' or content=\'摩玛时代\' or content=\'摩能\' or content=\'摩普士\' or content=\'摩天时代\' or content=\'摩托罗拉\' or content=\'摩托数码\' or content=\'摩托无线\' or content=\'摩西\' or content=\'纳伟仕\' or content=\'奈华特\' or content=\'南方高科\' or content=\'南俘电讯\' or content=\'南和\' or content=\'南极星\' or content=\'尼凯恩\' or content=\'尼蒙\' or content=\'宁波三星\' or content=\'纽曼\' or content=\'纽特\' or content=\'纽维\' or content=\'诺菲世纪\' or content=\'诺基亚\' or content=\'诺记\' or content=\'诺嘉源\' or content=\'诺捷通\' or content=\'诺卡\' or content=\'诺克拉\' or content=\'诺利达\' or content=\'诺利佳\' or content=\'诺亚鸽\' or content=\'诺亚信\' or content=\'欧比\' or content=\'欧博信\' or content=\'欧恩\' or content=\'欧谷\' or content=\'欧凯\' or content=\'欧科\' or content=\'欧酷\' or content=\'欧乐酷\' or content=\'欧珀\' or content=\'欧奇\' or content=\'欧萨\' or content=\'欧上\' or content=\'欧盛\' or content=\'欧网\' or content=\'欧新\' or content=\'欧怡\' or content=\'欧正\' or content=\'派对\' or content=\'派尔\' or content=\'派沃\' or content=\'派信\' or content=\'朋和\' or content=\'苹果\' or content=\'普爱达\' or content=\'普莱达\' or content=\'普蓝\' or content=\'普联\' or content=\'普瑞德\' or content=\'普士\' or content=\'普天三洋\' or content=\'普天同乐\' or content=\'普天王之\' or content=\'普天王芝\' or content=\'普天鑫\' or content=\'普天宜通\' or content=\'七喜\' or content=\'七星河\' or content=\'齐乐\' or content=\'琦基\' or content=\'旗润\' or content=\'侨兴\' or content=\'青橙\' or content=\'庆邦\' or content=\'荣事达\' or content=\'锐铂\' or content=\'锐合\' or content=\'瑞高\' or content=\'瑞恒\' or content=\'瑞翼\' or content=\'萨基姆\' or content=\'萨米\' or content=\'赛丰\' or content=\'赛鸿\' or content=\'赛纳普\' or content=\'赛浦\' or content=\'三宝\' or content=\'三和新\' or content=\'三基摩客\' or content=\'三菱\' or content=\'三美琦\' or content=\'三盟\' or content=\'三耐\' or content=\'三普\' or content=\'三奇\' or content=\'三维\' or content=\'三纬\' or content=\'三五互联\' or content=\'三新\' or content=\'三星\' or content=\'三众\' or content=\'桑达\' or content=\'森密科技\' or content=\'山水\' or content=\'山西天丽\' or content=\'商务通\' or content=\'尚锋\' or content=\'尚合\' or content=\'深爱\' or content=\'深圳欧珀\' or content=\'深圳天时达\' or content=\'深圳亚力通\' or content=\'胜音\' or content=\'圣宝龙\' or content=\'盛和\' or content=\'盛况\' or content=\'盛隆兴\' or content=\'盛乾通\' or content=\'盛泰\' or content=\'时通伟业\' or content=\'世纪天元\' or content=\'世纪伟业\' or content=\'世家\' or content=\'事达\' or content=\'首家\' or content=\'首派科技\' or content=\'首信\' or content=\'首亿通讯\' or content=\'首悦\' or content=\'数源\' or content=\'双科\' or content=\'双侨\' or content=\'硕码\' or content=\'硕颖\' or content=\'思特电子\' or content=\'四吉\' or content=\'四季风\' or content=\'松下\' or content=\'松讯达\' or content=\'搜神\' or content=\'索爱佳通\' or content=\'索尼\' or content=\'索尼爱立信\' or content=\'索普\' or content=\'索信\' or content=\'泰丰网络\' or content=\'泰蒙\' or content=\'泰星\' or content=\'泰讯\' or content=\'唐为\' or content=\'特灵通\' or content=\'腾祥\' or content=\'腾信时代\' or content=\'天歌\' or content=\'天基\' or content=\'天乐\' or content=\'天迈\' or content=\'天频\' or content=\'天勤\' or content=\'天时达\' or content=\'天天高\' or content=\'天玺\' or content=\'天意\' or content=\'天语\' or content=\'天遇\' or content=\'天元通\' or content=\'同威\' or content=\'同心\' or content=\'同洲\' or content=\'彤霖\' or content=\'彤鑫达\' or content=\'托柯\' or content=\'拓展无限\' or content=\'万达斯\' or content=\'万捷\' or content=\'万金塔\' or content=\'万利达\' or content=\'万普\' or content=\'万擎\' or content=\'万事通\' or content=\'网讯\' or content=\'威铂\' or content=\'威而肯\' or content=\'威酷\' or content=\'威智达\' or content=\'威兹奥\' or content=\'葳朗\' or content=\'微铂\' or content=\'微诺\' or content=\'微兴\' or content=\'唯爱\' or content=\'唯奥\' or content=\'唯开\' or content=\'唯科\' or content=\'唯乐\' or content=\'唯米\' or content=\'唯想\' or content=\'帷幄\' or content=\'维佳特\' or content=\'维卡\' or content=\'维纳斯\' or content=\'维图\' or content=\'伟博动力\' or content=\'纬图\' or content=\'闻讯\' or content=\'我爱你\' or content=\'沃达\' or content=\'沃歌\' or content=\'沃凯泰\' or content=\'沃普丰\' or content=\'沃途\' or content=\'吾爱\' or content=\'西铂\' or content=\'西凯\' or content=\'西可\' or content=\'西美\' or content=\'西门子\' or content=\'西泰\' or content=\'西维\' or content=\'喜卡\' or content=\'夏朗\' or content=\'夏浦光电\' or content=\'夏普\' or content=\'夏新\' or content=\'夏星\' or content=\'厦华\' or content=\'先创\' or content=\'先锋\' or content=\'先科\' or content=\'咸通\' or content=\'现代\' or content=\'祥集\' or content=\'响亮\' or content=\'小麦麦果\' or content=\'小米\' or content=\'心爱\' or content=\'心迪\' or content=\'心迪宝\' or content=\'心动科技\' or content=\'心动世纪\' or content=\'心语通\' or content=\'新标达\' or content=\'新创想\' or content=\'新大陆\' or content=\'新国脉\' or content=\'新基德\' or content=\'新势力\' or content=\'新邮\' or content=\'新中桥\' or content=\'鑫诺\' or content=\'鑫卓越\' or content=\'信得乐\' or content=\'信诺\' or content=\'信实\' or content=\'信盈\' or content=\'兴华宝\' or content=\'星火\' or content=\'星科壬\' or content=\'星网锐捷\' or content=\'星维\' or content=\'星宇\' or content=\'星语\' or content=\'雄风\' or content=\'熊猫\' or content=\'炫华\' or content=\'讯歌\' or content=\'雅器\' or content=\'雅讯达\' or content=\'雅迅网络\' or content=\'亚力通\' or content=\'亚米\' or content=\'亚信通\' or content=\'扬新\' or content=\'一三九\' or content=\'依众兴\' or content=\'宜兴中电\' or content=\'亿城\' or content=\'亿和源\' or content=\'亿嘉鑫\' or content=\'亿科泰达\' or content=\'亿美讯联\' or content=\'亿旗\' or content=\'亿通\' or content=\'亿扬\' or content=\'艺科\' or content=\'易百年\' or content=\'易创\' or content=\'易丰展业\' or content=\'易派\' or content=\'易特科\' or content=\'易闻\' or content=\'益阳\' or content=\'翼乐\' or content=\'翼品\' or content=\'翼扬\' or content=\'英达思康\' or content=\'英华达\' or content=\'英莱尔\' or content=\'英迈\' or content=\'英普\' or content=\'英特奇\' or content=\'鹰讯\' or content=\'赢者\' or content=\'优Phone\' or content=\'优尔得\' or content=\'优歌\' or content=\'优购\' or content=\'优酷\' or content=\'优快\' or content=\'优乐酷\' or content=\'优米斯达\' or content=\'优米通达\' or content=\'优摩\' or content=\'优派\' or content=\'优品\' or content=\'优珀\' or content=\'优普\' or content=\'优赛\' or content=\'优思\' or content=\'优索\' or content=\'优友\' or content=\'友利通\' or content=\'友旺\' or content=\'友为\' or content=\'友信达\' or content=\'宇龙\' or content=\'宇阳\' or content=\'羽翼\' or content=\'禹华\' or content=\'语泉\' or content=\'语信\' or content=\'玉科\' or content=\'誉品\' or content=\'远大\' or content=\'远点\' or content=\'远望谷\' or content=\'粤盈\' or content=\'云本\' or content=\'云台\' or content=\'泽爱\' or content=\'泽领\' or content=\'展翼\' or content=\'掌力\' or content=\'掌中宝\' or content=\'兆信\' or content=\'兆讯达\' or content=\'真我\' or content=\'臻爱\' or content=\'振华百智\' or content=\'振华欧比\' or content=\'振华通信\' or content=\'振华宇科\' or content=\'证通金信\' or content=\'知己迅联\' or content=\'知心\' or content=\'职业者\' or content=\'至能\' or content=\'至尊宝\' or content=\'志佳\' or content=\'志能\' or content=\'智爱\' or content=\'智惠\' or content=\'智吉\' or content=\'智灵通\' or content=\'智珀\' or content=\'智普\' or content=\'智信\' or content=\'智讯\' or content=\'中宝\' or content=\'中辰\' or content=\'中德瑞\' or content=\'中电\' or content=\'中国老板\' or content=\'中国振华\' or content=\'中江\' or content=\'中宽\' or content=\'中诺\' or content=\'中锘基雅\' or content=\'中桥\' or content=\'中天\' or content=\'中伟天\' or content=\'中信卫星\' or content=\'中兴\' or content=\'中渔\' or content=\'中轴线\' or content=\'众一\' or content=\'卓比\' or content=\'卓拉\' or content=\'卓普\' or content=\'卓尚\' or content=\'紫光海泰\' or content=\'自然派\' or content=\'节操\' or content=\'尼凯恩\' or content=\'传颂\' or content=\'读者\' or content=\'女装品牌名称\' or content=\'EW\' or content=\'LD\' or content=\'LEVISLADIES\' or content=\'UDB\' or content=\'THE\' or content=\'Y\' or content=\'巴俪锦\' or content=\'SCAT\' or content=\'KALICO\' or content=\'DND\' or content=\'MISSRIGHT\' or content=\'PERF\' or content=\'M演奏\' or content=\'SEEUSOON\' or content=\'TYT\' or content=\'PACEANGEL\' or content=\'芙蓉天使\' or content=\'Ein\' or content=\'经典故事\' or content=\'MOS\' or content=\'B2\' or content=\'TB2\' or content=\'VEEKOWANKO\' or content=\'卡莎布兰卡\' or content=\'KANGJINYOUNG\' or content=\'歌莉娅\' or content=\'G2000\' or content=\'水盈格\' or content=\'CKJEANS\' or content=\'ESPRIT\' or content=\'卡佛莲\' or content=\'NEE\' or content=\'茵佳妮\' or content=\'阿依莲\' or content=\'古谷惠\' or content=\'布布为盈\' or content=\'普色\' or content=\'狐仙\' or content=\'JC5杰西五\' or content=\'A02\' or content=\'伊可爱\' or content=\'自由鸟\' or content=\'麦考林\' or content=\'花思薇\' or content=\'遇见\' or content=\'蓝月\' or content=\'衣本色水虹\' or content=\'花木马\' or content=\'零典\' or content=\'艾可儿AIKERL\' or content=\'塔吉\' or content=\'体育品牌名称\' or content=\'耐克\' or content=\'安踏\' or content=\'百事\' or content=\'百事运动\' or content=\'赛琪\' or content=\'名乐\' or content=\'曼奴\' or content=\'李宁兴尔达\' or content=\'域图\' or content=\'百丽韬博\' or content=\'匡威\' or content=\'正大体育\' or content=\'东方神\' or content=\'361度\' or content=\'好家庭\' or content=\'泽田\' or content=\'康威\' or content=\'锐步\' or content=\'美津浓\' or content=\'ADIDAS\' or content=\'KAPPA\' or content=\'新百伦\' or content=\'斐乐\' or content=\'彪马\' or content=\'艾世克斯\' or content=\'乐途\' or content=\'双星\' or content=\'红双喜\' or content=\'茵宝\' or content=\'DIADDRA\' or content=\'惠尔德\' or content=\'康威\' or content=\'匹克\' or content=\'鸿星尔克\' or content=\'乔丹\' or content=\'特步\' or content=\'耐克360\' or content=\'THEN\' or content=\'THFACE\' or content=\'哥伦比亚\' or content=\'火狐狸\' or content=\'探路者\' or content=\'极地\' or content=\'鳄莱特\' or content=\'斯伯丁\' or content=\'YY\' or content=\'PRINCE\' or content=\'百希达\' or content=\'索牌\' or content=\'麦斯卡\' or content=\'奥得赛\' or content=\'好家庭\' or content=\'轻松伴侣\' or content=\'生命动力\' or content=\'东方神\' or content=\'OSIM\' or content=\'瀚斯宝丽\' or content=\'西纳蒙\' or content=\'哥伦比亚\' or content=\'奥索卡\' or content=\'日高\' or content=\'生活无限\' or content=\'皮鞋皮具品牌名称\' or content=\'摩斯雷\' or content=\'金利来\' or content=\'华伦天奴\' or content=\'花花公子保罗老人头\' or content=\'红晴蜓\' or content=\'沙驰\' or content=\'富贵鸟\' or content=\'七月恋人\' or content=\'迪宝阿治奥\' or content=\'芭迪\' or content=\'迪桑娜\' or content=\'思迪嘉\' or content=\'丹希路\' or content=\'卡露天尼莱斯佩斯\' or content=\'CNE莱尔诗丹\' or content=\'狄高斯\' or content=\'华伦天奴露迪\' or content=\'富贵鸟\' or content=\'哈森\' or content=\'保罗狄龙\' or content=\'澳伦\' or content=\'咪地\' or content=\'贵之步\' or content=\'Fed\' or content=\'宾度\' or content=\'爱步\' or content=\'万里马\' or content=\'花花公子\' or content=\'比莉华\' or content=\'东京\' or content=\'卡仕妮\' or content=\'恭绅\' or content=\'阿俪达\' or content=\'美丽宝\' or content=\'真美诗\' or content=\'百丽他他天美意思加图\' or content=\'浩天龙\' or content=\'老人头袋鼠\' or content=\'千百度\' or content=\'意大意登喜路\' or content=\'接吻猫\' or content=\'华伦天奴露迪\' or content=\'梦特娇\' or content=\'达芙妮\' or content=\'康莉安玛利\' or content=\'华伦天奴\' or content=\'多米尼克\' or content=\'豪行\' or content=\'妙丽\' or content=\'美人鱼伯爵夫人\' or content=\'澳德利\' or content=\'俪嘉\' or content=\'美的\' or content=\'利佳娜\' or content=\'伊奈安\' or content=\'牧羊女\' or content=\'莱尔斯丹\' or content=\'皮鞋皮具品牌名称\' or content=\'百思图\' or content=\'星期六索菲亚\' or content=\'圣伽步\' or content=\'密丝罗妮\' or content=\'皮匠世家\' or content=\'瑕步士\' or content=\'富贵鸟\' or content=\'艾曼达\' or content=\'高琪KUKU\' or content=\'卡丹路\' or content=\'皮尔卡丹\' or content=\'富丽达\' or content=\'宝曼妮\' or content=\'花花公子\' or content=\'小美\' or content=\'特丰鸟\' or content=\'爵根仕\' or content=\'阿俪达\' or content=\'与狼共舞\' or content=\'维多利保罗\' or content=\'圣大保罗沙驰\' or content=\'猫与老鼠\' or content=\'曼妮诗\' or content=\'老爷车\' or content=\'老人头袋鼠\' or content=\'金鱼保罗\' or content=\'华伦天奴艾米力欧\' or content=\'华伦天奴露迪\' or content=\'华伦天奴\' or content=\'花花公子宾奴\' or content=\'鳄鱼\' or content=\'安特丽\' or content=\'BOSSBABI\' or content=\'金利来佛里欧有伊鳄鱼\' or content=\'女装品牌名称\' or content=\'埃米雅文\' or content=\'稀\' or content=\'玛丝菲尔SU\' or content=\'玛丝菲尔\' or content=\'MissK\' or content=\'YIGUE\' or content=\'ALAAur\' or content=\'a\' or content=\'Bloomsbury\' or content=\'onon\' or content=\'sisley\' or content=\'23区\' or content=\'Fairyfair\' or content=\'P\' or content=\'TS\' or content=\'amelie\' or content=\'ninewest\' or content=\'BuouBuou\' or content=\'XLMS\' or content=\'OTT\' or content=\'贝拉维拉\' or content=\'Helloketty\' or content=\'花木马\' or content=\'邓晧\' or content=\'昊艺\' or content=\'朵兰帝\' or content=\'衡韵\' or content=\'影儿国际\' or content=\'白领风采\' or content=\'忆玫\' or content=\'声雨竹\' or content=\'李红\' or content=\'娜尔思\' or content=\'哥弟\' or content=\'伊品\' or content=\'莱姿\' or content=\'千师达\' or content=\'帕丝特\' or content=\'蕾朵\' or content=\'贝特丽诗\' or content=\'baccabocca\' or content=\'BREADNBUTTER\' or content=\'QUA\' or content=\'JESSIMODA\' or content=\'LILY\' or content=\'南梦\' or content=\'Sevenshow\' or content=\'圣迪奥\' or content=\'OASIS\' or content=\'BUSKUS宝丝露\' or content=\'奢爱\' or content=\'SEFON臣枫\' or content=\'INOW\' or content=\'BABYFOX\' or content=\'NOVO次主力店\' or content=\'休闲品牌名称\' or content=\'蓝色天空\' or content=\'嘉意\' or content=\'花花公子\' or content=\'丹迪斯\' or content=\'以纯\' or content=\'保斯特\' or content=\'潮流前线\' or content=\'自由鸟\' or content=\'佐丹奴\' or content=\'康妮雅\' or content=\'异乡人\' or content=\'真维斯\' or content=\'猛龙\' or content=\'宝斯特\' or content=\'飞鱼\' or content=\'依米奴\' or content=\'ESPRIT\' or content=\'麦仕威\' or content=\'威格\' or content=\'与狼共舞\' or content=\'苹果牛仔\' or content=\'GSTAR\' or content=\'MECITY\' or content=\'QUIKSILVER\' or content=\'MOLYHOLY\' or content=\'SMITHS\' or content=\'骆驼\' or content=\'马克华菲\' or content=\'思莱德\' or content=\'TONYJONES\' or content=\'万宝路\' or content=\'GXG\' or content=\'TOUCH牛仔\' or content=\'JC\' or content=\'RIVERSTONE\' or content=\'CANTATE\' or content=\'ISO\' or content=\'HOZ\' or content=\'盈彩美地\' or content=\'格尔马菲\' or content=\'CHEVIGNON\' or content=\'雪鲨\' or content=\'威格\' or content=\'第五街\' or content=\'U2\' or content=\'雅韵\' or content=\'安诺庞玛\' or content=\'皮尔卡丹\' or content=\'与狼共舞\' or content=\'体育品牌名称\' or content=\'生活无限\' or content=\'极地\' or content=\'百福全\' or content=\'倍轻松\' or content=\'可口可乐\' or content=\'够那\' or content=\'迪亚多纳\' or content=\'EXR\' or content=\'AND1\' or content=\'RAPIDO\' or content=\'皮鞋皮具品牌名称\' or content=\'老人头\' or content=\'丹希路\' or content=\'豪麟\' or content=\'金利来\' or content=\'SKAP\' or content=\'爵根仕\' or content=\'多米尼克\' or content=\'迪宝\' or content=\'马飞仕图\' or content=\'GEOX\' or content=\'宾度\' or content=\'沙驰\' or content=\'卓凡尼华伦天奴\' or content=\'FATO\' or content=\'暇步士\' or content=\'其乐\' or content=\'莱尔斯丹\' or content=\'磨里斯基\' or content=\'卡丹路\' or content=\'ECCO\' or content=\'哈森\' or content=\'阿兰德隆\' or content=\'阿里巴巴\' or content=\'华伦天奴\' or content=\'新秀丽\' or content=\'森泰斯\' or content=\'花花公子\' or content=\'巴黎世家\' or content=\'丹尼爱特\' or content=\'皇冠箱\' or content=\'鳄鱼恤\' or content=\'老人头\' or content=\'金利来\' or content=\'皇冠包\' or content=\'伊莱莲\' or content=\'贝蒂\' or content=\'梦特娇鄂鱼恤花花公子\' or content=\'汤姆猫杰利鼠\' or content=\'中国娃娃\' or content=\'雷洛斯\' or content=\'黑眼睛\' or content=\'韩国树一派\' or content=\'与狼共舞\' or content=\'逸格\' or content=\'金利来保罗名莎佛里欧莱茜雅\' or content=\'刘文爵\' or content=\'PTNS\' or content=\'万里马\' or content=\'华伦天奴乔登法国登喜路世家\' or content=\'丽天妮\' or content=\'马莲奴登喜世家\' or content=\'欧玖珂\' or content=\'老人头\' or content=\'波士芭比\' or content=\'老皮匠\' or content=\'皮鞋皮具品牌名称\' or content=\'狄狮劳\' or content=\'宾奴\' or content=\'城市生活\' or content=\'巴黎世家\' or content=\'女装品牌名称\' or content=\'AMASS\' or content=\'积高\' or content=\'法路易娜\' or content=\'雅贝菲斯\' or content=\'JoeJules\' or content=\'TB2\' or content=\'Nice\' or content=\'COLOUR18\' or content=\'twoctv\' or content=\'WHOIAM\' or content=\'kalico\' or content=\'COOLLADY\' or content=\'OBO\' or content=\'GMD\' or content=\'HIRST\' or content=\'678月\' )  ','segment') 
limit 10;




select 
    size(collect_set(r[0])) as dist_sex,
    size(collect_set(r[1])) as dist_province,
    count(*) as cnt,
    count(r[2]) as cnt_long,
    count(distinct r[2]) as dist_long
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,amtlong from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\'  ','segment') 
limit 10;


select 
    r[0] as ydb_sex, 
    size(collect_set(r[1])) as dist_province,
    count(*) as cnt,
    count(r[2]) as cnt_long,
    count(distinct r[2]) as dist_long
from 
    ydb where YSQL('from','select ydb_sex,ydb_province,amtlong from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\'  ','segment')
group by r[0]
limit 10;


 select HPHM ,cnt from 
(
    select 
        HPHM,
        Yorbit_notfound('201604290100:6,10000000:0|201604290101:6,10000001:0|201604290102:6,10000002:0',cast(JGSJ as bigint),cast (KKBH as bigint)) as cnt
    from (
            select 
                r[0] as HPHM,
                r[1] as JGSJ,
                r[2] as KKBH
            from ydb where YSQL('from','select HPHM,JGSJ,KKBH from ydb_oribit where ydbpartion = \'20160619\' and ( (JGSJ=\'201604290100\'  and KKBH=\'10000000\') or (JGSJ=\'201604290101\'  and KKBH=\'10000001\') or (JGSJ=\'201604290102\'  and KKBH=\'10000002\')) ','segment') 
    ) tmp1  
    group by tmp1.HPHM
) tmp 
where tmp.cnt<=0 limit 10;

select 
    r[0] as tollCode,
    r[1] as vehiclePlate
from 
    ydb where YSQL('from','select tollCode,vehiclePlate from vehiclepass where ydbpartion = \'3000w\' ','segment') 
limit 100;


select k21.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'1\'  ','segment')
    ) k1
    LEFT SEMI JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'2\'  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT SEMI JOIN 
(
    select r[0] as vehiclePlate from 
    ydb2 where YSQL('from ydb2','select vehiclePlate,tollCode from vehiclepass  where ydbpartion = \'3000w\' and tollCode=\'3\' ','segment')
 ) k22 on k21.vehiclePlate=k22.vehiclePlate ;
 

select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'1\'  ','segment')
    ) k1
    LEFT JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'2\'  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
    select r[0] as vehiclePlate from 
    ydb2 where YSQL('from ydb2','select vehiclePlate,tollCode from vehiclepass  where ydbpartion = \'3000w\' and tollCode=\'3\' ','segment')
 ) k22 on k21.vehiclePlate=k22.vehiclePlate ;


select k21.vehiclePlate,k22.vehiclePlate from(
    select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'1\'  ','segment')
    ) k1
    LEFT SEMI JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'2\'  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate)
 ) k21
LEFT JOIN 
(
    select r[0] as vehiclePlate from 
    ydb2 where YSQL('from ydb2','select vehiclePlate,tollCode from vehiclepass  where ydbpartion = \'3000w\' and tollCode=\'3\' ','segment')
 ) k22 on k21.vehiclePlate=k22.vehiclePlate ;


  select  k1.vehiclePlate as vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'1\'  ','segment')
    ) k1
    LEFT SEMI JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'2\'  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate);


  select  k1.vehiclePlate as vehiclePlate,k2.vehiclePlate from (
            select r[0] as vehiclePlate ,r[1] as tollCode from 
            ydb where YSQL('from','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'1\'  ','segment')
    ) k1
    LEFT JOIN 
   (
        select r[0] as vehiclePlate ,r[1] as tollCode from 
        ydb1 where YSQL('from ydb1','select vehiclePlate,tollCode from vehiclepass where ydbpartion = \'3000w\' and tollCode=\'2\'  ','segment')
    ) k2
    on (k1.vehiclePlate=k2.vehiclePlate);




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
        min(cast(r[5] as string)) as minprov,
        max(cast(r[6] as string)) as maxprov
    from ydb where 
    YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),min(ydb_province),max(ydb_province) from ydb_example_shu where   ydbpartion in (  \'3000w0\',\'3000w1\' ,\'3000w2\',\'3000w3\',\'3000w4\',\'3000w5\',\'3000w6\',\'3000w7\',\'3000w8\',\'3000w9\',\'3000w10\' ,\'3000w11\',\'3000w12\',\'3000w13\',\'3000w14\',\'3000w15\' ,\'3000w16\'  ,\'3000w17\',\'3000w18\',\'3000w19\'
,\'3000a0\',\'3000a1\' ,\'3000a2\',\'3000a3\',\'3000a4\',\'3000a5\',\'3000a6\',\'3000a7\',\'3000a8\',\'3000a9\',\'3000a10\' ,\'3000a11\',\'3000a12\',\'3000a13\',\'3000a14\',\'3000a15\' ,\'3000a16\'  ,\'3000a17\',\'3000a18\',\'3000a19\' 
,\'3000b0\',\'3000b1\' ,\'3000b2\',\'3000b3\',\'3000b4\',\'3000b5\',\'3000b6\',\'3000b7\',\'3000b8\',\'3000b9\',\'3000b10\' ,\'3000b11\',\'3000b12\',\'3000b13\',\'3000b14\',\'3000b15\' ,\'3000b16\'  ,\'3000b17\',\'3000b18\',\'3000b19\' 

) ','segment')

)tmp

 limit 10;
 

select sum(cast(r[0] as bigint)) as cnt from 
ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment')
 
union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb1 where YSQL('from ydb1','select count(*) from ydb_example_shu where ydbpartion=\'300winsert\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb2 where YSQL('from ydb2','select count(*) from ydb_example_shu where ydbpartion=\'300winsert2\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb3 where YSQL('from ydb3','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb4 where YSQL('from ydb4','select count(*) from ydb_example_trade where ydbpartion=\'20151011\'   and content=\'工商银行\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb5 where YSQL('from ydb5','select count(*) from ydb_example_trade where ydbpartion=\'20151011\' ','segment')  limit 100;


select sum(cast(r[0] as bigint)) as cnt from 
ydb where YSQL('from ydb','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment')
 
union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb1 where YSQL('from ydb1','select count(*) from ydb_example_shu where ydbpartion=\'300winsert\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb2 where YSQL('from ydb2','select count(*) from ydb_example_shu where ydbpartion=\'300winsert2\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb3 where YSQL('from ydb3','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb4 where YSQL('from ydb4','select count(*) from ydb_example_trade where ydbpartion=\'20151011\'   and content=\'工商银行\' ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt from 
ydb5 where YSQL('from ydb5','select count(*) from ydb_example_trade where ydbpartion=\'20151011\' ','segment') limit 100;



select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb where YSQL('from','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'旺旺\'  ','segment')
 
union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb1 where YSQL('from ydb1','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\'  ','segment') 

union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb2 where YSQL('from ydb2','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'汇源\'  ','segment') 


union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb3 where YSQL('from ydb3','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\' and content=\'哇哈哈\'  ','segment') 


union all
select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as bigint)) as sumamt from 
ydb4 where YSQL('from ydb4','select count(*),sum(amtlong) from ydb_example_shu where ydbpartion = \'3000w\'  ','segment') limit 100;



select r as r from 
ydb where YSQL('from','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'旺旺\' order by amtlong desc limit 0,1 ','segment')
 
union all
select r as r from 
ydb1 where YSQL('from ydb1','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'王老吉\' order by amtlong desc limit 0,1 ','segment') 

union all
select r as r from 
ydb2 where YSQL('from ydb2','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'汇源\' order by amtlong desc limit 0,1 ','segment') 


union all
select r as r from 
ydb3 where YSQL('from ydb3','select amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' and content=\'哇哈哈\' order by amtlong desc limit 0,1 ','segment')  limit 1000;









select sum(cast(r[0] as bigint)) as cnt from 
ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
limit 10;



select r[0],r[1],r[2],r[3],r[4],r[5],r[6],r[7],r[8],r[9],r[10],r[11],r[12],r[13],r[14] from 
ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
limit 10;


select r[0],r[1] from ydb where YSQL('from','select content,usernick from ydb_example_shu where ydbpartion=\'3000w\' and content=\'王老吉\' ','segment') limit 100;

select r[0],r[1] from ydb where YSQL('from','Ycode@select+content%2Cusernick+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+and+content%3D%27%E7%8E%8B%E8%80%81%E5%90%89%27','segment') limit 100;



select r[0],r[1],r[2],r[3],r[4] from ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where ydbpartion=\'3000w\'  and ydb_sex=\'女\' and ydb_grade=\'本科\' and (ydb_age=\'20到30岁\' or ydb_blood=\'O\') and  (amtlong like \'([3000 TO 4000] )\') ','segment') limit 100;

select r from ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where ydbpartion=\'3000w\'  and ydb_sex=\'女\' and ydb_grade=\'本科\' and (ydb_age=\'20到30岁\' or ydb_blood=\'O\') and  (amtlong like \'([3000 TO 4000] )\') ','segment') limit 100;


select 
    sum(cast(r[0] as bigint)) as cnt,
    sum(cast(r[1] as bigint)) as cntamt,
    sum(cast(r[2] as double)) as sumamt,
    min(cast(r[3] as double)) as minamt,
    max(cast(r[4] as double)) as maxamt,
    min(r[5]) as minprov,
    max(r[6]) as maxprov
from 
ydb where YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\'  ','segment')
limit 10;


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
    from ydb where 
    YSQL('from','select count(*),count(amtdouble),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\'  ','segment')

)tmp

 limit 10;



select r[0], r[1],sum(cast(r[2] as bigint)) as cnt,sum(cast(r[3] as bigint)),sum(cast(r[4] as double))  from ydb where 
YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_sex,ydb_province  ','segment') 

group by r[0], r[1]  order by cnt desc 
limit 10;



select ydb_sex, phonenum,amtlong,amtdouble from 
(
    select r[0] as ydb_sex,r[1] as phonenum,cast(r[2] as bigint) as amtlong,cast(r[3] as double) as amtdouble from ydb where 
    YSQL('from','select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion=\'3000w\'  order by amtdouble desc ,amtlong limit 10 ','segment')
)tmp order by amtdouble desc ,amtlong  limit 10;


select ydb_sex, phonenum,amtlong,amtdouble from 
(
    select r[0] as ydb_sex,r[1] as phonenum,cast(r[2] as bigint) as amtlong,cast(r[3] as double) as amtdouble from ydb where 
    YSQL('from','Ycode@select+ydb_sex%2C+phonenum%2Camtlong%2Camtdouble+from+ydb_example_shu+where+ydbpartion%3D%273000w%27++order+by+amtdouble+desc+%2Camtlong+limit+10','segment')
)tmp order by amtdouble desc ,amtlong  limit 10;





select Ycount('*',ya100_pipe) from ydb_example_shu where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe) and Ycombine('ydb_example_shu','*',ya100_pipe) limit 10;


select sum(cast(r[0] as bigint)) as cnt from 
ydb where YSQL('from','select count(*) from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
limit 10;



select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe) limit 10;

select r[0],r[1],r[2],r[3],r[4],r[5],r[6],r[7],r[8],r[9],r[10],r[11],r[12],r[13],r[14] from 
ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
limit 10;


select content,usernick from ydb_example_shu  where Yfilter('ydb_example_shu','ydbpartion=\'3000w\' and content=\'王老吉\'',ya100_pipe) limit 100;

select r[0],r[1] from ydb where YSQL('from','select content,usernick from ydb_example_shu where ydbpartion=\'3000w\' and content=\'王老吉\' ','segment') limit 100;



select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu 
where Yfilter('ydb_example_shu','ydbpartion=\'3000w\' and ydb_sex=\'女\' and ydb_grade=\'本科\' and (ydb_age=\'20到30岁\' or ydb_blood=\'O\') and  (amtlong like \'([3000 TO 4000] )\')',ya100_pipe)
limit 100;

select r[0],r[1],r[2],r[3],r[4] from ydb where YSQL('from','select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu where ydbpartion=\'3000w\'  and ydb_sex=\'女\' and ydb_grade=\'本科\' and (ydb_age=\'20到30岁\' or ydb_blood=\'O\') and  (amtlong like \'([3000 TO 4000] )\') ','segment') limit 100;


select Ycount('*',ya100_pipe) ,Ysum('amtdouble', ya100_pipe) ,Ymin('amtdouble', ya100_pipe) ,Ymax('amtdouble', ya100_pipe) ,Ymaxstring('ydb_province', ya100_pipe),Yminstring('ydb_province', ya100_pipe) from ydb_example_shu
where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe)
and   Ycombine('ydb_example_shu','*,amtdouble,ydb_province',ya100_pipe)
limit 10;

select sum(cast(r[0] as bigint)) as cnt,sum(cast(r[1] as double)) ,min(cast(r[2] as double)),max(cast(r[3] as double))  ,min(r[4]),max(r[5]) from ydb where 
YSQL('from','select count(*),sum(amtdouble),min(amtdouble),max(amtdouble),max(ydb_province),min(ydb_province) from ydb_example_shu where ydbpartion = \'3000w\'  ','segment') limit 10;


select ydb_sex, ydb_province,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from ydb_example_shu 
where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe)
and   Ycombine('ydb_example_shu','*,amtdouble',ya100_pipe)
group by ydb_sex, ydb_province  order by cnt desc limit 10;

select r[0], r[1],sum(cast(r[2] as bigint)) as cnt,sum(cast(r[3] as bigint)),sum(cast(r[4] as double))  from ydb where 
YSQL('from','select ydb_sex,ydb_province,count(*),count(amtdouble),sum(amtdouble) from ydb_example_shu where ydbpartion = \'3000w\' group by ydb_sex,ydb_province  ','segment') 

group by r[0], r[1]  order by cnt desc 
limit 10;


select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu 
where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe)
and   Ytop10000('ydb_example_shu','amtdouble desc ,amtlong limit 10',ya100_pipe)
order by amtdouble desc ,amtlong  limit 10;

select ydb_sex, phonenum,amtlong,amtdouble from 
(
    select r[0] as ydb_sex,r[1] as phonenum,cast(r[2] as bigint) as amtlong,cast(r[3] as double) as amtdouble from ydb where 
    YSQL('from','select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu where ydbpartion=\'3000w\'  order by amtdouble desc ,amtlong limit 10 ','segment')
)tmp order by amtdouble desc ,amtlong  limit 10;




select Ycount('*',ya100_pipe) from ydb_example_shu where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe) and Ycombine('ydb_example_shu','*',ya100_pipe) limit 10;

select * from ydb_example_shu where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe) limit 10;

select Ycount('*',ya100_pipe) from ydb_example_shu where Yfilter('ydb_example_shu','ydbpartion in (\'3000w\')',ya100_pipe) and Ycombine('ydb_example_shu','*',ya100_pipe) limit 10;


select content,usernick from ydb_example_shu  where Yfilter('ydb_example_shu','ydbpartion=\'3000w\' and content=\'王老吉\'',ya100_pipe) limit 100;

select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu 
 where Yfilter('ydb_example_shu','ydbpartion=\'3000w\' and ydb_sex=\'女\' and ydb_grade=\'本科\' and (ydb_age=\'20到30岁\' or ydb_blood=\'O\') and  (amtlong like \'([3000 TO 4000] )\')',ya100_pipe)
 limit 100;

select Ycount('*',ya100_pipe) ,Ysum('amtdouble', ya100_pipe),Yavg('amtdouble', ya100_pipe) ,Ymin('amtdouble', ya100_pipe) ,Ymax('amtdouble', ya100_pipe) ,Ymaxstring('ydb_province', ya100_pipe),Yminstring('ydb_province', ya100_pipe) from ydb_example_shu
 where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe)
 and   Ycombine('ydb_example_shu','*,amtdouble,ydb_province',ya100_pipe)
 limit 10;

select ydb_sex, ydb_province,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from ydb_example_shu 
 where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe)
 and   Ycombine('ydb_example_shu','*,amtdouble',ya100_pipe)
 group by ydb_sex, ydb_province  order by cnt desc limit 10;


select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu 
 where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe)
 and   Ytop10000('ydb_example_shu','amtdouble desc ,amtlong limit 10',ya100_pipe)
 order by amtdouble desc ,amtlong  limit 10;

select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu
 where Yfilter('ydb_example_shu','ydbpartion=\'3000w\'',ya100_pipe)
 and   Ytop10000('ydb_example_shu','* limit 10',ya100_pipe)
 limit 10;



set ya100.spark.filter.ydb_example_shu=ydbpartion='3000w';
set ya100.spark.combine.ydb_example_shu=*;
set ya100.spark.top10000.ydb_example_shu=;
select Ycount('*',ya100_pipe) from ydb_example_shu  limit 10;



set ya100.spark.filter.ydb_example_shu=ydbpartion='3000w';
set ya100.spark.combine.ydb_example_shu=;
set ya100.spark.top10000.ydb_example_shu=;
select * from ydb_example_shu  limit 10;


set ya100.spark.filter.ydb_example_shu=ydbpartion='3000w' and content='王老吉';
set ya100.spark.combine.ydb_example_shu=;
set ya100.spark.top10000.ydb_example_shu=;
select content,usernick from ydb_example_shu  limit 100;

set ya100.spark.filter.ydb_example_shu= ydbpartion='3000w' and ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and  (amtlong like '([3000 TO 4000] )') ;
set ya100.spark.combine.ydb_example_shu=;
set ya100.spark.top10000.ydb_example_shu=;
select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from ydb_example_shu  limit 100;

set ya100.spark.filter.ydb_example_shu=ydbpartion='3000w';
set ya100.spark.combine.ydb_example_shu=*,amtdouble,ydb_province;
set ya100.spark.top10000.ydb_example_shu=;
select Ycount('*',ya100_pipe) ,Ysum('amtdouble', ya100_pipe),Yavg('amtdouble', ya100_pipe) ,Ymin('amtdouble', ya100_pipe) ,Ymax('amtdouble', ya100_pipe) ,Ymaxstring('ydb_province', ya100_pipe),Yminstring('ydb_province', ya100_pipe) from ydb_example_shu  limit 10;


set ya100.spark.filter.ydb_example_shu=ydbpartion='3000w';
set ya100.spark.combine.ydb_example_shu=*,amtdouble;
set ya100.spark.top10000.ydb_example_shu=;
select ydb_sex, ydb_province,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from ydb_example_shu   group by ydb_sex, ydb_province  order by cnt desc limit 10;


set ya100.spark.filter.ydb_example_shu=ydbpartion='3000w';
set ya100.spark.combine.ydb_example_shu=;
set ya100.spark.top10000.ydb_example_shu=amtdouble desc ,amtlong limit 10;
select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu  order by amtdouble desc ,amtlong  limit 10;


set ya100.spark.filter.ydb_example_shu=ydbpartion='3000w';
set ya100.spark.combine.ydb_example_shu=;
set ya100.spark.top10000.ydb_example_shu=* limit 10;
select ydb_sex, phonenum,amtlong,amtdouble from ydb_example_shu  limit 10;




select Ycount('*',ya100_pipe) from spark_index_ya100 where Ycombine('spark_index_ya100','*',ya100_pipe) limit 10;

select * from spark_index_ya100  limit 10;

select content,usernick from spark_index_ya100 where Yfilter('spark_index_ya100','content=\'康佳\'',ya100_pipe) limit 10;
select content,usernick from spark_index_ya100 where Yfilter('spark_index_ya100','Ycode@content%3D%27%E5%BA%B7%E4%BD%B3%27',ya100_pipe) limit 10;

select ydb_province,Ycount('*',ya100_pipe) from spark_index_ya100 
where Yfilter('spark_index_ya100','ydb_province=\'辽宁\' or ydb_province=\'山东\' or ydb_province=\'浙江\'',ya100_pipe) 
and Ycombine('spark_index_ya100','*',ya100_pipe) 
group by ydb_province limit 10;

select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from spark_index_ya100 where Yfilter('spark_index_ya100','ydb_sex=\'女\' and ydb_grade=\'本科\' and (ydb_age=\'20到30岁\' or ydb_blood=\'O\') and  (amtlong like \'([3000 TO 4000] )\')',ya100_pipe) limit 100;
select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from spark_index_ya100 where Yfilter('spark_index_ya100','Ycode@ydb_sex%3D%27%E5%A5%B3%27+and+ydb_grade%3D%27%E6%9C%AC%E7%A7%91%27+and+%28ydb_age%3D%2720%E5%88%B030%E5%B2%81%27+or+ydb_blood%3D%27O%27%29+and++%28amtlong+like+%27%28%5B3000+TO+4000%5D+%29%27%29',ya100_pipe) limit 100;

select Ycount('*',ya100_pipe) from spark_index_ya100 
where Yfilter('spark_index_ya100','ydb_sex=\'女\' and ydb_grade=\'本科\' and (ydb_age=\'20到30岁\' or ydb_blood=\'O\') and  (amtlong like \'([3000 TO 4000] )\')',ya100_pipe)
and Ycombine('spark_index_ya100','*',ya100_pipe)
 limit 100;
 
select Ycount('*',ya100_pipe) ,Ysum('amtdouble', ya100_pipe),Yavg('amtdouble', ya100_pipe) ,Ymin('amtdouble', ya100_pipe) ,Ymax('amtdouble', ya100_pipe) ,Ymaxstring('ydb_province', ya100_pipe),Yminstring('ydb_province', ya100_pipe) from spark_index_ya100
where  Ycombine('spark_index_ya100','*,amtdouble,ydb_province',ya100_pipe)
  limit 10;
  
select ydb_sex, ydb_province,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from spark_index_ya100 
where Ycombine('spark_index_ya100','*,amtdouble',ya100_pipe) 
group by ydb_sex, ydb_province  order by cnt desc limit 10;

select ydb_sex, phonenum,amtlong,amtdouble from spark_index_ya100 where Ytop10000('spark_index_ya100','amtdouble desc ,amtlong limit 10',ya100_pipe) order by amtdouble desc ,amtlong  limit 10;

select ydb_sex, phonenum,amtlong,amtdouble from spark_index_ya100 where Ytop10000('spark_index_ya100','* limit 10',ya100_pipe)  limit 10;




set ya100.spark.filter.spark_index_ya100=;
set ya100.spark.combine.spark_index_ya100=*;
set ya100.spark.top10000.spark_index_ya100=;
select Ycount('*',ya100_pipe) from spark_index_ya100  limit 10;


set ya100.spark.filter.spark_index_ya100=;
set ya100.spark.combine.spark_index_ya100=;
set ya100.spark.top10000.spark_index_ya100=;
select * from spark_index_ya100  limit 10;

set ya100.spark.filter.spark_index_ya100=content='康佳';
set ya100.spark.combine.spark_index_ya100=;
set ya100.spark.top10000.spark_index_ya100=;
select content,usernick from spark_index_ya100   limit 10;

set ya100.spark.filter.spark_index_ya100= ydb_province='辽宁' or ydb_province='山东' or ydb_province='浙江';
set ya100.spark.combine.spark_index_ya100=*;
set ya100.spark.top10000.spark_index_ya100=;
select ydb_province,Ycount('*',ya100_pipe) from spark_index_ya100  group by ydb_province limit 100;

set ya100.spark.filter.spark_index_ya100= ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and  (amtlong like '([3000 TO 4000] )') ;
set ya100.spark.combine.spark_index_ya100=;
set ya100.spark.top10000.spark_index_ya100=;
select ydb_sex,ydb_grade,ydb_age,ydb_blood,amtlong from spark_index_ya100  limit 100;



set ya100.spark.filter.spark_index_ya100= ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and  (amtlong like '([3000 TO 4000] )') ;
set ya100.spark.combine.spark_index_ya100=*;
set ya100.spark.top10000.spark_index_ya100=;
select Ycount('*',ya100_pipe) from spark_index_ya100  limit 100;



set ya100.spark.filter.spark_index_ya100=;
set ya100.spark.combine.spark_index_ya100=*,amtdouble,ydb_province;
set ya100.spark.top10000.spark_index_ya100=;
select Ycount('*',ya100_pipe) ,Ysum('amtdouble', ya100_pipe),Yavg('amtdouble', ya100_pipe) ,Ymin('amtdouble', ya100_pipe) ,Ymax('amtdouble', ya100_pipe) ,Ymaxstring('ydb_province', ya100_pipe),Yminstring('ydb_province', ya100_pipe) from spark_index_ya100  limit 10;

set ya100.spark.filter.spark_index_ya100=;
set ya100.spark.combine.spark_index_ya100=*,amtdouble;
set ya100.spark.top10000.spark_index_ya100=;
select ydb_sex, ydb_province,Ycount('*',ya100_pipe),Ycount('amtdouble',ya100_pipe) as cnt,Ysum('amtdouble',ya100_pipe) from spark_index_ya100   group by ydb_sex, ydb_province  order by cnt desc limit 10;

set ya100.spark.filter.spark_index_ya100=;
set ya100.spark.combine.spark_index_ya100=;
set ya100.spark.top10000.spark_index_ya100=amtdouble desc ,amtlong limit 10;
select ydb_sex, phonenum,amtlong,amtdouble from spark_index_ya100  order by amtdouble desc ,amtlong  limit 10;



set ya100.spark.filter.spark_index_ya100=;
set ya100.spark.combine.spark_index_ya100=;
set ya100.spark.top10000.spark_index_ya100=* limit 10;
select ydb_sex, phonenum,amtlong,amtdouble from spark_index_ya100  limit 10;






set ya100.spark.filter.spark_ya100=;
set ya100.spark.combine.spark_ya100=*;
set ya100.spark.top10000.spark_ya100=;
select Ycount('*',ya100_pipe) from spark_ya100 limit 10;


set ya100.spark.filter.spark_ya100=phonenum='18863276631';
set ya100.spark.combine.spark_ya100=*;
set ya100.spark.top10000.spark_ya100=;
select Ycount('*',ya100_pipe) from spark_ya100 limit 10;




set ya100.spark.filter.spark_ya100= amtlong like '([1095 TO 1100] )';
set ya100.spark.combine.spark_ya100=*;
set ya100.spark.top10000.spark_ya100=;
select Ycount('*',ya100_pipe) from spark_ya100 limit 10;




set ya100.spark.filter.spark_ya100= content='黑牛核桃芝麻糊';
set ya100.spark.combine.spark_ya100=*;
set ya100.spark.top10000.spark_ya100=;
select Ycount('*',ya100_pipe) from spark_ya100 limit 10;



set ya100.spark.filter.spark_ya100= ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and ydb_day='20160216';
set ya100.spark.combine.spark_ya100=*;
set ya100.spark.top10000.spark_ya100=;

select Ycount('*',ya100_pipe) from spark_ya100 limit 10;



set ya100.spark.filter.spark_ya100=phonenum='18863276631';
set ya100.spark.combine.spark_ya100=;
set ya100.spark.top10000.spark_ya100=;
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_ya100 sort by ydb_day limit 10;



set ya100.spark.filter.spark_ya100= amtlong like '([1095 TO 1100] )';
set ya100.spark.combine.spark_ya100=;
set ya100.spark.top10000.spark_ya100=;
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_ya100 sort by ydb_day limit 10;





set ya100.spark.filter.spark_ya100= content='黑牛核桃芝麻糊';
set ya100.spark.combine.spark_ya100=;
set ya100.spark.top10000.spark_ya100=;
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_ya100 sort by ydb_day limit 10;






set ya100.spark.filter.spark_ya100= ydb_sex='女' and ydb_grade='本科' and (ydb_age='20到30岁' or ydb_blood='O') and ydb_day='20160216';
set ya100.spark.combine.spark_ya100=;
set ya100.spark.top10000.spark_ya100=;

select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_ya100 sort by ydb_day limit 10;






set ya100.spark.filter.spark_ya100=;
set ya100.spark.combine.spark_ya100=amtlong,amtdouble;
set ya100.spark.top10000.spark_ya100=;
select Ycount('amtdouble',ya100_pipe),Ysum('amtdouble',ya100_pipe) ,Yavg('amtdouble',ya100_pipe),Ymax('amtdouble',ya100_pipe),Ymin('amtdouble',ya100_pipe),Ycount('amtlong',ya100_pipe) ,Ysum('amtlong',ya100_pipe) ,Yavg('amtlong',ya100_pipe), Ymax('amtlong',ya100_pipe), Ymin('amtlong',ya100_pipe)  from spark_ya100 limit 10;






set ya100.spark.filter.spark_ya100=;
set ya100.spark.combine.spark_ya100=ydb_sex;
set ya100.spark.top10000.spark_ya100=;
select Ycount('ydb_sex',ya100_pipe), Ymaxstring('ydb_sex',ya100_pipe), Yminstring('ydb_sex',ya100_pipe)  from spark_ya100  limit 10;




set ya100.spark.filter.spark_ya100=;
set ya100.spark.combine.spark_ya100=ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtlong;
set ya100.spark.top10000.spark_ya100=;
select Ycount('ydb_sex',ya100_pipe),Ycount('ydb_province',ya100_pipe),Ycount('ydb_grade',ya100_pipe),Ycount('ydb_age',ya100_pipe),Ycount('ydb_blood',ya100_pipe),Ycount('ydb_zhiye',ya100_pipe),Ycount('ydb_earn',ya100_pipe),Ycount('ydb_prefer',ya100_pipe),Ycount('ydb_consume',ya100_pipe),Ycount('ydb_day',ya100_pipe),Ycount('amtlong',ya100_pipe), Ymaxstring('ydb_sex',ya100_pipe),Ymaxstring('ydb_province',ya100_pipe),Ymaxstring('ydb_grade',ya100_pipe),Ymaxstring('ydb_age',ya100_pipe),Ymaxstring('ydb_blood',ya100_pipe),Ymaxstring('ydb_zhiye',ya100_pipe),Ymaxstring('ydb_earn',ya100_pipe),Ymaxstring('ydb_prefer',ya100_pipe),Ymaxstring('ydb_consume',ya100_pipe),Ymaxstring('ydb_day',ya100_pipe),Ymax('amtlong',ya100_pipe) from spark_ya100  limit 10;



set ya100.spark.filter.spark_ya100=;
set ya100.spark.combine.spark_ya100=*;
set ya100.spark.top10000.spark_ya100=;
select ydb_sex,Ycount('*',ya100_pipe) from spark_ya100 group by ydb_sex limit 10;



set ya100.spark.filter.spark_ya100=;
set ya100.spark.combine.spark_ya100=*;
set ya100.spark.top10000.spark_ya100=;
select ydb_sex, ydb_province,Ycount('*',ya100_pipe) as cnt from spark_ya100 group by ydb_sex, ydb_province  sort by cnt desc limit 10;



set ya100.spark.filter.spark_ya100=;
set ya100.spark.combine.spark_ya100=*,amtlong;
set ya100.spark.top10000.spark_ya100=;
select ydb_sex, ydb_province,Ycount('*',ya100_pipe),Ycount('amtlong',ya100_pipe),Ysum('amtlong',ya100_pipe) as cnt from spark_ya100  group by ydb_sex, ydb_province  sort by cnt desc limit 10;


set ya100.spark.filter.spark_ya100=;
set ya100.spark.combine.spark_ya100=ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtlong;
set ya100.spark.top10000.spark_ya100=;
select ydb_sex,ydb_province,ydb_grade, Ymaxstring('ydb_age',ya100_pipe),Ymaxstring('ydb_blood',ya100_pipe),Ymaxstring('ydb_zhiye',ya100_pipe),Ymaxstring('ydb_earn',ya100_pipe),Ymaxstring('ydb_prefer',ya100_pipe),Ymaxstring('ydb_consume',ya100_pipe),Ymaxstring('ydb_day',ya100_pipe),Ysum('amtlong',ya100_pipe) as cnt from spark_ya100 group by ydb_sex,ydb_province,ydb_grade sort by cnt desc limit 10;


set ya100.spark.filter.spark_ya100=;
set ya100.spark.combine.spark_ya100=;
set ya100.spark.top10000.spark_ya100=usernick desc,amtdouble desc limit 10;
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_ya100 sort  by usernick desc,amtdouble desc limit 10; 

set ya100.spark.filter.spark_ya100=;
set ya100.spark.combine.spark_ya100=;
set ya100.spark.top10000.spark_ya100=amtdouble asc,amtlong desc limit 10;
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_ya100 sort  by amtdouble asc,amtlong desc limit 10; 


set ya100.spark.filter.spark_ya100=;
set ya100.spark.combine.spark_ya100=;
set ya100.spark.top10000.spark_ya100=phonenum asc,amtlong desc limit 10;
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_ya100 sort  by phonenum asc,amtlong desc limit 10; 



set ya100.spark.filter.spark_ya100=content='黑牛核桃芝麻糊';
set ya100.spark.combine.spark_ya100=ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtlong;
set ya100.spark.top10000.spark_ya100=;
select Ycount('ydb_sex',ya100_pipe),Ycount('ydb_province',ya100_pipe),Ycount('ydb_grade',ya100_pipe),Ycount('ydb_age',ya100_pipe),Ycount('ydb_blood',ya100_pipe),Ycount('ydb_zhiye',ya100_pipe),Ycount('ydb_earn',ya100_pipe),Ycount('ydb_prefer',ya100_pipe),Ycount('ydb_consume',ya100_pipe),Ycount('ydb_day',ya100_pipe),Ycount('amtlong',ya100_pipe), Ymaxstring('ydb_sex',ya100_pipe),Ymaxstring('ydb_province',ya100_pipe),Ymaxstring('ydb_grade',ya100_pipe),Ymaxstring('ydb_age',ya100_pipe),Ymaxstring('ydb_blood',ya100_pipe),Ymaxstring('ydb_zhiye',ya100_pipe),Ymaxstring('ydb_earn',ya100_pipe),Ymaxstring('ydb_prefer',ya100_pipe),Ymaxstring('ydb_consume',ya100_pipe),Ymaxstring('ydb_day',ya100_pipe),Ymax('amtlong',ya100_pipe) from spark_ya100  limit 10;


set ya100.spark.filter.spark_ya100=content='黑牛核桃芝麻糊';
set ya100.spark.combine.spark_ya100=ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtlong;
set ya100.spark.top10000.spark_ya100=;
select ydb_sex,ydb_province,ydb_grade, Ymaxstring('ydb_age',ya100_pipe),Ymaxstring('ydb_blood',ya100_pipe),Ymaxstring('ydb_zhiye',ya100_pipe),Ymaxstring('ydb_earn',ya100_pipe),Ymaxstring('ydb_prefer',ya100_pipe),Ymaxstring('ydb_consume',ya100_pipe),Ymaxstring('ydb_day',ya100_pipe),Ysum('amtlong',ya100_pipe) as cnt from spark_ya100 group by ydb_sex,ydb_province,ydb_grade sort by cnt desc limit 10;


set ya100.spark.filter.spark_ya100=content='黑牛核桃芝麻糊';
set ya100.spark.combine.spark_ya100=;
set ya100.spark.top10000.spark_ya100=amtdouble asc,amtlong desc limit 10;
select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong from spark_ya100 sort  by amtdouble asc,amtlong desc limit 10; 


set ya100.spark.filter.spark_ya100=content='黑牛核桃芝麻糊';
set ya100.spark.combine.spark_ya100=*,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtlong;
set ya100.spark.top10000.spark_ya100=;
select phonenum,Ycount('*',ya100_pipe), Ymaxstring('ydb_age',ya100_pipe),Ymaxstring('ydb_blood',ya100_pipe),Ymaxstring('ydb_zhiye',ya100_pipe),Ymaxstring('ydb_earn',ya100_pipe),Ymaxstring('ydb_prefer',ya100_pipe),Ymaxstring('ydb_consume',ya100_pipe),Ymaxstring('ydb_day',ya100_pipe),Ysum('amtlong',ya100_pipe) as cnt from spark_ya100 group by phonenum sort by cnt desc limit 10;


set ya100.spark.filter.spark_ya100=content='黑牛核桃芝麻糊';
set ya100.spark.combine.spark_ya100=*,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtlong;
set ya100.spark.top10000.spark_ya100=;
select usernick, Ycount('*',ya100_pipe),Ymaxstring('ydb_age',ya100_pipe),Ymaxstring('ydb_blood',ya100_pipe),Ymaxstring('ydb_zhiye',ya100_pipe),Ymaxstring('ydb_earn',ya100_pipe),Ymaxstring('ydb_prefer',ya100_pipe),Ymaxstring('ydb_consume',ya100_pipe),Ymaxstring('ydb_day',ya100_pipe),Ysum('amtlong',ya100_pipe) as cnt from spark_ya100 group by usernick sort by cnt desc limit 10;


set ya100.spark.filter.spark_ya100=content='黑牛核桃芝麻糊';
set ya100.spark.combine.spark_ya100=*,phonenum,usernick;
set ya100.spark.top10000.spark_ya100=;
select Ycount('*',ya100_pipe),Ycount('phonenum',ya100_pipe),Ymax('phonenum',ya100_pipe),Ymin('phonenum',ya100_pipe),Ycount('usernick',ya100_pipe) , Ymaxstring('usernick',ya100_pipe), Yminstring('usernick',ya100_pipe)  from spark_ya100 limit 10;





set ya100.spark.filter.ya100_all_type=;
set ya100.spark.combine.ya100_all_type=;
set ya100.spark.top10000.ya100_all_type=;
select * from ya100_all_type limit 10;

set ya100.spark.filter.ya100_all_type=;
set ya100.spark.combine.ya100_all_type=*;
set ya100.spark.top10000.ya100_all_type=;
select Ycount('*',ya100_pipe) from ya100_all_type limit 10;

set ya100.spark.filter.ya100_all_type=;
set ya100.spark.combine.ya100_all_type=*,c1_double,c1_float,c1_long,c1_int,c1_short,c1_byte;
set ya100.spark.top10000.ya100_all_type=;
select 
Ycount('*',ya100_pipe),
Ycount('c1_double',ya100_pipe),Ysum('c1_double',ya100_pipe) ,Yavg('c1_double',ya100_pipe),Ymax('c1_double',ya100_pipe),Ymin('c1_double',ya100_pipe),
Ycount('c1_float',ya100_pipe),Ysum('c1_float',ya100_pipe) ,Yavg('c1_float',ya100_pipe),Ymax('c1_float',ya100_pipe),Ymin('c1_float',ya100_pipe),
Ycount('c1_long',ya100_pipe),Ysum('c1_long',ya100_pipe) ,Yavg('c1_long',ya100_pipe),Ymax('c1_long',ya100_pipe),Ymin('c1_long',ya100_pipe),
Ycount('c1_int',ya100_pipe),Ysum('c1_int',ya100_pipe) ,Yavg('c1_int',ya100_pipe),Ymax('c1_int',ya100_pipe),Ymin('c1_int',ya100_pipe),
Ycount('c1_short',ya100_pipe),Ysum('c1_short',ya100_pipe) ,Yavg('c1_short',ya100_pipe),Ymax('c1_short',ya100_pipe),Ymin('c1_short',ya100_pipe),
Ycount('c1_byte',ya100_pipe),Ysum('c1_byte',ya100_pipe) ,Yavg('c1_byte',ya100_pipe),Ymax('c1_byte',ya100_pipe),Ymin('c1_byte',ya100_pipe)
 from ya100_all_type limit 10;
 
 
set ya100.spark.filter.ya100_all_type=;
set ya100.spark.combine.ya100_all_type=*;
set ya100.spark.top10000.ya100_all_type=;
select c1_string,c1_double,Ycount('*',ya100_pipe) from ya100_all_type group by c1_string,c1_double limit 10;

set ya100.spark.filter.ya100_all_type=;
set ya100.spark.combine.ya100_all_type=*,c2_short,c1_short;
set ya100.spark.top10000.ya100_all_type=;
select c1_byte,c2_byte,Ycount('*',ya100_pipe),
Ycount('c1_short',ya100_pipe),Ysum('c1_short',ya100_pipe) ,Yavg('c1_short',ya100_pipe),Ymax('c1_short',ya100_pipe),Ymin('c1_short',ya100_pipe),
Ycount('c2_short',ya100_pipe),Ysum('c2_short',ya100_pipe) ,Yavg('c2_short',ya100_pipe),Ymax('c2_short',ya100_pipe),Ymin('c2_short',ya100_pipe)
from ya100_all_type group by c1_byte,c2_byte limit 10;


set ya100.spark.filter.ya100_all_type=;
set ya100.spark.combine.ya100_all_type=;
set ya100.spark.top10000.ya100_all_type=c1_short asc,c4_double desc limit 10;
select c1_byte,c2_byte,c1_short,c2_short,c1_int,c2_int,c3_int,c4_int,c1_long,c2_long,c3_long,c4_long,c1_float,c2_float,c3_float,c4_float,c1_double,c2_double,c3_double,c4_double,c1_string,c2_string,c3_string,c4_string,c1_text from ya100_all_type sort  by c1_short asc,c4_double desc limit 10; 

 select r from 
ydb where YSQL('from','select phonenum,usernick,ydb_sex,ydb_province,ydb_grade,ydb_age,ydb_blood,ydb_zhiye,ydb_earn,ydb_prefer,ydb_consume,ydb_day,amtdouble,amtlong,content from ydb_example_shu where ydbpartion = \'3000w\' ','segment') 
limit 10;
