// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.override_04;

class Parent{
	int test;
}

class Child : Parent{
	override int test(){
		return 1;
	}
}

int main(){
	Child c = new Child();
	return c.test()-1;
}
