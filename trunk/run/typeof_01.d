// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/typeof_01.d,v 1.1 2004/08/20 23:42:54 th Exp $

int main(){
	int a = 1;
	typeof(a) b;
	b = a;
	return --b;
}