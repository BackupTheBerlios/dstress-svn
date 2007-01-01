// $HeadURL$
// $Date$
// $Author$

// @author@	<thecybershadow@gmail.com>
// @date@	2006-12-29
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=770
// @desc@	[Issue 770] enums and typecasts

module /*dstress.*/run.e.enum_51_B;
import /*dstress.*/compile.e.enum_51_A;

enum Enum1{
	C = A,
	D = B
}

enum Enum2{
	C = A,
	D = B
}

class C{
	this(){
		assert(0);
	}
	
	this(Enum1 a, Enum2 b){
	}

	this(Enum1 a){
		assert(0);
	}
}

int main(){
	new C(Enum1.C, Enum2.C);
	return 0;
}
