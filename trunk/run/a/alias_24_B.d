// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-22
// @uri@	news:d6qih3$2b20$1@digitaldaemon.com

module dstress.run.a.alias_24_B;

interface S{
}

alias S [] SList;

interface I{
	void test(SList);
}

class C : I{
	void test(SList o){
	}
}

int main(){
	C c = new C;
	return 0;
}
