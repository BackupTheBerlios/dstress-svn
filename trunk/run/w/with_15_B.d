// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Miller <chris@dprogramming.com>
// @date@	2006-09-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=325
// @desc@	[Issue 325] New: Overriding members and overloading with alias causes bogus error messages in with().

module dstress.run.w.with_15_B;

class Base{
	int data;

	void foo(int i){
		data = i;
	}
	int foo(){
		return data;
	}
}

class Derived : Base{
	override void foo(int i){
		super.data = 2 * i;
	}
	
	alias Base.foo foo;
}

int main(){
	Derived d = new Derived();
	with(d){
		foo = 1;
	}

	if(d.foo() != 2){
		assert(0);
	}

	return 0;
}

