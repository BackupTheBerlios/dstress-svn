// $HeadURL$
// $Date$
// $Author$

// @author@	<pop.atry@gmail.com>
// @date@	2007-09-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1523
// @desc@	[Issue 1523] struct literals not work with typedef

module dstress.run.s.struct_initialization_13_B;

struct BaseStruct {
	int n;
	char c;
}

int myFunction(BaseStruct m){
	return m.n + m.c * 2;
}

int main() {
	if(7 != myFunction(BaseStruct(3, '\x02'))){
		assert(0);
	}

        return 0;
}
