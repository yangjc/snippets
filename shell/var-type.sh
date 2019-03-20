#!/bin/bash

# 判断变量是否存在
if [ -z ${var+x} ]; then
    echo "var is unset";
else
    echo "var is set";
fi

# 判断变量类型
# declare -p var 如果变量不存在，会报错
if [[ "$(declare -p var)" =~ "declare -a" ]]; then
    echo "is array"
else
    echo "is not array"
fi
