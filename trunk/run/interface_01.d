// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/interface_01.d,v 1.1 2004/08/22 07:47:07 th Exp $

int status;

interface MyInterface{
	void check();
}

class MyClass : MyInterface {
	void check(){
		status=2;
	}
}

int main(){
	MyInterface i = new MyClass();
	assert(status==0);
	i.check();
	assert(status==2);
	return 0;
}
