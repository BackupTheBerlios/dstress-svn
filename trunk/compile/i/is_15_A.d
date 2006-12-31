// $HeadURL$
// $Date$
// $Author$

// @author@	Michael Arntzenius <daekharel@gmail.com>
// @date@	2006-11-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=611
// @desc@	[Issue 611] New: IsExpression fails when inside implemented interface

module dstress.compile.i.is_15_A;

interface I(T){
	static assert(is(T));
}

class C : I!(C){
}
