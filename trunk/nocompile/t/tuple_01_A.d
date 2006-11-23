// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <korslund@gmail.com>
// @date@	2006-11-02
// @uri@	news:bug-475-3@http.d.puremagic.com/issues/
// @desc@	[Issue 475] New: DMD segfault on recursive variadic template

// __DSTRESS_ELINE__ 16

module dstress.nocompile.t.tuple_01_A;

template recMove(int i, X...){
	void recMove(){
		X[i] = X[i+1];
		static if(i+1 < X.length){
			recMove!(i+1, X);
		}
	}
}

void foo(){
	int a, b;
	recMove!(0, a, b);
}
