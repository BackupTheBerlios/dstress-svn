// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.linde@gmail.com>
// @date@	2007-06-01
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1253
// @desc@	[Issue 1253] DMD 0.175 introduced bug: array initializers as expressions are not allowed?

module dstress.run.s.struct_initialization_11_C;

struct T {
	int a;
	int b;
}

const T[] arr = [{1, 2}, {3, 4}];

int main() {	
	T[] arr2 = arr.dup;

	if(arr2 != arr){
		assert(0);
	}

	return 0;
}
