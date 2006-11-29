// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-11-27
// @uri@	news:bug-614-3@http.d.puremagic.com/issues/
// @desc@	[Issue 614] New: Real and imaginary properties of complex numbers not allowed as template arguments

module dstress.compile.c.creal_37_B;

const creal a = 1.0L + 2.0Li;

template getRealPart(creal x){
	const real getRealPart = x.re;
}

static assert(getRealPart!(a) == 1.0L);


template getImaginaryPart(creal x){
	const real getImanginaryPart = x.im;
}

static assert(getImaginaryPart!(a) == 2.0L);
