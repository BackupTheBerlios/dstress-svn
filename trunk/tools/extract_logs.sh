#!/bin/sh

rm -rf ./tmp2
mkdir -p ./tmp2

for A in `ls ./raw_results/linux-amd64_*log.gz`; do
	B=`echo $A | sed s/raw_results/tmp2/ | sed s/\.gz//`
	gunzip < $A > $B
	touch -r $A $B
done
