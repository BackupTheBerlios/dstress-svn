// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-04-15
// @uri@	news:d3pa4s$17qk$1@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=726

// __DSTRESS_ELINE__ 22

module dstress.nocompile.o.override_10;

class C{
}

class D : C{
	template fn() {
		override void fn(){
		}
	}    
	mixin fn;
}
