
class MyClass{
	int test(){
		return 1;
	}
}

int test(){
	return 0;
}

int main(){
	MyClass object=new MyClass();
	assert(test()==0);
	with(object){
		assert(test()==1);
	}
	assert(test()==0);
	return 0;
}
