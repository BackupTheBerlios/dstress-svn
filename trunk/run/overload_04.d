// $HeadURL$
// $Date$
// $Author$

module dstress.run.overload_04;

int status;

class MyClass{
	static void check( byte b){
		status+=b;
	}
	static void check( short s ){
		status-=s;
	}
	static void check( int i ){
		status+= i*2;
	}	
}

int main(){
	MyClass A = new MyClass();
	MyClass B;
	
	byte b = 2;
	short s = 3;
	int i = 4;

	assert(status == 0);
	A.check(b);
	assert(status == 2);
	A.check(s);
	assert(status == -1);
	A.check(i);
	assert(status == 7 );

	status=0;
	assert(status == 0);
	B.check(b);
	assert(status == 2);
	B.check(s);
	assert(status == -1);
	B.check(i);
	assert(status == 7 );

	status=0;
	assert(status == 0);
	MyClass.check(b);
	assert(status == 2);
	MyClass.check(s);
	assert(status == -1);
	MyClass.check(i);
	assert(status == 7 );
	
	return 0;
}
