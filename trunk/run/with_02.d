
class MyClass{
	int test(){
		return 1;
	}
}

class Check{
	int test(){
		return 2;
	}

	void check(){
		MyClass object=new MyClass();
		assert(test()==2);
		with(object){
			assert(test()==1);
			assert(this.test()==2);
		}
	}
}

int test(){
	return 0;
}

int main(){
	Check o=new Check();
	o.check();
	return 0;
}
