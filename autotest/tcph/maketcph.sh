#!/usr/bin/env bash
. ~/.bashrc
export PARENT_DIR_YA100="$(cd "`dirname "$0"`"/..; pwd)"
export CURRENT_DIR_YA100="$(cd "`dirname "$0"`"/; pwd)"
export YA100_PATH="/opt/ydbsoftware/ya100"

cd  ${CURRENT_DIR_YA100}
echo "sleep 30"
pwd
ll
sleep 30

rm dbgen -rf
rm ref_data -rf
pwd
ll
echo "sleep 30"
sleep 30


tar -xzvf tpch_2_14_3.tgz

echo "sleep 30"
pwd
ll
sleep 30


cd dbgen

echo "sleep 30"
pwd
ll
sleep 30

make -f makefile.suite clean; make -f makefile.suite CC=gcc DATABASE=ORACLE MACHINE=LINUX WORKLOAD=TPCH
echo "./dbgen -s 1"
./dbgen -s 1

echo "put lineitem"
hadoop fs -rmr /tpch
hadoop fs -mkdir -p /tpch/lineitem
hadoop fs -put ./lineitem* /tpch/lineitem

echo "put customer"

hadoop fs -mkdir -p /tpch/customer
hadoop fs -put ./customer* /tpch/customer

echo "put nation"

hadoop fs -mkdir -p /tpch/nation
hadoop fs -put ./nation* /tpch/nation

echo "put orders"

hadoop fs -mkdir -p /tpch/orders
hadoop fs -put ./orders* /tpch/orders

echo "put partsupp"

hadoop fs -mkdir -p /tpch/partsupp
hadoop fs -put ./partsupp* /tpch/partsupp

echo "put part"

hadoop fs -mkdir -p /tpch/part
hadoop fs -put ./part* /tpch/part

echo "put region"

hadoop fs -mkdir -p /tpch/region
hadoop fs -put ./region* /tpch/region

echo "put supplier"

hadoop fs -mkdir -p /tpch/supplier
hadoop fs -put ./supplier* /tpch/supplier
pwd 
ll
cd ${CURRENT_DIR_YA100}
pwd 
ll
rm dbgen -rf
rm ref_data -rf

${YA100_PATH}/bin/sql.sh -f ydb_createtable_tcph.sql
