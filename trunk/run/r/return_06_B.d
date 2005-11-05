// $HeadURL$
// $Date$
// $Author$

// __DSTRESS__ -inline

module dstress.run.r.return_06_B;

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
