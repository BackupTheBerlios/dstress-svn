// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <h3r3tic@mat.uni.torun.pl>
// @date@	2006-09-27
// @uri@	news:bug-381-3@http.d.puremagic.com/issues/
// @desc@	[Issue 381] New: array literals are broken; Internal error: ..\ztc\cod1.c 2525

module dstress.run.o.opCat_24_A;

void foo(int[] x) {
	if(x.length != 2){
		assert(0);
	}
	if(x[0] != 1 || x[1] != 2){
		assert(0);
	}
}

int main(){
	foo([1] ~ 2);

	return 0;
}
