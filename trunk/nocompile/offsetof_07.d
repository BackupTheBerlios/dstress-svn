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
	
	assert(MyStruct.a.offsetof == s.a.offsetof);
	assert(MyStruct.b.offsetof == s.a.offsetof);

	return 0;
}
