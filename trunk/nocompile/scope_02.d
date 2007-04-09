// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-04-22
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3773

// __DSTRESS_ELINE__ 19

module dstress.nocompile.scope_02;

class C{
	void f(){
	}

	struct S{
		void bug(){
			f();
		}
	}
}

