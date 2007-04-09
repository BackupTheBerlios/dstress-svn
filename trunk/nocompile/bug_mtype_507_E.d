// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-02-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2851

// __DSTRESS_ELINE__ 14

module dstress.nocompile.bug_mtype_507_E;

void test(){
	0 + Exception;
}
