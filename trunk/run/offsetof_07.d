// $HeadURL$
// $Date$
// $Author$

module dstress.nocompile.offsetof_07;

struct MyStruct{
	int a;
	int b;	
}

int main(){
	MyStruct s;
	
	assert(MyStruct.a.offsetof >= 0);
	assert(MyStruct.b.offsetof >= 0);
	assert(MyStruct.a.offsetof != MyStruct.b.offsetof);

	return 0;
}
