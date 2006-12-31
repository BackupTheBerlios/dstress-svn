// $HeadURL$
// $Date$
// $Author$

// @author@	<braddr@puremagic.com>
// @date@	2006-03-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=38

module dstress.run.t.template_34_D;

int main() {
	char[][] result, test;
	
	foreach (x; test) {
		if (exists!(char[][], char[])(result, x) == true) {
			assert(0);
		}
	}

	return 0;
}

template exists(T, U) {
	bool exists(T[][] src, U[] test) {
		foreach (x; src) {
			if (x == test) {
				return true;
			}
		}
		
		return false;
	}
}

