// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/static_01.d,v 1.1 2004/08/20 23:42:54 th Exp $

class MyClass{
	static int check;
}

int main(){
	MyClass c;
	c.check++;
	assert( c.check == 1 );
	return 0;
}
