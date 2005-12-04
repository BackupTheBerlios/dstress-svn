// $HeadURL$
// $Date$
// $Author$

// @author@	Fredrik Olsson <peylow@gmail.com>
// @date@	2005-11-30
// @uri@	news:dmjkbv$31is$1@digitaldaemon.com

module dstress.run.n.nested_function_07_A;

int outer(int a) {
	int inner(int b) {
		a += b;
		if (b > 0) {
			return inner(b - 1);
		} else {
			return a;
		}
	}
	return inner(a);
}

int main(char[][] args) {
	assert(outer(3) == 9);

	return 0;
}

