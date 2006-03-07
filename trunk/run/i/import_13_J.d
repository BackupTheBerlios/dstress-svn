// $HeadURL$
// $Date$
// $Author$

// @author@	Tom S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2006-03-03
// @uri@	news:dua8sq$18af$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ compile/i/import_13_H.d  compile/i/import_13_G.d

module dstress.run.i.import_13_J;

import /*dstress.*/compile.i.import_13_G;

int main(){
	if((new Foo()).foo() !=  "Foo.foo"){
		assert(0);
	}
	return 0;
}
