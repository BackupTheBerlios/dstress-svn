// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__  13

module dstress.nocompile.super_05;

int x;
struct MyStruct{
	int x;
	void test(){
		super.x=1;
	}
}

int main(){
	MyStruct c;
	c.test();
	return 0;
}
