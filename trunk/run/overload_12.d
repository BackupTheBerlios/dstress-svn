// $HeadURL$
// $Date$
// $Author$

// @author@	D Trebbien <D_member@pathlink.com>
// @date@	2005-01-07
// @uri@	news:crmrb6$2slf$1@digitaldaemon.com
// @url@        nntp://news.digitalmars.com/digitalmars.D.bugs/2649

module dstress.run.overload_12;

class A{
	void test(int val){
	}
}

class B : A{
	void test(){
	}
}

int main(){
	B b = new B();
	b.test(1);
	b.test();
	return 0;
}
