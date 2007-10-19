// $HeadURL$
// $Date$
// $Author$

// @author@	<hoytak@cs.ubc.ca>
// @date@	2007-10-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1586
// @desc@	[Issue 1586] DMD and GDC segfaults on incomplete code segment.

// __DSTRESS_ELINE__ 15

module dstress.nocompile.t.template_66_D;

void myFunc(){
	auto func = &NotHere!().a!().b;
}

