module dstress.run.invariant_14.d;

class Parent{

	int x;

	this(){
		x=3;
	}
	
	invariant{
		assert(x>2);
	}
}

class Child : Parent{
}

class GrandChild : Child{

	this(){
		x=5;
	}

	invariant{
		assert(x>4);
	}
}

int main(){
	GrandChild gc = new GrandChild();
	return 0;
}
