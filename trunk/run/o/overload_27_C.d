// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-10-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=412
// @desc@	[Issue 412] New: overloaded function resolution with null parameter

module dstress.o.overload_27_C;

typedef char[] T;

void foo(char[] a,  char[] b){
	assert(0);
}

void foo(char[] c, T d){
}

int main(){
	foo(null, cast(T)"");
	return 0;
}
