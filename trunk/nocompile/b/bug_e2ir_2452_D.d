// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-09-17
// @uri@	news:dggiua$2m7m$1@digitaldaemon.com

// __DSTRESS_ELINE__ 17

module dstress.nocompile.b.bug_e2ir_2452_D;

class C{
	static C[1] c;
	
	this(){
		c ~= this;
	}
}
