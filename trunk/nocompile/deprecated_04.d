
class MyClass{
	this(int a){
		this("abc");
	}
	deprecated this(char[] c){
	}
}

int main(){
	MyClass c = new MyClass(1);
	return 0;
}
