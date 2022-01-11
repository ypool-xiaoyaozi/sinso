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
cd /data/ && mkdir sinso$number
cd $HOME/sinso
cp sinso.yml /data/sinso$number/sinso$number.yaml
sed -i "/^api-addr/{s/$/$number/}" /data/sinso$number/sinso$number.yaml
sed -i "/^debug-api-addr/{s/$/$number/}" /data/sinso$number/sinso$number.yaml
sed -i "/^p2p-addr/{s/$/$number/}" /data/sinso$number/sinso$number.yaml
sed -i "/^tracing-endpoint/{s/$/$number/}" /data/sinso$number/sinso$number.yaml
sed -i "s/sinso/sinso$number/g" /data/sinso$number/sinso$number.yaml 
sindo start --config /data/sinso$number/sinso$number.yaml
exit
