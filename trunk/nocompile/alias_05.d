// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/alias_05.d,v 1.1 2004/08/20 23:42:43 th Exp $

alias int myint;

void foo(int x) { }
void foo(myint m) { } // error, multiply defined function foo

int main(char[][] args){
	myint a;
	return a;
}
