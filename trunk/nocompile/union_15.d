// $HeadURL$
// $Date$
// $Author$

// @author@	Geoff Hickey <Geoff_member@pathlink.com>
// @date@	2004-12-02
// @uri@	news:coo7ep$2089$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2429

// __DSTRESS_ELINE__ 19

module dstress.nocompile.union_15;

union NamedUnion{
	int i;
}

int main(){
	NamedUnion.i = 1;
	return 0;
}


