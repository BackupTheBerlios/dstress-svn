// $HeadURL$
// $Date$
// $Author$

// @author@	Peter C. Chapin <pchapin@ecet.vtc.edu>
// @date@	2006-12-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=776
// @desc@	[Issue 776] Unittest section inside a template does not alway execute.

// __DSTRESS_DFLAGS__ -unittest

module /*dstress.*/norun.u.unittest_10_H;
import /*dstress.*/compile.u.unittest_10_C;

int main(){
	C!() c;
	return 0;
}
