// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Miller <chris@dprogramming.com>
// @date@	2006-02-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6182

// __DSTRESS_ELINE__ 15

module dstress.nocompile.s.struct_23_D;

struct Foo {
	int i;
	Foo f;
}

