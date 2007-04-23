// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander B. <csantander619@gmail.com>
// @date@	2007-04-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1145
// @desc@	[Issue 1145] bad codegen with ulong+float

module dstress.compile.o.odd_bug_16_A;

ulong foo (){
	return cast(ulong) (1176576512UL + -2.0f);
}

static assert(foo()==1176576510);
