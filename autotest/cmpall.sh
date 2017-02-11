#!/usr/bin/env bash
. ~/.bashrc
export PARENT_DIR_YA100="$(cd "`dirname "$0"`"/..; pwd)"
source ${PARENT_DIR_YA100}/conf/ya100_env.sh

  echo "=============aototest 1.common.sql================"
sh ./test.sh 1.common.sql
echo "=============aototest  2.export.sql================"
sh ./test.sh 2.export.sql
echo "=============aototest  3.join.sql================"
sh ./test.sh 3.join.sql
echo "=============aototest  4.distinct_collect_set.sql================"
sh ./test.sh 4.distinct_collect_set.sql
echo "=============aototest  6.alltype.sql================"
sh ./test.sh 6.alltype.sql
echo "=============aototest  7.other.sql================"
sh ./test.sh 7.other.sql

echo "=============aototest 8.1.blocksort.sql================"
sh ./test.sh 8.1.blocksort.sql
echo "=============aototest 8.2.blocksort.sql================"

sh ./test.sh 8.2.blocksort.sql
echo "=============aototest 8.3.blocksort.sql================"

sh ./test.sh 8.3.blocksort.sql
echo "=============aototest 8.4.blocksort.sql================"

sh ./test.sh 8.4.blocksort.sql
echo "=============aototest 8.5.blocksort.sql================"

sh ./test.sh 8.5.blocksort.sql
echo "=============aototest 8.6.blocksort.sql================"

sh ./test.sh 8.6.blocksort.sql
echo "=============aototest 8.7.blocksort.sql================"

sh ./test.sh 8.7.blocksort.sql
echo "=============aototest 8.8.blocksort.sql================"

sh ./test.sh 8.8.blocksort.sql
echo "=============aototest 9.big_result.sql=====[${i}]==========="

sh ./test.sh 9.big_result.sql |grep -C 50 -E "(select|cmpresult)"

echo "###########################################"
  


