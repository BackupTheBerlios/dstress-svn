module dstress.run.invariant_01;

class MyClass{
	int test;

	this(){}
	
	invariant{
		assert(test > 1);
	}
}

int main(){
	int success;
	try{
		MyClass c = new MyClass();
	}catch{
		success++;
	}
	assert(success==1);
	return 0;
}
