// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2007-02-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=986
// @desc@	[Issue 986] Internal error: e2ir.c 1098

module dstress.run.b.bug_e2ir_1098_B;

class Adapter {
	void func(){
	}
}

class AnonAdapter : Adapter {
}

class Foo {
	void bar(){
		Adapter a = cast( Adapter )( new AnonAdapter() );
	}
}

int main(){
	Foo f = new Foo();
	f.bar();
	return 0;
}
