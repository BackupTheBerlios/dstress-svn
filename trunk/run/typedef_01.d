
typedef int myint;

int foo(int x) { return -1;}
int foo(myint x) { return 0; }

int main(char[][] args){
	myint a = cast(myint)0;
	return foo(a);
}
