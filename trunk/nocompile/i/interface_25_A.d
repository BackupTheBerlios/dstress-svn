// $HeadURL$
// $Date$
// $Author$

// @author@	david <davidl@126.com>
// @date@	2006-10-09
// @uri@	news:bug-414-3@http.d.puremagic.com/issues/
// @desc@	[Issue 414] New: interfaces shouldn't be able to inheit from classes

// __DSTRESS_ELINE__ 19

module dstress.nocompile.i.interface_25_A;

class A{
	void foo(){
	}
}

interface I : A{
}
