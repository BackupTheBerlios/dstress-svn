// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 17

module dstress.nocompile.offsetof_08;

class MyClass{
	int a;
	int b;	
}

int main(){
	MyClass c = new MyClass();
	
	assert(MyClass.a.offsetof == c.a.offsetof);
	assert(MyClass.b.offsetof == c.a.offsetof);

	return 0;
}
