// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-01-12
// @uri@	news:cs2u76$18jn$1@digitaldaemon.com
// @url@	nttp://news.digitalmars.com/digitalmars.D.bugs/2674

// __DSTRESS_ELINE__ 18

module dstress.nocompile.struct_20;

struct StructA {
	StructB b;
}

struct StructB {
	StructA a;
}
