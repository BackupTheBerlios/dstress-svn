
struct MyStruct{
	static int status;

	static void staticCheck(){
		status++;
	}

	void liveCheck(){
		status--;
	}

	void liveCheck2(){
		staticCheck();
		staticCheck();
	}
}

int main(){
	MyStruct s;

	s.status++;
	assert( s.status == 1 );
	assert( MyStruct.status == 1 );

	s.staticCheck();
	assert( s.status == 2 );
	assert( MyStruct.status == 2 );

	s.liveCheck();
	assert( s.status == 1 );
	assert( MyStruct.status == 1 );

	s.liveCheck2();
	assert( s.status == 3 );
	assert( MyStruct.status == 3);

	MyStruct.status++;
	assert( s.status == 4 );
	assert( MyStruct.status == 4 );

	MyStruct.staticCheck();
	assert( s.status == 5 );
	assert( MyStruct.status == 5 );

	return 0;
}
