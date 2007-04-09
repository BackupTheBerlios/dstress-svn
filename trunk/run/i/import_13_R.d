// $HeadURL$
// $Date$
// $Author$

// @author@	Tom S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2006-03-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6450

// __DSTRESS_DFLAGS__ compile/i/import_13_M.d compile/i/import_13_N.d

module dstress.run.i.import_13_R;

import /*dstress.*/compile.i.import_13_M;

int main(){
	if((new Foo()).foo() != "Foo.foo"){
		assert(0);
	}
	return 0;
}
