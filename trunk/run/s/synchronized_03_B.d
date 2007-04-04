// $HeadURL$
// $Date$
// $Author$

// @author@	Frits van Bommel <fvbommel@wxs.nl>
// @date@	2007-04-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1091
// @desc@	[Issue 1091] Wrong size reserved for critical sections

module dstress.run.s.synchronized_03_B;

long x;

void foo(long a, long b){
	x = a * b;
}

int main(){
	synchronized{
		foo(2L, 3L);
	}

	if(6L != x){
		assert(0);
	}
	return 0;
}

