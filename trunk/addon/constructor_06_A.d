// $HeadURL$ 
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-11-11
// @uri@	news:cn0g3t$o2i$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2249

// see dstress.run.constructor_06 
// see also dstress.addon.constructor_04_A

module addon.constructor_06_A;

class Base{
	this(){
	}
}

class Derived : Base{
	private:
	public:
	// contrary to dstress.addon.constructor_04_A
	// the constructor will be generated here, thus it's public
}
