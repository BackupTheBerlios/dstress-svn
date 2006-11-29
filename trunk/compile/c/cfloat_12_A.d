// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-11-27
// @uri@	news:bug-614-3@http.d.puremagic.com/issues/
// @desc@	[Issue 614] New: Real and imaginary properties of complex numbers not allowed as template arguments

module dstress.compile.c.cfloat_12_A;

const cfloat a = 1.0f + 2.0fi;

const float b = a.re;
static assert(b == 1.0f);

const float c = a.im;
static assert(c == 2.0f);
