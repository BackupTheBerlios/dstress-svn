// $HeadURL$
// $Date$
// $Author$

// @author@	Kazuhiro Inaba <kinaba@is.s.u-tokyo.ac.jp>
// @date@	2006-12-03
// @uri@	news:bug-639-3@http.d.puremagic.com/issues/
// @desc@	[Issue 639] New: Escaped tuple parameter ICEs dmd

// __DSTRESS_ELINE__ 14

module dstress.nocompile.t.tuple_06_E;

T[] foo(T...)(T x) {
	return null;
} 

void bar(){
	auto x = foo(2,3,4);
	*x = *x;
} 
