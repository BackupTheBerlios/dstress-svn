// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-11-09
// @uri@	news:dksoa3$ool$1@digitaldaemon.com

// __DSTRESS_ELINE__ 22 

module dstress.nocompile.a.abstract_15;

class A {
	abstract void test() {
	}
}

class B : A {
}

void main(){
	B b = new B();
}
