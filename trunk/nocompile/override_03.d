// override can only be applied to class functions
module dstress.nocompile.override_03;

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
