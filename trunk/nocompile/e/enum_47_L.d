// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant@gmail.com>
// @date@	2006-09-30
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=8550
// @desc@	[Issue 355] ICE from enum : nonexistent type

// __DSTRESS_ELINE__ 14

module dstress.nocompile.e.enum_47_L;

enum E : void{
	A,
	B
}

