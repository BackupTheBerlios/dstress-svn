// $HeadURL$
// $Date$
// $Author$

// @author@	sugiyama <sugiyama563@msn.com>
// @date@	2006-09-06
// @uri@	news:bug-326-3@http.d.puremagic.com/issues/
// @desc@	[Issue 326] New: calculation bug

module dstress.run.o.odd_bug_08_B;

void check(int i){
	static int expected = 1;

	if(i != expected){
		assert(0);
	}

	expected++;
}

int main() {
	const int x = 2, y = 1;
	
	int res = 0;
	for(int i = 0; i < 10; i++) {
		res = res + x - y;
		check(res);
	}

	return 0;
}


