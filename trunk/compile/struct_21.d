// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-01-12
// @uri@	news:cs2u76$18jn$1@digitaldaemon.com
// @url@	nttp://news.digitalmars.com/digitalmars.D.bugs/2674

module dstress.compile.struct_21;

struct MyStruct {
	MyStruct* s;
} 