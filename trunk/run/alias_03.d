
template Foo2(T) { alias T t; }
alias Foo2!(int) t1;
alias Foo2!(int).t t2;
alias t1.t t3;
alias t2 t4;

int main(char[][] args){
	t1.t v1;	// v1 is type int
	t2 v2;	// v2 is type int
	t3 v3;	// v3 is type int
	return 0;
}
