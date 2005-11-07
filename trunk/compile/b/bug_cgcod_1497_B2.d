// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-11-04
// @uri@	news:dkgkic$2v7n$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -O -release 

module dstress.compile.b.bug_cgcod_1497_B2;

class C{
	private void bug(char[] array){
		bug(array[1 .. array.length]);
	}
}
