// $HeadURL$
// $Date$
// $Author$

module dstress.run.in_03;

class MyClass{
	int x;
}

void check(in MyClass c){
	c=new MyClass();
	c.x=2;
}

int main(){
	MyClass c = new MyClass();
	c.x=1;
	assert(c.x==1);
	check(c);
	assert(c.x==1);
	return 0;
}
