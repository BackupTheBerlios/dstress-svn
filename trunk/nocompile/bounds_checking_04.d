// $HeadURL$
// $Date$
// $Author$

// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1019
// @desc@	[Issue 1019] regression: Error: array index X is out of bounds [0 .. Y]

// __DSTRESS_ELINE__ 15

module dstress.nocompile.bounds_checking_04;

int main(){
	byte[5] a;
	const int i=-1;
	a[i]=3;

	return 0;
}
