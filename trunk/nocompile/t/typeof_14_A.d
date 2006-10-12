// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-10-06
// @uri@	news:bug-405-3@http.d.puremagic.com/issues/
// @desc@	[Issue 405] New: typeof in TemplateParameterList causes compiletime segmentfault

// __DSTRESS_ELINE__ 13

module dstress.nocompile.t.typeof_14_A;

template square(typeof(x) x){
	const square = x * x;
}

const b = square!(2);
