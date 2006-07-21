// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-07-14
// @uri@	news:db62cr$308b$1@digitaldaemon.com

module dstress.run.f.forward_reference_14_A;

class Foo(TYPE){
	static int delegate(TYPE a) myLilFunction;

	void func(int delegate(TYPE a) theParameter = myLilFunction){
	}
}

int main(){
	Foo!(int) foo = new Foo!(int);
	foo.func();
	return 0;
}
