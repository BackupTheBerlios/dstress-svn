// $HeadURL$
// $Date$
// $Author$

// @author@	Vladimir <thecybershadow@gmail.com>
// @date@	2007-01-03
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=789
// @desc@	[Issue 789] const initialization in forwarding constructors doesn't work

module dstress.run.c.const_47_B;

class C{
	const int a;

	this(){
		a = 3;
	}
}

class D :  C {
	this(int x){
		super();
	}
}

int main(){
	D d = new D(2);
	if(3 != d.a){
		assert(0);
	}
	return 0;
}
