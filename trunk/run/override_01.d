// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/override_01.d,v 1.1 2004/08/20 23:42:54 th Exp $

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
