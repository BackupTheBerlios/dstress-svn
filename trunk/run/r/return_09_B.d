// $HeadURL$
// $Date$
// $Author$

// @author@	Witold Baryluk <baryluk@mpi.int.pl>
// @date@	2006-10-19
// @uri@	news:bug-443-3@http.d.puremagic.com/issues/
// @desc@	[Issue 443] New: assignment in return when using cdouble is broken

module dstress.run.r.return_09_B;

cfloat y;

cfloat f(cfloat x) {
    return (y = x);
}

int main() {
	cfloat z = f(1.0f + 2.0fi);

	if(y.re != 1.0f){
		assert(0);
	}
	if(y.im != 2.0f){
		assert(0);
	}
	if(z.re != 1.0f){
		assert(0);
	}
	if(z.im != 2.0f){
		assert(0);
	}

	return 0;
}
