// $HeadURL$
// $Date$
// $Author$

module dstress.run.new_06;

extern(C)  void *malloc(size_t size);

int counter;

class MyClass{
	new(size_t size){
		counter++;
		return malloc(size);
	}
}

int main(){
	assert(counter==0);
	MyClass c = new MyClass();
	assert(counter==1);
	return 0;
}
