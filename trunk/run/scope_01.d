
// @author@	J Anderson <REMOVEanderson@badmama.com.au>
// @date@	2004-01-05
// @uri@	news://c70jk9$off$1@digitaldaemon.com

int check;

class MyClass{
	this(){
		status=3;
	}
	
	void call(){
		assert(status==3);
		s.test();
		check+=5;
	}

	struct MyStruct{
		void test(){
			assert(status==3);
			status=4;
			check+=3;
		}
	}

	MyStruct s;
	int status;
}

int main(){
	MyClass c = new MyClass();
	assert(c.status==3);
	assert(check==0);
	c.call();
	assert(c.status==4);
	assert(check==8);
	return 0;
}
