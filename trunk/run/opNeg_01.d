
class MyClass{
	int status;

	void opNeg(){
		status+=9;
	}
}

int main(){
	MyClass c = new MyClass();
	assert(c.status==0);
	-c;
	assert(c.status==9);
	-c;
	assert(c.status==18);
	return 0;
}
