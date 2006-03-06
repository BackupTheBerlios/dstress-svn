// $HeadURL$
// $Date$
// $Auhthor$

module dstress.run.new_11;

int counter;

class MyClass{
	this(){
	}

	new(size_t size){
		assert(counter==0);
		counter++;
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

