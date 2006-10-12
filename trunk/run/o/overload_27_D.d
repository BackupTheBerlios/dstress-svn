// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-10-09
// @uri@	news:bug-412-3@http.d.puremagic.com/issues/
// @desc@	[Issue 412] New: overloaded function resolution with null parameter

module dstress.o.overload_27_D;

typedef char[] T;

void foo(char[] a,  char[] b){
	assert(0);
}

void foo(char[] c, T d){
}

int main(){
	foo(null, cast(T)null);
	return 0;
}
