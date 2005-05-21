// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.s.static_if_02_C;

void test(int x){
	static int i;
}

void test(){	
	static if(i){
	}
}