// $HeadURL$
// $Date$
// $Author$

module dstress.run.with_08;

class MyClass{
	int test(){
		return 3;
	}
}

int test(){
	return 5;
}

int main(){
	with(new MyClass()){
		assert(test()==3);
	}
	return 0;
}
