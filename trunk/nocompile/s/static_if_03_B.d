// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 18

module dstress.nocompile.s.static_if_03_B;

void test(){
	static if(1){
		int a;
		static if(1){
			int b;
				static if(1)
					int i;
		}
	}
	int i;
}