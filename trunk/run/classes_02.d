// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/classes_02.d,v 1.1 2004/08/20 23:42:52 th Exp $

class MyClass{
	int check;
}

int main(){
	MyClass c = new MyClass();
	c.check++;
	assert( c.check == 1 );
	return 0;
}
