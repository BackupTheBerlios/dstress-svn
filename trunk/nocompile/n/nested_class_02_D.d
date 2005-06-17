// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.n.nested_class_02_D;

void func(){
	int m;

	static class Inner{
		void test(int i){
		    m=i;
		}
	}
}
