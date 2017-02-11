#!/usr/bin/env bash
. ~/.bashrc
export PARENT_DIR_YA100="$(cd "`dirname "$0"`"/..; pwd)"
source ${PARENT_DIR_YA100}/conf/ya100_env.sh


while true
do
  sh ./initdata_quick.sh



for i in $( seq 1 10 )
do

echo "=============aototest 9.big_result.sql=====[${i}]==========="

sh ./test.sh 9.big_result.sql |grep -C 50 -E "(select|cmpresult)"

  echo "=============aototest 1.common.sql======[${i}]=========="
sh ./test.sh 1.common.sql
echo "=============aototest  2.export.sql=======[${i}]========="
sh ./test.sh 2.export.sql
echo "=============aototest  3.join.sql=========[${i}]======="
sh ./test.sh 3.join.sql
echo "=============aototest  4.distinct_collect_set.sql=====[${i}]==========="
sh ./test.sh 4.distinct_collect_set.sql
echo "=============aototest  6.alltype.sql=========[${i}]======="
sh ./test.sh 6.alltype.sql
echo "=============aototest  7.other.sql=======[${i}]========="
sh ./test.sh 7.other.sql

echo "=============aototest 8.1.blocksort.sql====[${i}]============"
sh ./test.sh 8.1.blocksort.sql
echo "=============aototest 8.2.blocksort.sql======[${i}]=========="

sh ./test.sh 8.2.blocksort.sql
echo "=============aototest 8.3.blocksort.sql=======[${i}]========="

sh ./test.sh 8.3.blocksort.sql
echo "=============aototest 8.4.blocksort.sql======[${i}]=========="

sh ./test.sh 8.4.blocksort.sql
echo "=============aototest 8.5.blocksort.sql======[${i}]=========="

sh ./test.sh 8.5.blocksort.sql
echo "=============aototest 8.6.blocksort.sql=====[${i}]==========="

sh ./test.sh 8.6.blocksort.sql
echo "=============aototest 8.7.blocksort.sql=====[${i}]==========="

sh ./test.sh 8.7.blocksort.sql
echo "=============aototest 8.8.blocksort.sql=====[${i}]==========="

sh ./test.sh 8.8.blocksort.sql




done

curl "http://127.0.0.1:1210/truncatetable?tablename=ydb_example_shu&partions=20150811"
curl "http://127.0.0.1:1210/truncatetable?tablename=ydb_example_ads&partions=20151111"
curl "http://127.0.0.1:1210/truncatetable?tablename=ydb_example_trade&partions=20151111"
curl "http://127.0.0.1:1210/truncatetable?tablename=ydb_oribit&partions=20160619"


sleep 300

  
done


