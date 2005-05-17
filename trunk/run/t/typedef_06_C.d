// $HeadURL$
// $Date$
// $Author$

// @author@	Mizuno Hiroki <hiroki1124@hotmail.com>
// @date@	2005-05-16
// @uri@	news:d6ac08$1uug$1@digitaldaemon.com

module dstress.run.t.typedef_06_C;

class Org{
	static int stat(int i){
		return i*3;
	}
}

typedef Org Ali;

int main(){
	Ali a = new Ali;

	assert(a.stat(3)==9);
	assert(Ali.stat(4)==12);
	
	return 0;
}

