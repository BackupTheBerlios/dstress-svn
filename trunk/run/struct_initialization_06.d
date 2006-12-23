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
	int[4] two = 2;
}

A a = { one:1 };

int main(){
	if(a.one != 1){
		assert(0);
	}
	if(a.two[0] != 2){
		assert(0);
	}
	if(a.two[1] != 2){
		assert(0);
	}
	if(a.two[2] != 2){
		assert(0);
	}
	if(a.two[3] != 2){
		assert(0);
	}
	return 0;
}
