// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/overload_04.d,v 1.1 2004/08/20 23:42:53 th Exp $

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
