#!/bin/bash
#学习变量,引号,if,elif,else的使用

#shell中的变量都是字符串型

name="chen daliang"
echo $name
echo "$name"
echo '$name'
echo "the count of the argument is $#"
echo "the name of this shell script is $0"
echo "the first argument is $1"   #没给参数则为空
echo "the first argument is $2"
echo "the first argument is $*"  #列出所有参数
#shell中的引号使用类似于php,单引号内不可使用变量,双引号内可以

echo "Are you daliang chen?Please input yes or no!"
read myvar
if [ $myvar = "yes" ]; then   #给$myvar加上双引号可避免变量为空报错的情况
    echo "good"
else
    echo "bad"
fi

exit 0
#shell脚本程序可以对任何可在命令行上被执行的命令的退出码进行测试,其中也包括用户为自己编写的脚本程序.这就是为什么要加个退出码的原因