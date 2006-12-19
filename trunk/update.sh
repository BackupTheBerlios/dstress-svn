#!/bin/bash

make distclean
dmd -w -O log.d || exit 2
export PATH=.:/home/tk/misc/bin:$PATH

for DMD in dmd-0.177 dmd-0.175 gdmd-0.19; do
	export DMD

	export DMDX=`echo $DMD | sed "s/gdmd/gdc/"`
	make dstress

	rm -f raw_results/linux-amd64_$DMDX.log

	if test ! -f raw_results/linux-amd64_$DMDX.log.bz2; then
		echo "$DMD ($DMDX) - complex build"
		make complex > raw_results/linux-amd64_$DMDX.log 2>&1
		# make compile nocompile run norun >> raw_results/linux-amd64_$DMDX.log 2>&1
		cat log.txt >> raw_results/linux-amd64_$DMDX.log
		bzip2 -9 < raw_results/linux-amd64_$DMDX.log > raw_results/linux-amd64_$DMDX.log.bz2
	fi

	echo "$DMD ($DMDX) - update build"
	bunzip2 < raw_results/linux-amd64_$DMDX.log.bz2 > raw_results/linux-amd64_$DMDX.log
	touch -a -m -r raw_results/linux-amd64_$DMDX.log.bz2 raw_results/linux-amd64_$DMDX.log
	./log genUpdateList . raw_results/linux-amd64_$DMDX.log
	if `cat raw_results/linux-amd64_$DMDX.log.update | grep -v "asm_p" | sort > update-list.sh`; then
		rm -rf raw_results/linux-amd64_$DMDX.log.update
		date -R > raw_results/linux-amd64_$DMDX 
		date -R > raw_results/linux-amd64_$DMDX.log 
		chmod +x update-list.sh
		./update-list.sh 2>> raw_results/linux-amd64_$DMDX 1>> raw_results/linux-amd64_$DMDX.log
		bzip2 -9 < raw_results/linux-amd64_$DMDX.log >> raw_results/linux-amd64_$DMDX.log.bz2
	fi

	make distclean
done

