#!/bin/bash
read -p "enter a number: " number
if [ -z $number ];then
        echo "Error"
        exit
else
        jieguo=`echo "$number*1" | bc `
        if [ $jieguo -eq 0 ];then
                echo "not a number"
                exit
        fi
fi
[ -d "/data/sinso$number" ] && echo "目录存在" || mkdir /data/sinso$number

if [ -d "/data/sinso$number" ]
then
        echo "前面输入的是数字，并且正常创建目录"
        cp sinso.yml /data/sinso$number/sinso$number.yaml
        sed -i "/^api-addr/{s/$/$number/}" /data/sinso$number/sinso$number.yaml
        sed -i "/^debug-api-addr/{s/$/$number/}" /data/sinso$number/sinso$number.yaml
        sed -i "/^p2p-addr/{s/$/$number/}" /data/sinso$number/sinso$number.yaml
        sed -i "/^tracing-endpoint/{s/$/$number/}" /data/sinso$number/sinso$number.yaml
        sed -i "s/sinso/sinso$number/g" /data/sinso$number/sinso$number.yaml
        cd /root/mine_publish-1.1.0 && ./sinso start --config /data/sinso$number/sinso$number.yaml
fi