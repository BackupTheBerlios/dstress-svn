// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/long_01.d,v 1.1 2004/08/20 23:42:53 th Exp $

int main(){
	long a;
	assert(a.max == 0x7FFFFFFF);
	assert(a.min == 0xFFFFFFFF);
	assert(a.init == 0);
	assert(a.sizeof == 4);
	return 0; 
}
