// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <jarrett.billingsley@gmail.com>
// @date@	2006-07-18
// @uri@	news:bug-257-3@http.d.puremagic.com/issues/
// @desc@	[Issue 257] New: package vars accessible from sub-modules, package funcs not

module /*dstress.*/addon.package_05_Z;

package int i;

package int test(){
	return 1;
}
