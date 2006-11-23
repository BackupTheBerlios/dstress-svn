// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2006-11-06
// @uri@	news:bug-483-3@http.d.puremagic.com/issues/
// @desc@	[Issue 483] New: ICE-invalid with tuple. mangleof.

// __DSTRESS_ELINE__ 15

module dstress.nocompile.m.mangleof_18_A;

template T(A ...){
	const char[] T = A.mangleof;
}

mixin T!(1, 2);
