// $HeadURL$
// $Date$
// $Author$

module dstress.run.new_12;

extern(C) void* malloc(size_t size);

int counter;

struct MyStruct{
	int x;

	new(size_t size){
		counter++;
		return malloc(size);
	}
}

int main(){
	assert(counter==0);
	MyStruct m;
	m.x=1;
	assert(counter==1);
	return 0;
}

