// $HeadURL$
// $Date$
// $Author$

// @author@	Daniel <Daniel919@web.de>
// @date@	2007-02-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=995
// @desc@	[Issue 995] compile-time function return element of Tuple / const array

module dstress.run.t.tuple_16_C;

template eval(A...) {
	alias A eval;
}

alias eval!("a","b") foo;

int main(){
	static x = eval!(foo[0]);
	if("a" != x){
		assert(0);
	}
	return 0;
}
