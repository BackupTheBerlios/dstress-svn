// $HeadURL$
// $Date$
// $Author$

// @author@	Mizuno Hiroki <hiroki1124@hotmail.com>
// @date@	2005-05-16
// @uri@	news:d6ac08$1uug$1@digitaldaemon.com

module dstress.run.t.typedef_06_A;

class Org{
	int i;
}

typedef Org Ali;

int main(){
	Ali a = new Ali;

	assert(a.i==0);
	a.i=2;
	assert(a.i==2);
	
	return 0;
}

