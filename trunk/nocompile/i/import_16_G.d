// $HeadURL$
// $Date$
// $Author$

// @author@	<deewiant@gmail.com>
// @date@	2006-08-27
// @uri@	news:bug-313-3@http.d.puremagic.com/issues/
// @desc@	[Issue 313] New: Fully qualified names bypass private imports

// __DSTRESS_DFLAGS__ addon/import_16_B.d
// __DSTRESS_ELINE__ 18

module /*dstress.*/nocompile.i.import_16_G;

import /*dstress.*/addon.import_16_B;

int main(){
	return addon.import_16_A.x;
}
