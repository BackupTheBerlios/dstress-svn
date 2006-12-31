// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-11-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=614
// @desc@	[Issue 614] New: Real and imaginary properties of complex numbers not allowed as template arguments

module dstress.compile.c.cdouble_12_A;

const cdouble a = 1.0 + 2.0i;

const double b = a.re;
static assert(b == 1.0);

const double c = a.im;
static assert(c == 2.0);
