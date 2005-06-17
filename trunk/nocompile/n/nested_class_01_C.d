// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 15

module dstress.nocompile.n.nested_class_01_C;

class Outer{
	class Inner{
	}
}

void main(){
	Outer.Inner i = new Outer.Inner();
}
