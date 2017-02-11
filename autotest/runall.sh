#!/usr/bin/env bash
. ~/.bashrc
export PARENT_DIR_YA100="$(cd "`dirname "$0"`"/..; pwd)"
source ${PARENT_DIR_YA100}/conf/ya100_env.sh

j=0;

while true
do
  
vardate=`date +%Y%m%d%H%M%S`

${PARENT_DIR_YA100}/bin/sql.sh -f ./runall.sql 

j=`expr $j + 1`
for i in $( seq 1 1000 )
do
 
curl "http://localhost:1210/ydbpage?reqid=00${vardate}_${j}_page&pagesize=100&sql=select+r%5B0%5D+as+pagekey%2Cconcat_ws%28%27%2C%27%2Cr%29+as+pagevalue+from++ydb+where+YSQL%28%27from%27%2C%27select+y_uuid_s%2Cphonenum%2Cusernick%2Ccontent+from+ydb_example_shu+where+ydbpartion%3D%223000w%22+and+content%3D%22%E7%8E%8B%E8%80%81%E5%90%89%22+and+ydbkv%3D%22export.max.return.docset.size%3A1000%22+and+ydbkv%3D%22max.return.docset.size%3A1000%22++%27%2C%27segment%27%29"|cut -b -200|tail -n 3
curl "http://localhost:1210/ydbpage?reqid=00d3${vardate}_${j}_page&pagesize=100&sql=select+r%5B0%5D+as+pagekey%2Cconcat_ws%28%27%2C%27%2Cr%29+as+pagevalue+from++ydb+where+YSQL%28%27from%27%2C%27select+y_uuid_s%2Cphonenum%2Cusernick+from+ydb_example_shu+where+ydbpartion%3D%223000w%22++and+ydbkv%3D%22export.max.return.docset.size%3A1000%22+and+ydbkv%3D%22max.return.docset.size%3A1000%22++%27%2C%27segment%27%29"|cut -b -200|tail -n 3
curl "http://localhost:1210/ydbpage?reqid=0234${vardate}_${j}_page&pagesize=100&sql=select+concat_ws%28%27%2C%27%2Cr%5B0%5D%2Cr%5B1%5D%2Cr%5B2%5D%29+as+pagekey%2Cconcat_ws%28%27%2C%27%2Cr%29+as+pagevalue+from++ydb+where+YSQL%28%27from%27%2C%27select+amtdouble%2Camtlong%2Cy_uuid_s%2Ccontent%2Cusernick%2Cydb_sex+from+ydb_example_shu+where+ydbpartion%3D%223000w%22+and+ydbkv%3D%22export.max.return.docset.size%3A1000%22+and+ydbkv%3D%22max.return.docset.size%3A1000%22++%27%2C%27segment%27%29+"|cut -b -200|tail -n 3

done




