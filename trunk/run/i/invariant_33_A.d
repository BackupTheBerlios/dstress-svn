// $HeadURL$
// $Date$
// $Author$

// @author@	<torhu@yahoo.com>
// @date@	2007-04-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1135
// @desc@	[Issue 1135] invariant keyword parsing is messed up

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.i.invariant_33_A;

int state;

class X{
	synchronized invariant{
		int x;
		state += ++x;
	}

	void foo(){
	}
}

int main(){
	X x = new X();

	x.foo();
	if(2 != state){
		assert(0);
	}

	x.foo();
	if(4 != state){
		assert(0);
	}
	
	x.foo();
	if(6 != state){
		assert(0);
	}
	return 0;
}
