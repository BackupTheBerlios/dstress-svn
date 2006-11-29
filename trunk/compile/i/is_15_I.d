// $HeadURL$
// $Date$
// $Author$

// @author@	Michael Arntzenius <daekharel@gmail.com>
// @date@	2006-11-27
// @uri@	news:bug-611-3@http.d.puremagic.com/issues/
// @desc@	[Issue 611] New: IsExpression fails when inside implemented interface

module dstress.compile.i.is_15_I;

template I(T){
	interface I{
		static assert(is(C : .I!(C)));
	}
}

class C : I!(C){
}

