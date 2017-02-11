#!/usr/bin/env bash
. ~/.bashrc
export PARENT_DIR_YA100="$(cd "`dirname "$0"`"/..; pwd)"
source ${PARENT_DIR_YA100}/conf/ya100_env.sh

export CURRENT_DIR_YA100_SH="$(cd "`dirname "$0"`"/; pwd)"

while true
do
   cd ${CURRENT_DIR_YA100_SH}
  sh ./tcph/maketcph.sh

cd ${CURRENT_DIR_YA100_SH}

for i in $( seq 1 30 )
do


  echo "=============testtcph.sql======[${i}]=========="
sh ./test.sh ./tcph/testtcph.sql



done



sleep 300

  
done


