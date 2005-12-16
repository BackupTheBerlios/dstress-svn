// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date@	2005-12-09
// @uri@	news:ns972710D168DCEsvv1999hotmailcom@63.105.9.61

module dstress.run.c.const_28_I;

const uint arity= 4096000;

struct Leaf{
	int[arity] data = void;
}

int main(){
	if(Leaf.data.length == arity){
		return 0;
	}
}
