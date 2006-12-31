// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-10-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=412
// @desc@	[Issue 412] New: overloaded function resolution with null parameter

module dstress.o.overload_27_A;

typedef char[] T;

void foo(char[] a,  char[] b){
}

void foo(char[] c, T d){
	assert(0);
}

int main(){
	foo("", "");
	return 0;
}
