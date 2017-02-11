#!/usr/bin/env bash
export PARENT_DIR_YA100="$(cd "`dirname "$0"`"/..; pwd)"
source ${PARENT_DIR_YA100}/conf/ya100_env.sh

export LIB_CLASS_PATH=`find ${YA100_HOME}/lib/*| grep -v source | tr '\n' ':'|sed 's/:$//'`
export LIB_CLASS_EXEC_PATH=`find ${YA100_HOME}/libexec/*| grep -v source | tr '\n' ':'|sed 's/:$//'`
export LIB_CONF_EXEC_PATH=`find ${YA100_HOME}/conf/*| grep -v source | tr '\n' ':'|sed 's/:$//'`

${JAVA_HOME}/bin/java -cp "${LIB_CLASS_PATH}:${LIB_CLASS_EXEC_PATH}:${LIB_CONF_EXEC_PATH}" cn.net.ycloud.ydb.server.reader.kafka.importexample.KafkaAutoTest 2000000 10

