// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2006-11-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=557
// @desc@	[Issue 557] New: ICE returning a tuple from a function (Assertion failure: '0' on line 694 in file 'glue.c')

// __DSTRESS_ELINE__ 18

module dstress.nocompile.t.tuple_03_C;

template Tuple(T...){
	alias T Tuple;
}

Tuple!(int,int) foo(){
	return Tuple!(int,int);
}
