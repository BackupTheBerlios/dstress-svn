// $HeadURL$
// $Date$
// $Author$

// @author@ Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2006-12-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=664
// @desc@	[Issue 664] New: is(func T == return) ignores variadic arguments

module dstress.compile.i.is_16_C;

void foo(int, ...);
void bar(int ...);

static if(is(typeof(foo) X == function)){
	static if(is(typeof(bar) Y == function)){
		static assert((X.length != Y.length) || (!is(X[$-1] == Y[$-1])));
	}else{
		static assert(0);
	}
}else{
	static assert(0);
}
