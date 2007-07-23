// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-06-15
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1268
// @desc@	[Issue 1268] Struct literals try to initialize static arrays of non-static structs incorrectly

module dstress.run.s.struct_initialization_12_D;

typedef int I = 13;

struct S{
	I[5] x;
}

int main(){
	S s = S();
	for(size_t i = 0; i < 5; i++){
		if(13 != s.x[i]){
			assert(0);
		}
	}
	return 0;
}
