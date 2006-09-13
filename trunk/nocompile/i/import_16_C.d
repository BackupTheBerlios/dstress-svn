// $HeadURL$
// $Date$
// $Author$

// @author@	<deewiant@gmail.com>
// @date@	2006-08-27
// @uri@	news:bug-313-3@http.d.puremagic.com/issues/
// @desc@	[Issue 313] New: Fully qualified names bypass private imports

// __DSTRESS_ELINE__ 17

module /*dstress.*/nocompile.i.import_16_C;

import /*dstress.*/addon.import_16_B;

int main(){
	return addon.import_16_A.x;
}
