// $HeadURL$
// $Date$
// $Author$

module dstress.run.overload_02;

int status;

struct MyStruct{
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
	MyStruct S;

	byte b = 2;
	short s = 3;
	int i = 4;

	assert(status == 0);
	S.check(b);
	assert(status == 2);
	S.check(s);
	assert(status == -1);
	S.check(i);
	assert(status == 7 );
	return 0;
}

