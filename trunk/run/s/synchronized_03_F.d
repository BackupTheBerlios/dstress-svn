// $HeadURL$
// $Date$
// $Author$

// @author@	Frits van Bommel <fvbommel@wxs.nl>
// @date@	2007-04-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1091
// @desc@	[Issue 1091] Wrong size reserved for critical sections

module dstress.run.s.synchronized_03_F;

long x;

void foo(long a){
	x += a * a;
}

void bar(Object a, Object b){
	synchronized(a){
		synchronized(b){
			foo(3L);
		}
	}
}
int main(){
	bar(new Object(), new Object());

	if(9L != x){
		assert(0);
	}
	return 0;
}
