// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-02-08
// @uri@	news:cua2nm$11pg$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2888

// __DSTRESS_ELINE__ 16

module dstress.nocompile.this_05;

struct MyStruct{
	int i;
	int* p = &i; 
}
 