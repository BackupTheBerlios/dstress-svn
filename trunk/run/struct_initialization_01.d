// $HeadURL$
// $Date$
// $Author$

module dstress.run.struct_initialization_01;

struct MyStruct{
	int a;
	int b = 7;
}

int main(){
	MyStruct s;
	assert(s.a==int.init);
	assert(s.b==7);
	return 0;
}
