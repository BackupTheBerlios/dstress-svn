// $HeadURL$
// $Date$
// $Author$

module dstress.run.new_06;

int counter;

class MyClass{
	new(size_t size){
		counter++;
		return (new byte[size]).ptr;
	}
}

int main(){
	assert(counter==0);
	MyClass c = new MyClass();
	assert(counter==1);
	return 0;
}
