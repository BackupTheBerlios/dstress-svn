// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-04-22
// @uri@	news:d4apqu$2bo2$1@digitaldaemon.com

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

