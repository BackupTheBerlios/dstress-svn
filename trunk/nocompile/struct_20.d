// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-01-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2674
// @uri@	nttp://news.digitalmars.com/digitalmars.D.bugs/2674

// __DSTRESS_ELINE__ 18

module dstress.nocompile.struct_20;

struct StructA {
	StructB b;
}

struct StructB {
	StructA a;
}
