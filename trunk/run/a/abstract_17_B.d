// $HeadURL$
// $Date$
// $Author$

// @author@	Brad Roberts <braddr@puremagic.com>
// @date@	2007-01-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=894
// @desc@	[Issue 894] base class with implemented abstract method problem

module dstress.run.a.abstract_17_B;

class A{
	abstract int foo(int i){
		return i * 2;
	}
}

class B : A{
	int foo(int i){
		return 1 + super.foo(i);
	}
}

int main(){
	A a = new B();
	if(a.foo(3) != 7){
		assert(0);
	}
	return 0;
}
