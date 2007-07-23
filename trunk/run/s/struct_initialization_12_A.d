// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-06-15
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1268
// @desc@	[Issue 1268] Struct literals try to initialize static arrays of non-static structs incorrectly

module dstress.run.s.struct_initialization_12_A;

struct S{
	int[5] i;
}

int main(){
	S s = S();
	return 0;
}
