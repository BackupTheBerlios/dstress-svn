// $HeadURL$
// $Date$
// $Author$

// @author@	Mizuno Hiroki <hiroki1124@hotmail.com>
// @date@	2005-05-16
// @uri@	news:d6ac08$1uug$1@digitaldaemon.com

module dstress.run.t.typedef_08_A;

union Org{
	int x;
}

typedef Org Ali;

int main(){
	Ali a;

	assert(a.x==0);
	a.x=2;
	assert(a.x==2);
	
	return 0;
}

