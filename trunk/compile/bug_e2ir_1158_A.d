// $HeadURL$
// $Date$
// $Author$

// @uri@	news:cok6h5$1p9u$1@digitaldaemon.com
// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-12-01
// @uri@	nntp://news.digitalmars.com/digitalmars.D.bugs/2395

module dstress.compile.bug_e2ir_1158_A;

version(Windows){

	import std.c.windows.windows;

	void main(char[][] args) {
		HDC dc = (args.length > 1 ? &GetWindowDC : &GetDC) (null);
	}

}
