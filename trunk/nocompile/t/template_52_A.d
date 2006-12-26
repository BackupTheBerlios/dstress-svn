// $HeadURL$
// $Date$
// $Author$

// @author@	Dan <ddaglas@gmail.com>
// @date@	2006-12-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=710
// @desc@	[Issue 710] New: compiler assertion failure w/ templates

// __DSTRESS_ELINE__ 20

module dstress.nocompile.t.template_52_A;

static int i=0;

template NEXT(int idx){
	const NEXT = idx;
}

ubyte HELO = NEXT!(i++);
