// $HeadURL$
// $Date$
// $Author$

// @author@	<regan@netmail.co.nz>
// @date@	2007-09-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1533
// @desc@	[Issue 1533] Crash unknown symbol with std.signals

module dstress.run.t.this_16_A;

template T(){
	this(int i){
		check = i;
	}

	int check;
}

class C{
	void foo(){
		bar();
		this.t.check++;
	}
	mixin T!() t;

	void bar(){
		this.t.check++;
	}
}

int main(){
	C c = new C(100);
	c.foo();

	if(102 != c.t.check){
		assert(0);
	}

	return 0;
}
