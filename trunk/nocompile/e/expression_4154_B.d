// $HeadURL$
// $Date$
// $Author$

// @author@	Kazuhiro Inaba <kinaba@is.s.u-tokyo.ac.jp>
// @date@	2006-12-03
// @uri@	news:bug-640-3@http.d.puremagic.com/issues/
// @desc@	[Issue 640] New: Strage error messages around structInstance.init

// __DSTRESS_ELINE__ 19

module dstress.nocompile.e.expression_4154_B;

struct S {
	int i;
}

void foo(){
	S s = {0};

	s = S.init;
}

