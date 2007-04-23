// $HeadURL$
// $Date$
// $Author$

// @author@	<dheld@codelogicconsulting.com>
// @date@	2007-04-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1146
// @desc@	[Issue 1146] mixin + assert() crashes compiler

// __DSTRESS_ELINE__ 19

module dstress.nocompile.m.mixin_33_D;

template MetaString(String){
	alias String Value;
}

void foo(){
	assert(mixin(MetaString!("2 == 1").Value));
}
