// $HeadURL$
// $Date$
// $Author$

// @author@	Frits van Bommel <fvbommel@wxs.nl>
// @date@	2007-06-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1262
// @desc@	[Issue 1262] Local variable of struct type initialized by literal resets when compared to .init

module dstress.run.i.init_06_D;

struct S {
	int x;
}

S s = S(10);

int main() {
	if (s == s.init){
		assert(0);
	}else if(10 != s.x){
		assert(0);
	}

	return 0;
}
