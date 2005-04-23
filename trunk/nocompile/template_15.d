// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-04-15
// @uri@	news:d3pa4s$17qk$1@digitaldaemon.com

// __DSTRESS_ELINE__ 20

module dstress.nocompile.template_15;

class C{
	template fn(T) {
		void fn(){
		}
	}    

	void test(){
		fn();
	}
}
