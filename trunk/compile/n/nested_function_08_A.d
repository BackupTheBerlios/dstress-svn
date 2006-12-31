// $HeadURL$
// $Date$
// $Author$

// @author@	Brad Roberts <braddr@puremagic.com>
// @date@	2006-06-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=175
// @desc@	[Issue 175] ice while building aaA.d with enable checking

module dstress.compile.n.nested_function_08_A;

struct Struct {
	int i;
}

Struct outer() {
	Struct a;
	void inner(){
	}

	return a;
}
