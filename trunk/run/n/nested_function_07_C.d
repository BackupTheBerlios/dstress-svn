// $HeadURL$
// $Date$
// $Author$

// @author@	Fredrik Olsson <peylow@gmail.com>
// @date@	2005-11-30
// @uri@	news:dmjkbv$31is$1@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1033

module dstress.run.n.nested_function_07_C;

int outer() {
	int a = 1;
	
	int inner(bool repeat) {
		if (repeat) {
			return inner(false);
		} else {
			return a;
		}
	}
	return inner(true);
}

int main(char[][] args) {
	assert(outer() == 1);

	return 0;
}

