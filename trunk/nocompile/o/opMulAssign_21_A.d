// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2006-12-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=730
// @desc@	[Issue 730] New: broken operator handling of ifloat/idouble/ireal

// __DSTRESS_ELINE__ 16

module dstress.nocompile.o.opMulAssign_21_A;

void foo(){
	ifloat a = 1.0fi;
	a *= 2.0fi;
}

