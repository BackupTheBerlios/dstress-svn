// $HeadURL$
// $Date$
// $Author$

module dstress.run.offsetof_02;

class MyClass{
	int a;
	int b;	
}

int main(){
	MyClass c;

	assert(c.a.offsetof >= 0);
	assert(c.b.offsetof >= 0);
	assert(c.a.offsetof != c.b.offsetof);

	return 0;
}
