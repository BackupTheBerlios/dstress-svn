// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-03-22
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3296

// __DSTRESS_ELINE__ 14

module dstress.nocompile.double_quoted_string_20;

void test(){
	"a" ~ "b";
}
