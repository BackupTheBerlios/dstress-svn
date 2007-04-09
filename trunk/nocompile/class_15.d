// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3757

// __DSTRESS_ELINE__ 13

module dstress.nocompile.class_15;

class A:B{
	void f();
}

class B:A{
	void f();
}


