// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-10-09
// @uri@	news:bug-411-3@http.d.puremagic.com/issues/
// @desc@	[Issue 411] New: array alloc with size from another array

module dstress.run.a.array_initialization_28_A;

int main(){
	int[] asso;
	asso ~= 3;

	byte[] x = new byte[](asso[0]);

	if(x.length != 3){
		assert(0);
	}

	return 0;
}

