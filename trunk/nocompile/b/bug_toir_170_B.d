// $HeadURL$
// $Date$
// $Author$

// @author@	Daniel Keep <daniel.keep+d.puremagic.com@gmail.com>
// @date@	2007-01-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=852
// @desc@	[Issue 852] ICE in dmd with anon. delegate in static class ctor in unittest

module dstress.nocompile.b.bug_toir_170_B;

void test(){
	class Foo{
		static this(){
			auto i = new Foo();
		}
	}
}
