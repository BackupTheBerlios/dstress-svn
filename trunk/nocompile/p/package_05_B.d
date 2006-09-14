// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <jarrett.billingsley@gmail.com>
// @date@	2006-07-18
// @uri@	news:bug-257-3@http.d.puremagic.com/issues/
// @desc@	[Issue 257] New: package vars accessible from sub-modules, package funcs not

// __DSTRESS_ELINE__ 16

module /*dstress.*/nocompile.p.package_05_B;
import /*dstress.*/addon.package_05_Z;

int foo(){
	return test();
}
