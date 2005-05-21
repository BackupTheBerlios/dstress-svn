// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12

module dstress.nocompile.s.static_if_03_A;

void test(){
	int i;
	static if(1){
		int i;
	}
}