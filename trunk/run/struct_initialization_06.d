// $HeadURL$
// $Date$
// $Author$

// @author@	Andrew Fedoniouk <news@terrainformatica.com>
// @date@	2005-03-10
// @uri@	news:d0otkq$1fsg$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/3137

module dstress.run.struct_initialization_06;

struct A {
	int one;
	int two[4];
}

A a = { one:1, two:2 };

int main(){
	assert(a.one==1);
	assert(a.two[0]==2);
	assert(a.two[1]==2);
	assert(a.two[2]==2);
	assert(a.two[3]==2);
	return 0;
}
