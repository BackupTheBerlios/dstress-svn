// $HeadURL$
// $Date$
// $Author$

//  A FinallyStatement may not exit with a goto, break, continue, or return; nor may it be entered with a goto.

// __DSTRESS_ELINE__ 14

module dstress.nocompile.finally_07;

void test(){
	try{
	}finally{
		goto label;	
	}
label:
	return;
}
