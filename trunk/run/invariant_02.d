// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.invariant_02;

int status;

class MyClass{
	int test;

	this(){
		test=2;
	}
	
	invariant(){
		if(2 != test){
			assert(0);
		}
		status++;
	}
}

int main(){
	assert(status==0);
	MyClass c = new MyClass();
	if(1 != status){
		assert(0);
	}
	return 0;
}
