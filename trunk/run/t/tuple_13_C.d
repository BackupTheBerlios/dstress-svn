// $HeadURL$
// $Date$
// $Author$

// @author@	<kamm@incasoftware.de>
// @date@	2006-12-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=756
// @desc@	[Issue 756] IFTI for tuples only works if tuple parameter is last

module dstress.run.t.tuple_13_C;

void foo(U...)(U u, int t) {
}

int main(){
	foo!(int, int)(1, 2, 3);
	return 0;
}
