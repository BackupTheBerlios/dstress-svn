module dstress.run.invariant_12.d;

class Parent{
	int x;

	void test(){
	}
	
	invariant{
		// even number
		assert(x&1==0);
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
		GrandChild gc = new GrandChild();
	}catch{
		return 0;
	}
	assert(0);
}
