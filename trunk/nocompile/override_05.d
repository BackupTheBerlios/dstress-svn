// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/override_05.d,v 1.1 2004/08/20 23:42:44 th Exp $

struct MyStruct{
	override int x;
}

int main(){
	MyStruct s;
	return s.x;
}
