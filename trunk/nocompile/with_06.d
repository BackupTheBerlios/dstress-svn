class MyClass{
	void test(){
		char[] c="Inhalt";
		with(c){
			assert(0);
		}
	}
}

int main(){
	MyClass c = new MyClass();
	c.test();
	return 0;
}
