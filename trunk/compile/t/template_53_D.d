// $HeadURL$
// $Date$
// $Author$

// @author@	Bill Baxter <wbaxter@gmail.com>
// @date@	2006-12-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=688
// @desc@	[Issue 688] Implicit function template match doesn't work for classes

module dstress.compile.t.template_53_D;

struct Foo(T) {
	T data;
}

void bar(T)(Foo!(T) f){
}

void test(){
	Foo!(double) x;
	bar(x);
}
