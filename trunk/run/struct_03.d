// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/struct_03.d,v 1.1 2004/08/20 23:42:54 th Exp $

int status;

struct MyStruct{
	int check(){
		status++;
		return 2;
	}	
}

int main(){
	MyStruct m;
	assert( m.check() == 2 );
	assert( status == 1 );
	return 0;
}
