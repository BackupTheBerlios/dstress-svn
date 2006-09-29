// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-09-24
// @uri@	news:bug-365-3@http.d.puremagic.com/issues/
// @desc@	[Issue 365] New: Regression: Bad code generation for floating point == and !=

module dstress.compile.o.opEquals_06_A;

const real r = real.nan;

static assert(r != 0);
static assert(!(r == 0));

