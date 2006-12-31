// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <chris@dprogramming.com>
// @date@	2006-09-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=354
// @desc@	[Issue 354] New: Internal error: e2ir.c 772 with bad template use

module dstress.compile.b.bug_e2ir_772_I;

template A(){
	const int A = 3;
}

template B(int x){
	const int B = x;
}

static assert(B!(A) == 3);
