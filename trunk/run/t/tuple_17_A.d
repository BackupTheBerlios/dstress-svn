// $HeadURL$
// $Date$
// $Author$

// @author@	Daniel <Daniel919@web.de>
// @date@	2007-02-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=975
// @desc@	[Issue 975] compile-time const array makes dmd crash

module dstress.run.t.tuple_17_A;

template eval(A...) {
	alias A eval;
}

const int foo[5] = [0,1,2,3,4];

int main(){
	if(2 != eval!(foo[3])){
		assert(0);
	}
	return 0;
}
