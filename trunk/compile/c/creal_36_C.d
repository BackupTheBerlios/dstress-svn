// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-doop@kuehne.cn>
// @date@	2006-11-19
// @uri@	news:bug-575-31@http.d.puremagic.com/issues/
// @desc@	[Issue 575] New: wrong evaluation of (creal * 2 + 1i)

module dstress.compile.c.creal_36_C;

template foo(creal a){
	const creal foo = a * 2.0L + 1.0Li;
}

static assert(foo!(1.0L + 2.0Li) == 2.0L + 5.0Li);

