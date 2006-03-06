// $HeadURL$
// $Date$
// $Author$

module dstress.run.new_13;

int counter;

union MyUnion{
	int x;

	new(size_t size){
		counter++;
		return (new byte[size]).ptr;
	}
}

int main(){
	assert(counter==0);
	MyUnion* m = new MyUnion;
	m.x=1;
	assert(counter==1);
	return 0;
}

