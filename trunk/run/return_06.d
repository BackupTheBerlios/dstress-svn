// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.return_06;

int test(int i){
	if(i==0){
		return 2;
	}
}

int main(){
	assert(test(0)==2);
	try{
		test(1);
	}catch{
		return 0;
	}
	assert(0);
}
