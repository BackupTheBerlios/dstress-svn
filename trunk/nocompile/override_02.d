// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 13

module dstress.nocompile.override_02;

class Parent{
}

class Child : Parent {
	override int check(){
		return 1;
	}
}
