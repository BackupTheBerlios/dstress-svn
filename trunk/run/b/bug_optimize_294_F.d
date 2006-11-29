// $HeadURL$
// $Date$
// $Author$

// @author@	Boris Kolar <boris.kolar@globera.com>
// @date@	2006-11-29
// @uri@	news:<bug-618-3@http.d.puremagic.com/issues/
// @desc@	[Issue 618] New: The following program crashes dmd.exe 0.175

module dstress.run.b.bug_optimize_294_F;

struct Foo(T) {
	int dummy;
}

int main() {
	if ((Foo!(char)).init == (Foo!(char)).init){
		return 1;
	}
	return 0;
}
