// $HeadURL$
// $Date$
// $Author$

// @author@	shinichiro.h <s31552@mail.ecc.u-tokyo.ac.jp>
// @date@	2004-11-01
// @uri@	news:20041101173804.4e16f816.s31552@mail.ecc.u-tokyo.ac.jp
// @url@	nntp://digitalmars.com/D.gnu/829

// see dstress.run.constructor_04
module dstress.addon.constructor_04_A;

class Base{
	this(){
	}
}

class Derived : Base{
	private:
	// constructor will be wrongly generated here, so it is private.
}
