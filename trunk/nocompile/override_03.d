
class Parent{
	int check;
}

class Child : Parent{
	override int check;
}

int main(){
	Child c = new Child();
	return c.check;
}
