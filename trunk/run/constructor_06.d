// $HeadURL$ $Date$ ($Author$)

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-11-11
// @uri@	news://cn0g3t$o2i$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2249

// see also dstress.addon.constructor_06_A

// __DSTRESS_DFLAGS__ -I..  addon/constructor_06_A.d 

module dstress.run.constructor_06;
import dstress.addon.constructor_06_A;

int main(){
	Derived c = new Derived();
	return 0;
}
