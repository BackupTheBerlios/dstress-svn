// $HeadURL$
// $Date$
// $Author$

module dstress.run.new_07;

int counter;

class Parent{
	new(size_t size){
		counter++;
		return (new byte[size]).ptr;
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
