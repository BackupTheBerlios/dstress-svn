// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3757

// __DSTRESS_ELINE__ 17

module dstress.nocompile.interface_17;

interface A:B{
	void f();
}

interface B:A{
	void f();
}

