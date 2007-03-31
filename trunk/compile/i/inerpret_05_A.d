// $HeadURL$
// $Date$
// $Author$

// @author@	 Frits van Bommel <fvbommel@wxs.nl>
// @date@	2007-03-04
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1021
// @desc@	[Issue 1021] CTFE and functions returning void

module dstress.compile.i.interpret_05_A;

void bar(out int x){
	x = 2;
}

int foo() {
	int y;
	bar(y);
	return y;
}

const int z = foo();

static assert(2 == z);
