// $HeadURL$
// $Date$
// $Author$

module dstress.run.out_06;

int status;

class MyClass{
	int x=2;
}

void check(out MyClass c){
	c = new MyClass();
}

int main(){
	MyClass c = new MyClass();
	c.x=1;
	assert(c.x==1);
	check(c);
	assert(c.x==2);
	return 0;
}
