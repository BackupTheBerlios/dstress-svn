// $HeadURL$
// $Date$
// $Author$

// @author@	Georg Ramme <georg.ramme@gmail.com>
// @date@	2007-01-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=858
// @desc@	[Issue 858] Forward reference to struct inside class crashes the compiler

module dstress.run.f.forward_reference_17_B;

struct Strct{
	int i;
}

class Outer{
	this(){
		Inner i = new Inner();
	}

	class Inner{
		Strct str;
	}
}

int main(){
	Outer o = new Outer();
	return 0;
}
