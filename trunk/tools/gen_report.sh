#!/bin/bash

rm -rf ./tmp2
mkdir -p ./tmp2

for A in `ls ./raw_results/linux-amd64_dmd-0.17*bz2 raw_results/linux-amd64_gdc-0.19.log.bz2`; do
	B=`echo $A | sed s/raw_results/tmp2/ | sed s/\.bz2//`
	bunzip2 < $A > $B
	touch -r $A $B
done

./log genReport . \
	--./tmp2/linux-amd64_dmd-0.177.log \
	./tmp2/linux-amd64_dmd-0.175.log \
	./tmp2/linux-amd64_gdc-0.19.log

mv www/results.html www/results.short.html
