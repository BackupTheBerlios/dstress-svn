class MyClass{
	void test(){
		byte b;
		with(b){
			assert(0);
		}
	}
}

int main(){
	MyClass c = new MyClass();
	c.test();
	return 0;
}
