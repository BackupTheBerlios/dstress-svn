
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
