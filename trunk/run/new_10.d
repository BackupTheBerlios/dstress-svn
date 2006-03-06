// $HeadURL$
// $Date$
// $Auhthor$

module dstress.run.new_10;

int counter;

class MyClass{
	this(){
		assert(counter==0);
		counter++;
	}

	new(size_t size){
		return (new byte[size]).ptr;
	}			
}

int main(){
	MyClass c;
	assert(counter==0);
	c = new MyClass();
	assert(counter==1);
	return 0;
}

