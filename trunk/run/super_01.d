
int status;

class Parent{
	void test(){
		status++;
	}
}

class Child : Parent {
	void test(){
		assert(status==0);
		super.test();
		assert(status==1);
	}
}

int main(){
	Child c = new Child();
	c.test();
	assert(status==1);
	return 0;
}

