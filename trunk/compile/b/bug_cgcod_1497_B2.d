// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-11-04
// @uri@	news:dkgkic$2v7n$1@digitaldaemon.com

module dstress.compile.b.bug_cgcod_1497_B2;

class C{
	protected void bug(char[] array){
		bug(array[1 .. array.length]);
	}
}
