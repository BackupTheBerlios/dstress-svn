// $HeadURL$
// $Date$
// $Author$

// @author@	sugiyama <sugiyama563@msn.com>
// @date@	2006-09-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=326
// @desc@	[Issue 326] New: calculation bug

module dstress.run.o.odd_bug_08_H;

void check(int i){
	static int expected = 1;

	if(i != expected){
		assert(0);
	}

	expected++;
}

long x = 2, y = 1;

int main() {	
	int res = 0;
	for(int i = 0; i < 10; i++) {
		res = res + x - y;
		check(res);
	}

	return 0;
}


