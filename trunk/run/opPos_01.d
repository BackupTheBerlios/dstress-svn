
class MyClass{
	int status;
	void opPos(){
		status+=3;
	}
}

int main(){
	MyClass c = new MyClass();
	assert(c.status==0);
	+c;
	assert(c.status==3);
	+c;
	assert(c.status==6);
	return 0;
}
