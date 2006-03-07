// $HeadURL$
// $Date$
// $Author$

// @author@	Tom S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2006-03-03
// @uri@	news:dua8sq$18af$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ compile/i/import_13_B.d  compile/i/import_13_A.d

module dstress.run.i.import_13_D;

import /*dstress.*/compile.i.import_13_A;

int main(){
	if((new Foo()).bar() !=  "Bar.bar"){
		assert(0);
	}
	return 0;
}
