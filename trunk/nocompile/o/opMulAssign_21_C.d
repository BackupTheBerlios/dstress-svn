// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2006-12-23
// @uri@	news:bug-730-3@http.d.puremagic.com/issues/
// @desc@	[Issue 730] New: broken operator handling of ifloat/idouble/ireal

// __DSTRESS_ELINE__ 16

module dstress.nocompile.o.opMulAssign_21_C;

void foo(){
	ireal a = 1.0Li;
	a *= 2.0Li;
}

