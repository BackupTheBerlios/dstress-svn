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
	
	invariant{
		assert(!checked);
		checked=true;
		// even number
		assert((x&1u)==0);
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
		assert(!checked);
		GrandChild gc = new GrandChild();
	}catch{
		assert(checked);
		return 0;
	}
	assert(0);
}
