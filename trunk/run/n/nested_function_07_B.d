// $HeadURL$
// $Date$
// $Author$

// @author@	Fredrik Olsson <peylow@gmail.com>
// @date@	2005-11-30
// @uri@	news:dmjkbv$31is$1@digitaldaemon.com

module dstress.run.n.nested_function_07_B;

int outer() {
	int a = 3;
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
	assert(outer() == 9);

	return 0;
}

