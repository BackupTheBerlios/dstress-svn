// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 20

module dstress.nocompile.with_07;

class MyClass{
	int test(){
		return 3;
	}
}

int test(){
	return 5;
}

int main(){
	with(new MyClass()):
		assert(test()==3);
	
	return 0;
}
