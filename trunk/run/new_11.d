// $HeadURL$
// $Date$
// $Auhthor$

module dstress.run.new_11;

int counter;

extern(C) void* malloc(size_t size);

class MyClass{
	this(){
	}

	new(size_t size){
		assert(counter==0);
		counter++;
		return malloc(size);
	}			
}

int main(){
	MyClass c;
	assert(counter==0);
	c = new MyClass();
	assert(counter==1);
	return 0;
}

