// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-11-15
// @uri@	news:cn9vah$1shn$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2270

module dstress.compile.union_10;

class MyClass{
	union {
		int dummy=3;
		byte b;
	}
	int i = 1;
}
