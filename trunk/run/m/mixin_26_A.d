// $HeadURL$
// $Date$
// $Author$

// @author@	Boris Kolar <boris.kolar@globera.com>
// @date@	2007-01-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=873
// @desc@	[Issue 873] Scope dependant compilation error

module dstress.run.m.mixin_26_A;

template Factory() {
	Foo bar() {
		return Foo.init;
	}
}

struct Foo {
	mixin Factory!();
	int i = 0x12_34_FF_AA;
}

int main() {
	Foo f;
	if(f.bar() != Foo.init){
		assert(0);
	}

	if(f.bar().i == 0x12_34_FF_AA){
		return 0;
	}
}
