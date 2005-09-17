// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-09-17
// @uri@	news:dggiua$2m7m$1@digitaldaemon.com

module dstress.run.b.bug_e2ir_2452_B;

class C{
	C[] c;

	this(){
		c ~= this;
	}
}

int main(){
	C c = new C();
	assert(c.c.length==1);
	assert(c.c[0] is c);
	
	return 0;
}