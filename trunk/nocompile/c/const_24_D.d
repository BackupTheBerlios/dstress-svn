// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-09-19
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5032

// __DSTRESS_ELINE__ 18

module dstress.nocompile.c.const_24_D;

void test(char[] s){
}

void main(){
	const char[] s = "\uC617";
	test(bug(s));
}