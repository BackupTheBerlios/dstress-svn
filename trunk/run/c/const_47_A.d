// $HeadURL$
// $Date$
// $Author$

// @author@	Vladimir <thecybershadow@gmail.com>
// @date@	2007-01-03
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=789
// @desc@	[Issue 789] const initialization in forwarding constructors doesn't work

module dstress.run.c.const_47_A;

class C{
	const int a;

	this(){
		a = 3;
	}

	this(int x){
		this();
	}
}

int main(){
	C c = new C(2);
	if(3 != c.a){
		assert(0);
	}
	return 0;
}
