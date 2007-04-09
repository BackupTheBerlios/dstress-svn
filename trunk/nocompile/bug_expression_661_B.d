// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-02-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2846

// __DSTRESS_ELINE__ 14

module dstress.nocompile.bug_expression_661_B;

void test(){
	int i = cast(int)(.0>>0);
} 
