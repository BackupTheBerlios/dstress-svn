// $HeadURL$
// $Date$
// $Author$

module dstress.run.class_02;

class MyClass{
	int check;
}

int main(){
	MyClass c = new MyClass();
	c.check++;
	assert( c.check == 1 );
	return 0;
}
