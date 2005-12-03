// $HeadURL$
// $Date$
// $Author$

// @author@	John Demme <me@teqdruid.com>
// @date@	2005-06-07
// @uri@	news:1118118941.10321.21.camel@localhost.localdomain

// :23 is tested in abstract_08

// __DSTRESS_ELINE__ 16

module dstress.nocompile.a.abstract_14;

class A{
	abstract void test();
}

class B : A{
}

void main(){
	B b = new B();
}
