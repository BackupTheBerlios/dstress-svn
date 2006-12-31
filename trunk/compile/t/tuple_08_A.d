// $HeadURL$
// $Date$
// $Author$

// @author@	Bill Baxter <wbaxter@gmail.com>
// @date@	2006-11-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=495
// @desc@	[Issue 495] New: ICE passing variadic arglist to another variadic template

module dstress.compile.t.tuple_08_A;

template g(T...){
	const g = T.length;
}

template f(T...){
	const f = g!(T);
}

static assert(f!(7, 5.6f) == 2);
