// $HeadURL$
// $Date$
// $Author$

// @author@	Kazuhiro Inaba <kinaba@is.s.u-tokyo.ac.jp>
// @date@	2006-12-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=650
// @desc@	[Issue 650] New: Assertion failure: '0' on line 774 in file 'expression.c'

module dstress.compile.t.template_50_A;

template test(char[] val) {
	static assert(val == "abc");
}

mixin test!("abc");
