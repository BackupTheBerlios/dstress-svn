// $HeadURL$
// $Date$
// $Author$

// @author@	shinichiro.h <s31552@mail.ecc.u-tokyo.ac.jp>
// @date@	2004-11-01
// @uri@	news:20041101173804.4e16f816.s31552@mail.ecc.u-tokyo.ac.jp
// @url@	nntp://digitalmars.com/D.gnu/829

// see also dstress.addon.constructor_04_A

// __DSTRESS_DFLAGS__  addon/constructor_04_A.d 

module dstress.run.constructor_04;
import addon.constructor_04_A;

int main(){
	Derived c = new Derived();
	return 0;
}
