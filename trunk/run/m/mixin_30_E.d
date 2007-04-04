// $HeadURL$
// $Date$
// $Author$

// @author@	david <davidl@126.com>
// @date@	2007-03-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1075
// @desc@	[Issue 1075] dmd reject valid code

module dstress.run.m.mixin_30_E;

int x;

static char[] c(){
	return "this(){ x++; }";
}

class Outer{
	mixin(c());
}

int main(){
	x = 0;

	Outer o = new Outer();
	if(1 != x){
		assert(0);
	}
	return 0;
}
