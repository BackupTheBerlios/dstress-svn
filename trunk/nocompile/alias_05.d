// $HeadURL$
// $Date$
// $Author$

// __DSTRESS__ELINE__ 12

module dstress.nocompile.alias_05;

alias int myint;

void foo(int x) { }
void foo(myint m) { } // error, multiply defined function foo

int main(char[][] args){
	myint a;
	return a;
}
