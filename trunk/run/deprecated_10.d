
int status;

class MyClass{
	deprecated void depr(){
	}
	void noDepr(){
		status=3;
	}
}


int main(){
	MyClass c = new MyClass();
	assert(status==0);
	c.noDepr();
	assert(status==3);
	return 0;
}
