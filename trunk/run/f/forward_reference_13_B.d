// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-07-14
// @uri@	news:db62cr$308b$1@digitaldaemon.com

module dstress.run.f.forward_reference_13_B;

class Foo(TYPE){
	void func(int function(TYPE a) theParameter = myLilFunction){
	}

	static int function(TYPE a) myLilFunction;
}

int main(){
	Foo!(int) foo = new Foo!(int);
	foo.func();
	return 0;
}