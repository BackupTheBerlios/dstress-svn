// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <h3r3tic@mat.uni.torun.pl>
// @date@	2006-09-27
// @uri@	news:bug-378-3@http.d.puremagic.com/issues/
// @desc@	[Issue 378] New: Assertion failure: '0' on line 216 in file 'init.c'

module dstress.run.t.typedef_20_A;

struct Ranged(T){
	T value;
}

typedef Ranged!(int) Degree = {2};


int main(){
	Degree d;

	if(d.value != 2){
		assert(0);
	}

	return 0;
}
