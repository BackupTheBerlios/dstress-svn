// $HeadURL$
// $Date$
// $Author$

module dstress.nocompile.offset_02;

class MyClass{
	int a;
	int b;	
}

int main(){
	MyClass c;

	assert(c.a.offset >= 0);
	assert(c.b.offset >= 0);
	assert(c.a.offset != c.b.offset);

	return 0;
}
