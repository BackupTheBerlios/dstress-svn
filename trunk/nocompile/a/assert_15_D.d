// $HeadURL$
// $Date$
// $Author$

// @author@	<shro8822@uidaho.edu>
// @date@	2006-05-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=152

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.assert_15_D;

template T(){
	static assert(0);
	mixin T!();
}

mixin T!();
