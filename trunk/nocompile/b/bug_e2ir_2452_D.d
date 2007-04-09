// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-09-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5015

// __DSTRESS_ELINE__ 17

module dstress.nocompile.b.bug_e2ir_2452_D;

class C{
	static C[1] c;
	
	this(){
		c ~= this;
	}
}
