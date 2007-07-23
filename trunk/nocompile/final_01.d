// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2006-11-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=559

// __DSTRESS_ELINE__ 19

module dstress.nocompile.final_01;

class Parent{
	final void test(){
	}
}

class Child : Parent{
	void test(){
	}
}
