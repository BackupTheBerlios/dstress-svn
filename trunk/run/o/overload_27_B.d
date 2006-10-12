// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-10-09
// @uri@	news:bug-412-3@http.d.puremagic.com/issues/
// @desc@	[Issue 412] New: overloaded function resolution with null parameter

module dstress.o.overload_27_B;

typedef char[] T;

void foo(char[] a,  char[] b){
}

void foo(char[] c, T d){
	assert(0);
}

int main(){
	foo(null, "");
	return 0;
}
