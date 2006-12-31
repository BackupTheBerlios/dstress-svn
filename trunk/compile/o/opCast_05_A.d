// $HeadURL$
// $Date$
// $Author$

// @author@	Brad Roberts <braddr@puremagic.com>
// @date@	2006-03-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=43
// @desc@	[Issue 43] enable-checking error found in std/socket.d

module dstress.compile.c.opCast_05_A;

struct Struct {
	int i;
}

enum Enum{
	A
}

void populate(Struct* s){
	Enum type = cast(Enum)proto.i;
}
