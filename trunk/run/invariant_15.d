module dstress.run.invariant_15.d;

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

	int y;

	this(){
		y=5;
	}

	invariant{
		assert(y>4);
	}
}

int main(){
	GrandChild gc = new GrandChild();
	return 0;
}
