
interface MyInterface{
	void one();
	void two();
}

class MyClass : MyInterface{
	void one(){
	}
}

int main(){
	MyClass c = new MyClass();
	return 0;
}
