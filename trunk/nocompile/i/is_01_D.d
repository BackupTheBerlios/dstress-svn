// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com> 
// @date@	2005-06-22
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4386
// @desc@	parse.c:4119: Expression* Parser::parseUnaryExp(): Assertion `e' failed.

// __DSTRESS_ELINE__ 15

module dstress.nocompile.i.is_01_D;

void main() {
     is /=
}

