#!/usr/bin/env bash
. ~/.bashrc
export PARENT_DIR_YA100="$(cd "`dirname "$0"`"/..; pwd)"
source ${PARENT_DIR_YA100}/conf/ya100_env.sh

j=0;

while true
do
  

${PARENT_DIR_YA100}/bin/sql.sh -ff ./runfast.sql 

  
  
done


