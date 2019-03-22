#!/bin/bash

# vim tip: Ctrl+v, I, (input), ESC; Ctrl+v, d, ESC

# 定义选项名和默认值
# optX="--option-name"; x=default-value
optAction="--action"; action="main"

# 用法提示
if [ "$1" == "" -o "$1" == "--help" -o "$1" == "-h" ]; then echo "
Usage
    $0 $optX=
"; exit 1; fi

# 限制执行用户
#runUser=root
#if [ "`id -nu`" != "$runUser" ]; then echo "Should run by user \"$runUser\"."; exit 1; fi
#if [ "`id -nu`" == "$runUser" ]; then echo "Should not run by user \"$runUser\"."; exit 1; fi

# 读取选项和变量赋值
i=-1
while [ $# -gt 0 ]; do
    j=$i
    case "$1" in
#        $flag*) flag=1;;
#        $optX=*) x="${1#*=}";;
        $optAction=*) action="${1#*=}";;
        -*) echo "Unexpected option: $1"; exit 1;;
        *) i=$(($i + 1));;
    esac
    if [ "$i" != "$j" ]; then
        case "$i" in
#            0) x="$1";;
        esac
    fi
    shift
done

# 检查选项值
#if [ "$x" == "" ]; then echo "$optX required."; exit 1; fi

# 逻辑函数
main() {
}

# 执行分支
case "$action" in
    main) main;;
    *) echo "Undefined action: $action"; exit 1;;
esac

