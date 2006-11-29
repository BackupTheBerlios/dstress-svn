// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-11-27
// @uri@	news:bug-614-3@http.d.puremagic.com/issues/
// @desc@	[Issue 614] New: Real and imaginary properties of complex numbers not allowed as template arguments

module dstress.compile.c.cdouble_12_B;

const cdouble a = 1.0 + 2.0i;

template getRealPart(cdouble x){
	const double getRealPart = x.re;
}

static assert(getRealPart!(a) == 1.0);


template getImaginaryPart(cdouble x){
	const double getImanginaryPart = x.im;
}

static assert(getImaginaryPart!(a) == 2.0);
