// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/static_12.d,v 1.1 2004/08/20 23:42:54 th Exp $

int status;
class MyClass{
	static this(){
		status = 9;
	}
}

int main(){
	assert( status == 9 );
	return 0;
}
