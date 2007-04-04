// $HeadURL$
// $Date$
// $Author$

// @author@	david <davidl@126.com>
// @date@	2007-03-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1075
// @desc@	[Issue 1075] dmd reject valid code

module dstress.run.m.mixin_30_A;

int x;

class Outer{
	int y;

	class Inner{
		mixin("this(){ x += y; }");
	}
}

int main(){
	Outer o = new Outer();
	o.y = 3;
	x = 2;
	Outer.Inner i = o.new Inner();

	if(5 != x){
		assert(0);
	}
	return 0;
}
