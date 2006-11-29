// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2006-11-18
// @uri@	news:bug-557-3@http.d.puremagic.com/issues/
// @desc@	[Issue 557] New: ICE returning a tuple from a function (Assertion failure: '0' on line 694 in file 'glue.c')

// __DSTRESS_ELINE__ 20

module dstress.nocompile.t.tuple_03_B;

template Tuple(T...){
	alias T X;
}

alias Tuple!(int,int) TType;

TType.X foo(){
	return TType.X;
}