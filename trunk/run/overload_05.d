// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/overload_05.d,v 1.1 2004/08/20 23:42:54 th Exp $

int status;

struct MyStruct{
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
	MyStruct S;

	byte b = 2;
	short s = 3;
	int i = 4;

	status = 0;
	assert(status == 0);
	S.check(b);
	assert(status == 2);
	S.check(s);
	assert(status == -1);
	S.check(i);
	assert(status == 7 );

	status = 0;
	assert(status == 0);
        MyStruct.check(b);
	assert(status == 2);
	MyStruct.check(s);
	assert(status == -1);
	MyStruct.check(i);
	assert(status == 7 );

	return 0;
}

