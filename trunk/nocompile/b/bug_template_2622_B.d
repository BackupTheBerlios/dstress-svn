// $HeadURL$
// $Date$
// $Author$

// @author@	Kazuhiro Inaba <kinaba@is.s.u-tokyo.ac.jp>
// @date@	2006-12-05
// @uri@	news:bug-651-3@http.d.puremagic.com/issues/
// @desc@	[Issue 651] New: Assertion failure: 'global.errors' on line 2622 in file 'template.c'

// __DSTRESS_ELINE__ 20

module dstress.nocompile.b.bug_template_2622_B;

int i;

template foo(T){
}

template bar(T...){
	alias foo!(T) buz;
}

alias bar!(i) a;
