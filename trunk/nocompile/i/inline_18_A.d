// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <kevinbealer@gmail.com>
// @date@	2007-01-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=908
// @desc@	[Issue 908] compiler dies trying to inline static method call to nonstatic method in template code.

// __DSTRESS_ELINE__ 22

module dstress.nocompile.i.inline_18_A;

class C {
	final uint next(){
		return 1;
	}
}

template Foo(T) {
	void bar(){
		int r = C.next;
	}
}

int main(){
	C prng = new C();
	alias Foo!(int).bar baz;

	int x = prng.next;
	baz();

	return 0;
}
