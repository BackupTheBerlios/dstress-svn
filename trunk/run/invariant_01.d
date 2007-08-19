// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.invariant_01;

class MyClass{
	int test;

	this(){}
	
	invariant(){
		if(test != 0){
			assert(0);
		}
	}
}

int main(){
	int success;
	try{
		MyClass c = new MyClass();
	}catch{
		success++;
	}
	if(success != 1){
		assert(0);
	}
	return 0;
}
