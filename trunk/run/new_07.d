// $HeadURL$
// $Date$
// $Author$

module dstress.run.new_07;

extern(C)  void *malloc(size_t size);

int counter;

class Parent{
	new(size_t size){
		counter++;
		return malloc(size);
	}
}

class Child : Parent{
}

int main(){
	assert(counter==0);
	Child c = new Child();
	assert(counter==1);
	return 0;
}
