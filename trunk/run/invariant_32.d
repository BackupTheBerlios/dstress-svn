// $HeadURL$
// $Date$
// $Author$

module dstress.run.invariant_32;

int status;

class MyClass{

	~this(){
		assert(status==1);
		status++;
	}

	invariant{
		assert(status==0);
		status++;
	}
}

int main(){
	MyClass c = new MyClass();
	delete c;
	assert(status==2);

	return 0;
}
