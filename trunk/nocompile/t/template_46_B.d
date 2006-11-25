// $HeadURL$
// $Date$
// $Author$

// @author@	Vladimir <v04bvs@gmail.com>
// @date@	2006-11-22
// @uri@	news:bug-585-3@http.d.puremagic.com/issues/
// @desc@	[Issue 585] New: dmd crashes with segmentation fault

// __DSTRESS_ELINE__ 14

module dstress.nocompile.t.template_46_B;

template T(void *p){
}

mixin T!(null);
