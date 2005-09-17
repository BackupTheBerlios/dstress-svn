// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-09-17
// @uri@	news:dggj4l$2m7m$2@digitaldaemon.com

// __DSTRESS_ELINE__ 17

module dstress.nocompile.b.bug_cod1_2504_C;

C[1] c;

class C{
	this(){
		c ~= c;
	}
}
