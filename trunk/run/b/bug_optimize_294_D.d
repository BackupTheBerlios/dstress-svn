// $HeadURL$
// $Date$
// $Author$

// @author@	Boris Kolar <boris.kolar@globera.com>
// @date@	2006-11-29
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=618
// @desc@	[Issue 618] New: The following program crashes dmd.exe 0.175

module dstress.run.b.bug_optimize_294_D;

struct Foo(T) {
	T t;
}

alias Foo!(char) A;
alias Foo!(byte) B;

int main() {

	if ((cast(void*)&A.init)[0 .. A.init.sizeof] == (cast(void*)&B.init)[0 .. B.init.sizeof]){
		return 1;
	}
	return 0;
}
