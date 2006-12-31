// $HeadURL$
// $Date$
// $Author$

// @author@	Bradley Smith <digitalmars-com@baysmith.com>
// @date@	2006-10-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=402
// @desc@	[Issue 402] New: compiler crash with mixin and forward reference

// __DSTRESS_ELINE__ 21

module dstress.nocompile.a.alias_39_A;

template Foo(alias b){
	int a() {
		return b;
	}
}

void test(){
	mixin Foo!(y);
}
