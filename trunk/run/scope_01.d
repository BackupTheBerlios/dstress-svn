// @author@	J Anderson <REMOVEanderson@badmama.com.au>
// @date@	2004-05-01
// @uri@	news://c70jk9$off$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:53

module dstress.run.scope_01;

int check;

class MyClass{
	this(){
		status=3;
	}
	
	void call(){
		assert(check==0);
		assert(status==3);
		check+=1;
		s.test();
		check+=4;
	}

	struct MyStruct{
		void test(){
			assert(check==1);
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
