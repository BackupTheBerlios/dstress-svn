// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-doop@kuehne.cn>
// @date@	2006-11-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=575
// @desc@	[Issue 575] New: wrong evaluation of (creal * 2 + 1i)

module dstress.compile.c.creal_36_C;

template foo(creal a){
	const creal foo = a * 2.0L + 1.0Li;
}

static assert(foo!(1.0L + 2.0Li) == 2.0L + 5.0Li);

