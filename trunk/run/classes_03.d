// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/classes_03.d,v 1.1 2004/08/20 23:42:52 th Exp $

class MyClass{
	int check( int x){
		x = (x+1) * 2;
		return x;
	}
}

int main(){
	MyClass c = new MyClass();
	assert ( c.check(1) == 4 );
	return 0;	
}
