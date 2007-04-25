// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <h3r3tic@mat.uni.torun.pl>
// @date@	2007-03-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1068
// @desc@	[Issue 1068] stack corruption with mixins and function templates

// __DSTRESS_DFLAGS__ run/t/template_62_A.d

module /*dstress.*/run.t.template_62_B;
import /*dstress.*/run.t.template_62_A;

class Foo {
	mixin Mix;
}

int main() {
	Bar.foobar();
	return 0;
}
