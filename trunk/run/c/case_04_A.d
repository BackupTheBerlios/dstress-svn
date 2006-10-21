// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <h3r3tic@mat.uni.torun.pl>
// @date@	2006-10-12
// @uri@	news:bug-431-3@http.d.puremagic.com/issues/
// @desc@	[Issue 431] New: Invalid case selected when switching on a long

module dstress.run.c.case_04_A;

int main() {
	long foo = 4;
	switch (foo) {
		case 2: assert(false); break;
		case 3: break;
		case 4: break;
		case 5: break;
	}

	return 0;
}
