// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/deprecated_08.d,v 1.1 2004/08/23 17:18:31 th Exp $

struct MyStruct{
	deprecated check(){
	}
}

int main(){
	MyStruct s;
	s.check();
	return 0;
}
