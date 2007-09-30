// $HeadURL$
// $Date$
// $Author$

// @author@	<regan@netmail.co.nz>
// @date@	2007-09-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1533
// @desc@	[Issue 1533] Crash unknown symbol with std.signals

// __DSTRESS_ELINE__ 21

module dstress.nocompile.t.this_16_D;

template T(){
	this(){
	}
}

class C{
	void foo(){
		bar();
	}
	mixin T!() t;
}
