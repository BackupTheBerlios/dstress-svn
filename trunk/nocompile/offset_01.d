// $HeadURL$
// $Date$
// Author$

// .offset is depricated, use .offsetof

module dstress.nocompile.offset_01;

struct MyStruct{
	int a;
	int b;	
}

int main(){
	MyStruct s;

	assert(s.a.offset >= 0);
	assert(s.b.offset >= 0);
	assert(s.a.offset != s.b.offset);

	return 0;
}
