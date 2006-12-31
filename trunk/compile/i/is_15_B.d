// $HeadURL$
// $Date$
// $Author$

// @author@	Michael Arntzenius <daekharel@gmail.com>
// @date@	2006-11-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=611
// @desc@	[Issue 611] New: IsExpression fails when inside implemented interface

module dstress.compile.i.is_15_B;

interface I(T){
	static assert(is(T : C));
}

class C : I!(C){
}
