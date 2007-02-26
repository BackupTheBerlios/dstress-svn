// $HeadURL$
// $Date$
// $Author$

// @author@	Daniel <Daniel919@web.de>
// @date@	2007-02-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=995
// @desc@	[Issue 995] compile-time function return element of Tuple / const array

module dstress.run.t.tuple_16_D;

template eval(A...) {
	alias A eval;
}

const char[] foo[2] = ["a","b"];

char[] test(int i){
	return foo[i];
}

int main(){
	if("a" != eval!(test(0))){
		assert(0);
	}
	return 0;
}
