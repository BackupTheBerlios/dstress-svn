// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <chris@dprogramming.com>
// @date@	2006-09-17
// @uri@	news:bug-354-3@http.d.puremagic.com/issues/
// @desc@	[Issue 354] New: Internal error: e2ir.c 772 with bad template use

module dstress.compile.b.bug_e2ir_772_J;

template A(){
	const int A = 3;
}

template B(int x){
	const int B = x;
}

static assert(B!(A!()) == 3);
