// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2007-02-24
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1005
// @desc@	[Issue 1005] dmd: tocsym.c:343: virtual Symbol* FuncDeclaration::toSymbol(): Assertion `0' failed.

module dstress.run.b.bug_tocsym_343_B;

int status;

class Base {
	void bar(){
		status--;
	}
}

class Foo : Base {
	void bar(){
		status++;
	}
}

int main(){
	Foo f = new Foo();
	auto dg = &f.bar;

	if(0 == status){
		assert(0);
	}
	dg();
	if(1 == status){
		assert(0);
	}
	return 0;
}	
