// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/types_defining_01.d,v 1.1 2004/08/20 23:42:55 th Exp $

typedef int myint;

int foo(int x) { return -1;}
int foo(myint x) { return 0; }

int main(char[][] args){
	myint a = cast(myint)0;
	return foo(a);
}
