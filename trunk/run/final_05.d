// $HeadURL$
// $Date$
// $Author$

module dstress.run.final_05;

class Parent{
	final int test(){
		return 3;
	}
}

class Child : Parent{
	private int test(){
		return 5;
	}
}

int main(){
	Child c = new Child();
	assert(c.test()==5);
	return 0;
}
