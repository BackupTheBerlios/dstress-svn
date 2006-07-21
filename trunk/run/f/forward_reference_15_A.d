// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-07-14
// @uri@	news:db62cr$308b$1@digitaldaemon.com

module dstress.run.f.forward_reference_15_A;

class Foo(TYPE){
	static int function(TYPE a) myLilFunction;

	void func(int function(TYPE a) theParameter = myLilFunction){
	}
}

int main(){
	Foo!(int) foo = new Foo!(int);
	foo.func();
	return 0;
}
