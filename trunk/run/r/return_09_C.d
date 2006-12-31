// $HeadURL$
// $Date$
// $Author$

// @author@	Witold Baryluk <baryluk@mpi.int.pl>
// @date@	2006-10-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=443
// @desc@	[Issue 443] New: assignment in return when using cdouble is broken

module dstress.run.r.return_09_C;

creal y;

creal f(creal x) {
    return (y = x);
}

int main() {
	creal z = f(1.0 + 2.0i);

	if(y.re != 1.0){
		assert(0);
	}
	if(y.im != 2.0){
		assert(0);
	}
	if(z.re != 1.0){
		assert(0);
	}
	if(z.im != 2.0){
		assert(0);
	}

	return 0;
}
