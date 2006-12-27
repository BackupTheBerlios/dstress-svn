// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-12-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=752
// @desc@	[Issue 752] New: Assertion failure: 'e->type->ty != Ttuple' on line 4518 in file 'mtype.c'
 
module dstress.compile.t.tuple_09_G;

template Tuple( TList... ){
	mixin .Tuple!(TList[1 .. $]) tail;
}

mixin Tuple!(int);
