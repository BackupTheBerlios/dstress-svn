// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/static_05.d,v 1.1 2004/08/20 23:42:54 th Exp $

struct MyStruct{
	static int check(){
		return 2;
	}
}

int main(){
	assert( MyStruct.check() == 2 );

	MyStruct s;
	assert( s.check() == 2 );

	return 0;
}
