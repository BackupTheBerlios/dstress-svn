// $HeadURL$
// $Date$
// $Author$

module dstress.run.final_03;

class Parent{
	int test(){
		return 3;
	}
}

class Child : Parent{
	final int test(){
		return 5;
	}
}

int main(){
	Child c = new Child();
	assert(c.test()==5);
	return 0;
}
