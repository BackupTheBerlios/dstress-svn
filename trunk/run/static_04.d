// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/static_04.d,v 1.1 2004/08/20 23:42:54 th Exp $

struct MyStruct{
	static int check;
}

int main(){
	MyStruct s;
	
	s.check++;
	assert( s.check == 1 );
	assert( MyStruct.check == 1 );

	MyStruct.check++;
	assert( s.check == 2 );
	assert( MyStruct.check == 2 );

	return 0;
}
