// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-12-09
// @uri@	news:ns972710D168DCEsvv1999hotmailcom@63.105.9.61

module dstress.run.c.const_28_B;

const uint a = 20;
const uint b = 1024;
const uint arity= a * b;

struct Leaf{
	int[arity] data;
}

void init(inout Leaf* leaf){
	leaf= new Leaf;
}

int main(){
	if(Leaf.data.length == a * b){
		return 0;
	}
}
