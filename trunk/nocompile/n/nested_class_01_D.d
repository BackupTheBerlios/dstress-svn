// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.n.nested_class_01_D;

class Outer{
	int i;
	
	static class Inner{
		void test(){
			i=2;
		}
	}
}
