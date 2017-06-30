#!/bin/bash
#学习函数

#函数使用前得先定义
#函数可用return返回数值
#没有return语句,返回值为函数最后一条语句的推出码
#调用函数后,参数变量的值会变成函数的参数,函数返回后又会变回来
yes_or_no()
{
    echo "Is your name $*?"
    while true
    do
        echo  "Enter yes or no"
        read name
        case "$name" in
            y | yes ) return 0;;
            n | no ) return 1;;
            * ) echo "Answer yes or no"
        esac
    done
}

echo "Original parameters are $*"

if yes_or_no "$1"
then
    echo "Hi $1,nice name"
else
    echo "Never,mind"
fi

exit 0