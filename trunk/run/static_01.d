// $HeadURL$
// $Date$
// $Author$

module dstress.run.static_01;

class MyClass{
	static int check;
}

int main(){
	MyClass c;
	c.check++;
	assert( c.check == 1 );
	return 0;
}
