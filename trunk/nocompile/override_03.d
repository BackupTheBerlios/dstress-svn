// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/override_03.d,v 1.1 2004/08/20 23:42:44 th Exp $

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
