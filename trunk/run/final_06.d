// $HeadURL$
// $Date$
// $Author$

module dstress.run.final_06;

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

class GrandChild : Child{
}

int main(){
	GrandChild c = new GrandChild();
	assert(c.test()==5);
	return 0;
}
