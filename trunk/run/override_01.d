// $HeadURL$
// $Date$
// $Author$

module dstress.run.override_01;

class Parent{
	int check(){
		return 1;
	}
}

class Child : Parent {
	override int check(){
		return 2;
	}
}

int main(){
	Child c = new Child();
	assert( c.check() == 2);
	return 0;
}
