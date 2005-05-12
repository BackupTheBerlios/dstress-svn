// $HeadURL$
// $Date$
// $Author$

module dstress.run.new_13;

extern(C) void* malloc(size_t size);

int counter;

union MyUnion{
	int x;

	new(size_t size){
		counter++;
		return malloc(size);
	}
}

int main(){
	assert(counter==0);
	MyUnion* m = new MyUnion;
	m.x=1;
	assert(counter==1);
	return 0;
}

