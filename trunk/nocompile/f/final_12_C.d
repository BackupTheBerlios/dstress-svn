// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <h3r3tic@mat.uni.torun.pl>
// @date@	2006-10-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=440
// @desc@	[Issue 440] New: dmd.170 fails to mark final methods as implementations of abstract ones

// __DSTRESS_ELINE__ 24

module dstress.nocompile.f.final_12_C;

interface I {
	void foo();
}

class Parent : I {
	final void foo() {
	}
}

class Child : Parent, I {
	void foo() {
	}
}
