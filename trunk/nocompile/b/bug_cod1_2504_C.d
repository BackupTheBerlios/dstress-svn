// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-09-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5016

// __DSTRESS_ELINE__ 17

module dstress.nocompile.b.bug_cod1_2504_C;

C[1] c;

class C{
	this(){
		c ~= c;
	}
}
