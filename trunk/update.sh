#!/bin/bash

make distclean
dmd -w -O log.d || exit 2
export PATH=.:/home/tk/misc/bin:$PATH

for DMD in gdmd-0.19 `cd /opt/dmd/bin/; ls dmd-0.*  | grep -v 157 | grep -v 156 | sort -r`; do
	export DMD
	if echo $DMD | grep "\\(0\\.138\\)\\|\\(0\\.139\\)\\|\\(0\\.14\\)\\|\\(gdmd\\)\\|\\(0\\.15\\)\\|\\(0\\.16\\)" > /dev/null 2>/dev/null; then
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
		if `cat raw_results/linux-amd64_$DMDX.log.update | grep -v "asm_[l-z]" | sort > update-list.sh`; then
			rm -rf raw_results/linux-amd64_$DMDX.log.update
			date -R > raw_results/linux-amd64_$DMDX 
			date -R > raw_results/linux-amd64_$DMDX.log 
			chmod +x update-list.sh
			./update-list.sh 2>> raw_results/linux-amd64_$DMDX 1>> raw_results/linux-amd64_$DMDX.log
			gzip -9 < raw_results/linux-amd64_$DMDX.log >> raw_results/linux-amd64_$DMDX.log.gz
		fi
	else
		echo "$DMD ($DMDX) - full build"
		make complex > raw_results/linux-amd64_$DMDX.log 2>&1
		# make compile nocompile run norun >> raw_results/linux-amd64_$DMDX.log 2>&1
		cat log.txt >> raw_results/linux-amd64_$DMDX.log
		gzip -9 < raw_results/linux-amd64_$DMDX.log >> raw_results/linux-amd64_$DMDX.log.gz
	fi

	rm -f raw_results/linux-amd64_$DMDX.log
	make distclean
done

