
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
