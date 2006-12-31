// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2006-11-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=555
// @desc@	[Issue 555] New: Integral ireal literals can't be specified

module dstress.compile.f.float_literal_dec_18_C;

const ireal x = 4Li;

static assert(x == 4.0i);
