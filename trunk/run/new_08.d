// $HeadURL$
// $Date$
// $Author$

module dstress.run.new_08;

int counter;
int counter2;

class Parent{
	new(size_t size){
		counter++;
		return (new byte[size]).ptr;
	}
}

class Child : Parent{
	new(size_t size){
		counter2++;
		return (new byte[size]).ptr;
	}
}

int main(){
	assert(counter==0);
	assert(counter2==0);
	Child c = new Child();
	assert(counter==0);
	assert(counter2==1);
	return 0;
}
