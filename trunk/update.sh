#!/bin/bash

make distclean
dmd -w -O log.d || exit
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
		./log genUpdateList . raw_results/linux-amd64_$DMDX.log
		date -R > raw_results/linux-amd64_$DMDX 
		date -R > raw_results/linux-amd64_$DMDX.log 
		mv raw_results/linux-amd64_$DMDX.log.update update-list.sh
		chmod +x update-list.sh
		./update-list.sh >> raw_results/linux-amd64_$DMDX 2>> raw_results/linux-amd64_$DMDX.log
	else
		echo "$DMD ($DMDX) - full build"
		make > raw_results/linux-amd64_$DMDX 2>&1
		cat log.txt > raw_results/linux-amd64_$DMDX.log
	fi

	gzip -9 < raw_results/linux-amd64_$DMDX.log >> raw_results/linux-amd64_$DMDX.log.gz
	rm -f raw_results/linux-amd64_$DMDX.log
	make distclean
done

rm -rf tmp2
mkdir tmp2
cp raw_results/linux-amd64*gz tmp2
for LOG in `tree -if tmp2 | grep "gz$"`; do
	gunzip $LOG
done

./log genReport . `tree -if tmp2 | grep "log$"`
