// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-11-27
// @uri@	news:bug-614-3@http.d.puremagic.com/issues/
// @desc@	[Issue 614] New: Real and imaginary properties of complex numbers not allowed as template arguments

module dstress.compile.c.cfloat_12_B;

const cfloat a = 1.0f + 2.0fi;

template getRealPart(cfloat x){
	const float getRealPart = x.re;
}

static assert(getRealPart!(a) == 1.0f);


template getImaginaryPart(cfloat x){
	const float getImanginaryPart = x.im;
}

static assert(getImaginaryPart!(a) == 2.0f);
