// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/override_06.d,v 1.1 2004/08/20 23:42:45 th Exp $

struct MyStruct{
	override int x(){
		return 0;
	}
}

int main(){
	MyStruct s;
	return s.x();
}
