// $HeadURL$
// $Date$
// $Author$

module dstress.run.struct_initialization_05;

struct MyStruct{
	int a;
	int b;
	int c = 7;
}

int main(){
	static MyStruct s={b:2,3};
	assert(s.a==int.init);
	assert(s.b==2);
	assert(s.c==3);
	return 0;
}
