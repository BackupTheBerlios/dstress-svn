// $HeadURL$
// $Date$
// $Author$

// @author@	Lionello Lunesu <lionello.lunesu@crystalinter.remove.com>
// @date@	2004-11-30
// @uri@	news:cohvnb$1eil$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2383

// __DSTRESS_ELINE__ 19

module dstress.nocompile.array_initialization_04;

void test(size_t size){
}

int main(){
	for (int t=0; t<33; t++){
		test((bool[t]).sizeof);
	}
	return 0;
}