curl "http://localhost:1210/sql?sql=select+phonenum%2Cusernick%2Cydb_sex%2Cydb_province%2Cydb_grade%2Cydb_age%2Cydb_blood%2Cydb_zhiye%2Cydb_earn%2Cydb_prefer%2Cydb_consume%2Cydb_day%2Camtdouble%2Camtlong%2Ccontent+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+limit+0%2C30+"
curl "http://localhost:1210/sql?sql=select+count%28*%29+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+limit+0%2C30+"
curl "http://localhost:1210/sql?sql=select+count%28*%29+from+ydb_example_shu+where+ydbpartion%3D%273000w%27and+phonenum%3D%2718620859995%27+limit+0%2C30+"
curl "http://localhost:1210/sql?sql=select+count%28*%29+from+ydb_example_shu+where+ydbpartion%3D%273000w%27and+amtlong+like+%27%28[1095+TO+1100]+%29%27+limit+0%2C30+"
curl "http://localhost:1210/sql?sql=select+count%28*%29+from+ydb_example_shu+where+ydbpartion%3D%273000w%27and+content%3D%27%E9%BB%91%E7%89%9B%E6%A0%B8%E6%A1%83%E8%8A%9D%E9%BA%BB%E7%B3%8A%27+limit+0%2C30+"
curl "http://localhost:1210/sql?sql=select+count%28*%29+from+ydb_example_shu+where+ydbpartion%3D%273000w%27and++ydb_sex%3D%27%E5%A5%B3%27+and+ydb_grade%3D%27%E6%9C%AC%E7%A7%91%27+and+%28ydb_age%3D%2720%E5%88%B030%E5%B2%81%27+or+ydb_blood%3D%27O%27%29+and+ydb_day%3D%2720160209%27+limit+0%2C30+"
curl "http://localhost:1210/sql?sql=select+phonenum%2Cusernick%2Cydb_sex%2Cydb_province%2Cydb_grade%2Cydb_age%2Cydb_blood%2Cydb_zhiye%2Cydb_earn%2Cydb_prefer%2Cydb_consume%2Cydb_day%2Camtdouble%2Camtlong++from+ydb_example_shu+where+ydbpartion%3D%273000w%27+and+phonenum%3D%2713853208042%27+limit+10%0D%0A"
curl "http://localhost:1210/sql?sql=select+phonenum%2Cusernick%2Cydb_sex%2Cydb_province%2Cydb_grade%2Cydb_age%2Cydb_blood%2Cydb_zhiye%2Cydb_earn%2Cydb_prefer%2Cydb_consume%2Cydb_day%2Camtdouble%2Camtlong++from+ydb_example_shu+where+ydbpartion%3D%273000w%27+and+amtlong+like+%27%28[1095+TO+1100]+%29%27+limit+10%0D%0A"
curl "http://localhost:1210/sql?sql=select+phonenum%2Cusernick%2Cydb_sex%2Cydb_province%2Cydb_grade%2Cydb_age%2Cydb_blood%2Cydb_zhiye%2Cydb_earn%2Cydb_prefer%2Cydb_consume%2Cydb_day%2Camtdouble%2Camtlong%2Ccontent++from+ydb_example_shu+where+ydbpartion%3D%273000w%27+and+content%3D%27%E9%BB%91%E7%89%9B%E6%A0%B8%E6%A1%83%E8%8A%9D%E9%BA%BB%E7%B3%8A%27+limit+10%0D%0A"
curl "http://localhost:1210/sql?sql=select+phonenum%2Cusernick%2Cydb_sex%2Cydb_province%2Cydb_grade%2Cydb_age%2Cydb_blood%2Cydb_zhiye%2Cydb_earn%2Cydb_prefer%2Cydb_consume%2Cydb_day%2Camtdouble%2Camtlong%2Ccontent++from+ydb_example_shu+where+ydbpartion%3D%273000w%27+and+ydb_sex%3D%27%E5%A5%B3%27+and+ydb_grade%3D%27%E6%9C%AC%E7%A7%91%27+and+%28ydb_age%3D%2720%E5%88%B030%E5%B2%81%27+or+ydb_blood%3D%27O%27%29+and+ydb_day%3D%2720160209%27+limit+10"
curl "http://localhost:1210/sql?sql=select+count%28amtdouble%29%2Csum%28amtdouble%29+%2Cavg%28amtdouble%29%2Cmax%28amtdouble%29%2Cmin%28amtdouble%29%2Ccount%28amtlong%29%2Csum%28amtlong%29+%2Cavg%28amtlong%29%2Cmax%28amtlong%29%2Cmin%28amtlong%29+%0D%0A+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+limit+10"
curl "http://localhost:1210/sql?sql=select+count%28*%29%2Ccount%28ydb_sex%29%2Cmax%28ydb_sex%29%2Cmin%28ydb_sex%29+%0D%0A+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+limit+10"
curl "http://localhost:1210/sql?sql=select+count%28ydb_sex%29%2Ccount%28ydb_province%29%2Ccount%28ydb_grade%29%2Ccount%28ydb_age%29%2Ccount%28ydb_blood%29%2Ccount%28ydb_zhiye%29%2Ccount%28ydb_earn%29%2Ccount%28ydb_prefer%29%2Ccount%28ydb_consume%29%2Ccount%28ydb_day%29%2Ccount%28amtlong%29%2C+max%28ydb_sex%29%2Cmax%28ydb_province%29%2Cmax%28ydb_grade%29%2Cmax%28ydb_age%29%2Cmax%28ydb_blood%29%2Cmax%28ydb_zhiye%29%2Cmax%28ydb_earn%29%2Cmax%28ydb_prefer%29%2Cmax%28ydb_consume%29%2Cmax%28ydb_day%29%2Cmax%28amtlong%29%0D%0A+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+limit+10"
curl "http://localhost:1210/sql?sql=select+ydb_sex%2Ccount%28*%29+from++ydb_example_shu+where+ydbpartion%3D%273000w%27++group+by+ydb_sex+limit+10"
curl "http://localhost:1210/sql?sql=select+ydb_sex%2Cydb_province%2Ccount%28*%29+as+cnt+from++ydb_example_shu+where+ydbpartion%3D%273000w%27+++group+by+ydb_sex%2Cydb_province+order+by+cnt+desc+limit+10%0D%0A"
curl "http://localhost:1210/sql?sql=select+ydb_sex%2C+ydb_province%2Ccount%28*%29%2Ccount%28amtlong%29%2Csum%28amtlong%29+as+cnt+from++ydb_example_shu+where+ydbpartion%3D%273000w%27+group+by+ydb_sex%2Cydb_province+order+by+cnt+desc+limit+10"
curl "http://localhost:1210/sql?sql=select+ydb_sex%2Cydb_province%2Cydb_grade%2C+max%28ydb_age%29%2Cmax%28ydb_blood%29%2Cmax%28ydb_zhiye%29%2Cmax%28ydb_earn%29%2Cmax%28ydb_prefer%29%2Cmax%28ydb_consume%29%2Cmax%28ydb_day%29%2Csum%28amtlong%29+as+cnt+from++ydb_example_shu+where+ydbpartion%3D%273000w%27+group+by+ydb_sex%2Cydb_province%2Cydb_grade+order+by+cnt+desc+limit+10"
curl "http://localhost:1210/sql?sql=select+phonenum%2Cusernick%2Cydb_sex%2Cydb_province%2Cydb_grade%2Cydb_age%2Cydb_blood%2Cydb_zhiye%2Cydb_earn%2Cydb_prefer%2Cydb_consume%2Cydb_day%2Camtdouble%2Camtlong+from+++ydb_example_shu+where+ydbpartion%3D%273000w%27+order+by+usernick+desc%2Camtdouble+desc+limit+10%0D%0A"
curl "http://localhost:1210/sql?sql=select+phonenum%2Cusernick%2Cydb_sex%2Cydb_province%2Cydb_grade%2Cydb_age%2Cydb_blood%2Cydb_zhiye%2Cydb_earn%2Cydb_prefer%2Cydb_consume%2Cydb_day%2Camtdouble%2Camtlong+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+order+by+amtdouble+asc%2Camtlong+desc+limit+10%0D%0A"
curl "http://localhost:1210/sql?sql=select+phonenum%2Cusernick%2Cydb_sex%2Cydb_province%2Cydb_grade%2Cydb_age%2Cydb_blood%2Cydb_zhiye%2Cydb_earn%2Cydb_prefer%2Cydb_consume%2Cydb_day%2Camtdouble%2Camtlong+from++ydb_example_shu+where+ydbpartion%3D%273000w%27+order+by+phonenum+asc%2Camtlong+desc+limit+10%0D%0A"

