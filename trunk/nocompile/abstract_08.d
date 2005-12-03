// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon
// @date@	2004-09-24
// @uri@	news:cj0qf6$2u2v$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/1940

// __DSTRESS_ELINE__ 19

module dstress.nocompile.abstract_08;

class A{
	abstract void test();
}

int main(){
	A a = new A();
	return 0;
}
