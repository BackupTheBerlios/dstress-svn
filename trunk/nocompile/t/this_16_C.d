// $HeadURL$
// $Date$
// $Author$

// @author@	<regan@netmail.co.nz>
// @date@	2007-09-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1533
// @desc@	[Issue 1533] Crash unknown symbol with std.signals

// __DSTRESS_ELINE__ 20

module dstress.nocompile.t.this_16_C;

template T(){
	int check;
}

class C{
	void foo(){
		bar();
		this.t.check++;
	}
	mixin T!() t;
}
