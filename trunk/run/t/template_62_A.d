// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <h3r3tic@mat.uni.torun.pl>
// @date@	2007-03-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1068
// @desc@	[Issue 1068] stack corruption with mixins and function templates

// __DSTRESS_DFLAGS__ run/t/template_62_B.d

module /*dstress.*/run.t.template_62_A;

template Mix() {
	static void foobar() {
		auto context = new Context;
		context.func!(typeof(this))();
	}
}

class Bar {
	mixin Mix!();
}

void someFunc(char[] z) {
	if(1 != z.length){
		assert(0);
	}
	if("a" != z){
		assert(0);
	}
}

class Context {
	void func(T)() {
		someFunc(`a`);
	}
}
