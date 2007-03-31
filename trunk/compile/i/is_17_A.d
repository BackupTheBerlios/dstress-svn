// $HeadURL$
// $Date$
// $Author$

// @author@	Elmar Zander <elmar@zandere.de>
// @date@	2007-02-15
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=966
// @desc@	[Issue 966] is(H==function) fails if H is a function type

module dstress.compile.i.is_17_A;

void foo(){
}

template isFunc(H){
	void isFunc(H h){
		static assert(is(H == function));
	}
}

void bar(){
	isFunc(&foo);
}
