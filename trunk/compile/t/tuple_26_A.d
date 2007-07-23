// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2007-02-15
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=963
// @desc@	[Issue 963] tuples & array literals: Error: non-constant expression ["abc","1"]

module dstress.compile.t.tuple_26_A;

template A(T ...){
	const A = T[0]; 
}

mixin A!(["abc", "1"]);
