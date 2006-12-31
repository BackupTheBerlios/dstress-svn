// $HeadURL$
// $Date$
// $Author$

// @author@	Peter C. Chapin <pchapin@ecet.vtc.edu>
// @date@	2006-12-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=776
// @desc@	[Issue 776] Unittest section inside a template does not alway execute.

module /*dstress.*/compile.u.unittest_10_A;

template A(){
	unittest{
		throw new Exception("dog");
	}
}
