// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/struct_02.d,v 1.1 2004/08/20 23:42:54 th Exp $

struct MyStruct{
	int x;
}

int main(){
	MyStruct m;
	m.x++;
	assert( m.x == 1);
	return 0;
}
