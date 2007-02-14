// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2006-12-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=775
// @desc@	[Issue 775] array literals can't be used as template arguments

module dstress.compile.t.tuple_14_A;

template A(T ...){
	static assert(1 == T.length);
	static assert(2 == T[0].length);
	static assert("abc" == T[0][0]);
	static assert("123" == T[0][1]);
}

mixin A!(["abc", "123"]);
