// $HeadURL$
// $Date$
// $Auhthor$

module dstress.run.new_10;

int counter;

extern(C) void* malloc(size_t size);

class MyClass{
	this(){
		assert(counter==0);
		counter++;
	}

	new(size_t size){
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

