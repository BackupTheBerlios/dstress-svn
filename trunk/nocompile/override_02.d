
class Parent{
}

class Child : Parent {
	override int check(){
		return 1;
	}
}

int main(){
	Child c = new Child();
	return c.check()-1;
}
