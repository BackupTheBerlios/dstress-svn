// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-doop@kuehne.cn>
// @date@	2006-11-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=575
// @desc@	[Issue 575] New: wrong evaluation of (creal * 2 + 1i)

module dstress.compile.c.cdouble_11_C;

template foo(cdouble a){
	const cdouble foo = a * 2.0 + 1.0i;
}

static assert(foo!(1.0 + 2.0i) == 2.0 + 5.0i);