curl "http://localhost:1210/sql?sql=select+count%28ydb_sex%29%2Ccount%28ydb_province%29%2Ccount%28ydb_grade%29%2Ccount%28ydb_age%29%2Ccount%28ydb_blood%29%2Ccount%28ydb_zhiye%29%2Ccount%28ydb_earn%29%2Ccount%28ydb_prefer%29%2Ccount%28ydb_consume%29%2Ccount%28ydb_day%29%2Ccount%28amtlong%29%2C+max%28ydb_sex%29%2Cmax%28ydb_province%29%2Cmax%28ydb_grade%29%2Cmax%28ydb_age%29%2Cmax%28ydb_blood%29%2Cmax%28ydb_zhiye%29%2Cmax%28ydb_earn%29%2Cmax%28ydb_prefer%29%2Cmax%28ydb_consume%29%2Cmax%28ydb_day%29%2Cmax%28amtlong%29+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+and+content+like+%27%25%E9%BB%91%E7%89%9B%E6%A0%B8%E6%A1%83%E8%8A%9D%E9%BA%BB%E7%B3%8A%25%27++limit+10%0D%0A"

curl "http://localhost:1210/sql?sql=select+ydb_sex%2Cydb_province%2Cydb_grade%2Cmax%28ydb_age%29%2Cmax%28ydb_blood%29%2Cmax%28ydb_zhiye%29%2Cmax%28ydb_earn%29%2Cmax%28ydb_prefer%29%2Cmax%28ydb_consume%29%2Cmax%28ydb_day%29%2Csum%28amtlong%29+as+cnt+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+and+content+%3D%27%E9%BB%91%E7%89%9B%E6%A0%B8%E6%A1%83%E8%8A%9D%E9%BA%BB%E7%B3%8A%27+group+by+ydb_sex%2Cydb_province%2Cydb_grade+order+by+cnt+desc+limit+10%0D%0A"
curl "http://localhost:1210/sql?sql=select+phonenum%2Cusernick%2Cydb_sex%2Cydb_province%2Cydb_grade%2Cydb_age%2Cydb_blood%2Cydb_zhiye%2Cydb_earn%2Cydb_prefer%2Cydb_consume%2Cydb_day%2Camtdouble%2Camtlong+from++ydb_example_shu+where+ydbpartion%3D%273000w%27+and+content+%3D%27%E9%BB%91%E7%89%9B%E6%A0%B8%E6%A1%83%E8%8A%9D%E9%BA%BB%E7%B3%8A%27++order+by+amtdouble+asc%2Camtlong+desc+limit+10%0D%0A"
curl "http://localhost:1210/sql?sql=select+phonenum%2Ccount%28*%29%2Cmax%28ydb_age%29%2Cmax%28ydb_blood%29%2Cmax%28ydb_zhiye%29%2Cmax%28ydb_earn%29%2Cmax%28ydb_prefer%29%2Cmax%28ydb_consume%29%2Cmax%28ydb_day%29%2Csum%28amtlong%29+as+cnt+from++ydb_example_shu+where+ydbpartion%3D%273000w%27+and+content+%3D%27%E9%BB%91%E7%89%9B%E6%A0%B8%E6%A1%83%E8%8A%9D%E9%BA%BB%E7%B3%8A%27+group+by+phonenum+order+by+cnt+desc+limit+10%0D%0A"
curl "http://localhost:1210/sql?sql=select+usernick%2Ccount%28*%29%2C+max%28ydb_age%29%2Cmax%28ydb_blood%29%2Cmax%28ydb_zhiye%29%2Cmax%28ydb_earn%29%2Cmax%28ydb_prefer%29%2Cmax%28ydb_consume%29%2Cmax%28ydb_day%29%2Csum%28amtlong%29+as+cnt+from++ydb_example_shu+where+ydbpartion%3D%273000w%27+and+content+%3D%27%E9%BB%91%E7%89%9B%E6%A0%B8%E6%A1%83%E8%8A%9D%E9%BA%BB%E7%B3%8A%27+group+by+usernick+order+by+cnt+desc+limit+10%0D%0A"
curl "http://localhost:1210/sql?sql=select+count%28*%29%2Ccount%28phonenum%29%2Cmax%28phonenum%29%2Cmin%28phonenum%29%2Ccount%28usernick%29%2Cmax%28usernick%29%2Cmin%28usernick%29+from+ydb_example_shu+where+ydbpartion%3D%273000w%27+and+content+%3D%27%E9%BB%91%E7%89%9B%E6%A0%B8%E6%A1%83%E8%8A%9D%E9%BA%BB%E7%B3%8A%27+limit+10"
 
  
  
done


