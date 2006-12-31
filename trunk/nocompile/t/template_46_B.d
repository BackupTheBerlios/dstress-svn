// $HeadURL$
// $Date$
// $Author$

// @author@	Vladimir <v04bvs@gmail.com>
// @date@	2006-11-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=585
// @desc@	[Issue 585] New: dmd crashes with segmentation fault

// __DSTRESS_ELINE__ 14

module dstress.nocompile.t.template_46_B;

template T(void *p){
}

mixin T!(null);
