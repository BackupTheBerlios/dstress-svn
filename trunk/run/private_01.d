class MyClass{
	private int test(int i){
		return i+1;
	}
}

int main(){
	MyClass c = new MyClass();
	assert(c.test(2)==3);
	return 0;
}
