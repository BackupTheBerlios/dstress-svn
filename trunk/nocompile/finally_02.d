// $HeadURL$
// $Date$
// $Author$

//  A FinallyStatement may not exit with a goto, break, continue, or return; nor may it be entered with a goto.

// __DSTRESS_ELINE__ 13

module dstress.nocompile.finally_02;

void test(){
	try{
		goto label;
	}finally{
label:
		int dummy;
		dummy++;
	}
}
