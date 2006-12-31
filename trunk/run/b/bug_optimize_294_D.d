// $HeadURL$
// $Date$
// $Author$

// @author@	Boris Kolar <boris.kolar@globera.com>
// @date@	2006-11-29
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=618
// @desc@	[Issue 618] New: The following program crashes dmd.exe 0.175

module dstress.run.b.bug_optimize_294_D;

struct Foo(T) {
}

int main() {
	if ((Foo!(char)).init != (Foo!(byte)).init){
		return 1;
	}
	return 0;
}
