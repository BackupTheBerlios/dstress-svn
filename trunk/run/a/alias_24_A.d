// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-22
// @uri@	d6qih3$2b20$1@digitaldaemon.com
// @desc@	aliasing an interface array after another interface using the alias makes it impossible to implement the interface

module dstress.run.a.alias_24_A;

interface S{
}

interface I{
	void test(SList);
}

alias S [] SList;

class C : I{
	void test(SList o){
	}
}

int main(){
	C c = new C;
	return 0;
}
