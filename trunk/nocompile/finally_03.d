// $HeadURL$
// $Date$
// $Author$

//  A FinallyStatement may not exit with a goto, break, continue, or return; nor may it be entered with a goto.

// __DSTRESS_ELINE__ 12

module dstress.nocompile.finally_03;

void test(){
	goto labled;

	try{
	}finally{
labled:
		int dummy;
		dummy++;
	}
}
