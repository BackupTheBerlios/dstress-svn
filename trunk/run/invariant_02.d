module dstress.run.invariant_02;
int status;

class MyClass{
	int test;

	this(){
		test=2;
	}
	
	invariant{
		assert(test > 1);
		status++;
	}
}

int main(){
	assert(status==0);
	MyClass c = new MyClass();
	assert(status==1);
	return 0;
}
