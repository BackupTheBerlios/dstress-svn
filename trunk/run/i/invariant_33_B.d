// $HeadURL$
// $Date$
// $Author$

// @author@	<torhu@yahoo.com>
// @date@	2007-04-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1135
// @desc@	[Issue 1135] invariant keyword parsing is messed up

module dstress.run.i.invariant_33_B;

struct X{
	synchronized invariant(){
		int x;
	}

	void foo(){
	}
}

int main(){
	X x;

	x.foo();
	return 0;
}
