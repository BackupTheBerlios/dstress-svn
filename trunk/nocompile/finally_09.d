// $HeadURL$
// $Date$
// $Author$

//  A FinallyStatement may not contain any Catches.

// __DSTRESS_ELINE__ 15

module dstress.nocompile.finally_09;

void test(){
	try{
	}finally{
		try{
		}catch{
		}
	}
}
