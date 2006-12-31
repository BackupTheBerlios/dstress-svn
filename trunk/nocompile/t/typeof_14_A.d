// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-10-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=405
// @desc@	[Issue 405] New: typeof in TemplateParameterList causes compiletime segmentfault

// __DSTRESS_ELINE__ 14

module dstress.nocompile.t.typeof_14_A;

template square(typeof(x) x){
	const square = x * x;
}

const b = square!(2);
