// $HeadURL$
// $Date$
// $Author$

module dstress.run.offsetof_01;

struct MyStruct{
	int a;
	int b;	
}

int main(){
	MyStruct s;

	assert(s.a.offsetof >= 0);
	assert(s.b.offsetof >= 0);
	assert(s.a.offsetof != s.b.offsetof);

	return 0;
}
