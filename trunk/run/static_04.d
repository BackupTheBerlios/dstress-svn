
struct MyStruct{
	static int check;
}

int main(){
	MyStruct s;
	
	s.check++;
	assert( s.check == 1 );
	assert( MyStruct.check == 1 );

	MyStruct.check++;
	assert( s.check == 2 );
	assert( MyStruct.check == 2 );

	return 0;
}
