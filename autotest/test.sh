#!/usr/bin/env bash
export PARENT_DIR_YA100="$(cd "`dirname "$0"`"/..; pwd)"
source ${PARENT_DIR_YA100}/conf/ya100_env.sh

export LIB_CLASS_PATH=`find ${YA100_HOME}/lib/*| grep -v source | tr '\n' ':'|sed 's/:$//'`
export LIB_CLASS_EXEC_PATH=`find ${YA100_HOME}/libexec/*| grep -v source | tr '\n' ':'|sed 's/:$//'`

${JAVA_HOME}/bin/java -cp "${LIB_CLASS_PATH}:${LIB_CLASS_EXEC_PATH}" cn.net.ycloud.ydb.exec.YdbTest jdbc:hive2://localhost:${YDB_DRIVER_PORT}  ${HDFS_USER}  "-f" "$1" "$2"

