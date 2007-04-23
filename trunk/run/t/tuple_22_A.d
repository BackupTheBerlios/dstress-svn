// $HeadURL$
// $Date$
// $Author$

// @author@	Manuel König <manuelk89@gmx.net>
// @date@	2007-04-13
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1138
// @desc@	[Issue 1138] ICE when tuple template gets indexed

module dstress.run.t.tuple_22_A;

template Tuple(T...){
	alias T Tuple;
}

void dummy(...){
}

int main(){
	dummy(Tuple!(1, 2, 3));
	return 0;
}
