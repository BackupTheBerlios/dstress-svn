// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.invariant_13;

class Parent{
	int x;

	void test(){
	}
	
	invariant(){
		// even number
		if(x & 1){
			assert(0);
		}
	}
}

class Child : Parent{
}

class GrandChild : Child{
	this(int x){
		this.x=x;	
	}

	invariant(){
		if(x <= 2){
			assert(0);
		}
	}
}

int main(){
	try{
		GrandChild gc = new GrandChild(2);
	}catch{
		return 0;
	}
	assert(0);
}
