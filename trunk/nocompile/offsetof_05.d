// $HeadURL$
// $Date$
// $Author$

// functions are no member fields

// __DSTRESS_ELINE__ 21

module dstress.nocompile.offsetof_05;

struct MyStruct{
	int a;
	void test(){
	}
	int b;	
}

int main(){
	MyStruct s;

	assert(s.test.offsetof >= 0);

	return 0;
}
