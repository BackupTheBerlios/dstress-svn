// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-04-15
// @uri@	news:d3pa4s$17qk$1@digitaldaemon.com

// __DSTRESS_ELINE__ 18

module dstress.nocompile.override_10;

class C{
}

class D : C{
	template fn() {
		override void fn(){
		}
	}    
}
