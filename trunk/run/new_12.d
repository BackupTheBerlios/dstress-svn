// $HeadURL$
// $Date$
// $Author$

module dstress.run.new_12;

int counter;

struct MyStruct{
	int x;

	new(size_t size){
		counter++;
		return (new byte[size]).ptr;
	}
}

int main(){
	assert(counter==0);
	MyStruct* m=new MyStruct;
	m.x=1;
	assert(counter==1);
	return 0;
}

