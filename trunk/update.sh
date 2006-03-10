#!/bin/bash

make distclean
dmd -w -O log.d || exit 2
export PATH=.:$PATH

for DMD in `cd /opt/dmd/bin/; ls *dmd-0.*  | sort -u -r`; do
	export DMD
	if echo $DMD | grep "\\(0\\.138\\)\\|\\(0\\.139\\)\\|\\(0\\.14\\)\\|\\(gdmd\\)" > /dev/null 2>/dev/null; then
		unset DSTRESS_TORTURE_BLOCK
	else
		DSTRESS_TORTURE_BLOCK=-fPIC
		export DSTRESS_TORTURE_BLOCK
	fi

	export DMDX=`echo $DMD | sed "s/gdmd/gdc/"`

	if test -f raw_results/linux-amd64_$DMDX.log.gz; then
		echo "$DMD ($DMDX) - update build"
		make dstress
		gunzip < raw_results/linux-amd64_$DMDX.log.gz > raw_results/linux-amd64_$DMDX.log
		touch -a -m -r raw_results/linux-amd64_$DMDX.log.gz raw_results/linux-amd64_$DMDX.log
		./log genUpdateList . raw_results/linux-amd64_$DMDX.log
		date -R > raw_results/linux-amd64_$DMDX 
		date -R > raw_results/linux-amd64_$DMDX.log 
		mv raw_results/linux-amd64_$DMDX.log.update update-list.sh
		chmod +x update-list.sh
		./update-list.sh 2>> raw_results/linux-amd64_$DMDX 1>> raw_results/linux-amd64_$DMDX.log
		rm -f log.txt
		make complex > log.txt 2>&1
		cat log.txt >> raw_results/linux-amd64_$DMDX.log
	else
		echo "$DMD ($DMDX) - full build"
		make > raw_results/linux-amd64_$DMDX 2>&1
		cat log.txt > raw_results/linux-amd64_$DMDX.log
	fi

	gzip -9 < raw_results/linux-amd64_$DMDX.log >> raw_results/linux-amd64_$DMDX.log.gz
	rm -f raw_results/linux-amd64_$DMDX.log
	make distclean
done

dmd log || exit 1

rm -rf tmp2 || exit 1
mkdir tmp2 || exit 1
cp raw_results/linux-amd64*gz tmp2 || exit 1
for LOG in `tree -if tmp2 | grep "gz$"`; do
	gunzip $LOG
done

./log genReport . \
	--./tmp2/linux-amd64_dmd-0.149.log \
	--./tmp2/linux-amd64_gdc-0.18.1.log \
	./tmp2/linux-amd64_dmd-0.148.log \
	./tmp2/linux-amd64_dmd-0.147.log \
	./tmp2/linux-amd64_dmd-0.146.log \
	./tmp2/linux-amd64_dmd-0.145.log \
	./tmp2/linux-amd64_dmd-0.144.log \
	./tmp2/linux-amd64_dmd-0.143.log \
	./tmp2/linux-amd64_dmd-0.142.log \
	./tmp2/linux-amd64_dmd-0.141.log \
	./tmp2/linux-amd64_gdc-0.17.log 

mv www/results.html www/results.short.html

./log genReport . \
	--./tmp2/linux-amd64_dmd-0.149.log \
	--./tmp2/linux-amd64_gdc-0.18.1.log \
	--./tmp2/linux-amd64_dmd-0.148.log \
	--./tmp2/linux-amd64_dmd-0.147.log \
	--./tmp2/linux-amd64_dmd-0.146.log \
	--./tmp2/linux-amd64_dmd-0.145.log \
	--./tmp2/linux-amd64_dmd-0.144.log \
	--./tmp2/linux-amd64_dmd-0.143.log \
	--./tmp2/linux-amd64_dmd-0.142.log \
	--./tmp2/linux-amd64_dmd-0.141.log \
	--./tmp2/linux-amd64_gdc-0.17.log \
	--./tmp2/linux-amd64_dmd-0.140.log \
	--./tmp2/linux-amd64_dmd-0.139.log \
	--./tmp2/linux-amd64_dmd-0.138.log \
	--./tmp2/linux-amd64_gdc-0.16.log \
	--./tmp2/linux-amd64_dmd-0.137.log \
	--./tmp2/linux-amd64_dmd-0.136.log \
	--./tmp2/linux-amd64_dmd-0.135.log \
	--./tmp2/linux-amd64_dmd-0.134.log \
	--./tmp2/linux-amd64_dmd-0.133.log \
	--./tmp2/linux-amd64_dmd-0.132.log \
	--./tmp2/linux-amd64_dmd-0.131.log \
	--./tmp2/linux-amd64_dmd-0.128.log \
	--./tmp2/linux-amd64_dmd-0.127.log \
	--./tmp2/linux-amd64_dmd-0.126.log \
	--./tmp2/linux-amd64_dmd-0.125.log \
	--./tmp2/linux-amd64_dmd-0.124.log \
	--./tmp2/linux-amd64_dmd-0.123.log \
	--./tmp2/linux-amd64_dmd-0.122.log \
	--./tmp2/linux-amd64_dmd-0.121.log \
	--./tmp2/linux-amd64_dmd-0.120.log \
	--./tmp2/linux-amd64_dmd-0.119.log \
	--./tmp2/linux-amd64_dmd-0.118.log \
	--./tmp2/linux-amd64_dmd-0.117.log \
	--./tmp2/linux-amd64_dmd-0.116.log \
	--./tmp2/linux-amd64_dmd-0.114.log \
	--./tmp2/linux-amd64_dmd-0.113.log \
	--./tmp2/linux-amd64_dmd-0.111.log \
	--./tmp2/linux-amd64_dmd-0.110.log \
	--./tmp2/linux-amd64_dmd-0.109.log \
	--./tmp2/linux-amd64_dmd-0.108.log \
	--./tmp2/linux-amd64_dmd-0.106.log \
	--./tmp2/linux-amd64_dmd-0.105.log \
	--./tmp2/linux-amd64_dmd-0.104.log \
	--./tmp2/linux-amd64_dmd-0.103.log \
	--./tmp2/linux-amd64_dmd-0.102.log \
	--./tmp2/linux-amd64_dmd-0.101.log \
	--./tmp2/linux-amd64_dmd-0.100.log \
	--./tmp2/linux-amd64_dmd-0.099.log \
	--./tmp2/linux-amd64_dmd-0.098.log \
	--./tmp2/linux-amd64_dmd-0.096.log \
	--./tmp2/linux-amd64_dmd-0.095.log \
	--./tmp2/linux-amd64_dmd-0.093.log

rm -rf  tmp2
