// $HeadURL$
// $Date$
// $Author$

// @author@	Frits van Bommel <fvbommel@wxs.nl>
// @date@	2006-12-28
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=765
// @desc@	[Issue 765] ArrayBoundsError when assigning slice of pointer

module dstress.run.n.new_28_D;

int main(){
	uint* x = (new uint[](5)).ptr;

	x[0 .. 0] = 1;

	if(*x != 0){
		assert(0);
	}

	return 0;
}
