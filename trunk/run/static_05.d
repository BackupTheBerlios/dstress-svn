// $HeadURL$
// $Date$
// $Author$

module dstress.run.static_05;

struct MyStruct{
	static int check(){
		return 2;
	}
}

int main(){
	assert( MyStruct.check() == 2 );

	MyStruct s;
	assert( s.check() == 2 );

	return 0;
}
