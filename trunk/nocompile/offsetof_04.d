// $HeadURL$
// $Date$
// $Author$

module dstress.nocompile.offsetof_04;

union MyUnion{
	int a;
	void test(){
	}
	int b;	
}

int main(){
	MyUnion u;

	assert(u.test.offsetof >= 0);

	return 0;
}
