// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/static_12.d,v 1.1 2004/08/20 23:42:45 th Exp $

int check(){
	static int x;
	return x;
}

int main(){
	check();
	return 0;
}
