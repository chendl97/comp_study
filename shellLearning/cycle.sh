#!/bin/bash
#学习循环语句

#for   in
sum=0
for var in 1 2 3
do
    echo $var
done
#exit 0

for file in $HOME/c*
do
    ls $file
done

foo=1
while [ "$foo" -le 20 ]  #-le 小于等于
do
    echo $foo
    foo=$(($foo+1))      #$(())数值转换
done
exit 0