// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/typeof_03.d,v 1.1 2004/08/20 23:42:55 th Exp $

int main(){
	int i = 1;
	typeof(++i) j;      // j is declared to be an int, i is not incremented
	assert( i == 1);
	return 0;
}