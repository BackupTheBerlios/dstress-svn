
alias int myint;

void foo(int x) { }
void foo(myint m) { } // error, multiply defined function foo

int main(char[][] args){
	myint a;
	return a;
}
