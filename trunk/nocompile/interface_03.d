// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/interface_03.d,v 1.1 2004/08/23 17:18:31 th Exp $

interface MyInterface{
	void one();
	void two();
}

class MyClass : MyInterface{
	void one(){
	}
}

int main(){
	MyClass c = new MyClass();
	return 0;
}
