
int status;

interface MyInterface{
	void check();
}

class MyClass : MyInterface {
	void check(){
		status=2;
	}
}

int main(){
	MyInterface i = new MyClass();
	assert(status==0);
	i.check();
	assert(status==2);
	return 0;
}
