// $HeadURL$
// $Date$
// $Author$

module dstress.run.overload_01;

int status;

class MyClass{
	void check( byte b){
		status+=b;
	}
	void check( short s ){
		status-=s;
	}
	void check( int i ){
		status+= i*2;
	}	
}

int main(){
	MyClass c = new MyClass();
	
	byte b = 2;
	short s = 3;
	int i = 4;

	assert(status == 0);
	c.check(b);
	assert(status == 2);
	c.check(s);
	assert(status == -1);
	c.check(i);
	assert(status == 7 );
	return 0;
}
