// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-09-17
// @uri@	news:dggj4l$2m7m$2@digitaldaemon.com

module dstress.run.b.bug_cod1_2504_D;

class C{
	C[] c;

	this(){
		c ~= c;
	}
}

int main(){
	C c = new C();

	if(c.c.length != 0){
		assert(0);
	}
	return 0;
}
