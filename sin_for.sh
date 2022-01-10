#!/bin/bash
for i in {1..50}
do
	echo $i
	sudo ./sinso start --config /data/sinso$i/sinso$i.yaml >sin$i.log 2>&1 &done
