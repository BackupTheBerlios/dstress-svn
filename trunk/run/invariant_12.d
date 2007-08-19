// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.invariant_12.d;

bool checked;

class Parent{
	int x;

	void test(){
	}
	
	invariant(){
		if(checked){
			assert(0);
		}
		checked=true;
		// even number
		if(x & 1u){
			assert(0);
		}
	}
}

class Child : Parent{
}

class GrandChild : Child{
	this(){
		x=5;	
	}
}

int main(){
	try{
		if(checked){
			assert(0);
		}
		GrandChild gc = new GrandChild();
	}catch{
		if(!checked){
			assert(0);
		}
		return 0;
	}
	assert(0);
}
