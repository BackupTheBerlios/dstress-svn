// $HeadURL$
// $Date$
// $Author$

//  A FinallyStatement may not exit with a goto, break, continue, or return; nor may it be entered with a goto.

// __DSTRESS_ELINE__ 16

module dstress.nocompile.finally_05;

void test(){
	
	while(1){
		try{
		}finally{
			break;	
		}
	}
}
