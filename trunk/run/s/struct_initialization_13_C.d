// $HeadURL$
// $Date$
// $Author$

// @author@	<pop.atry@gmail.com>
// @date@	2007-09-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1523
// @desc@	[Issue 1523] struct literals not work with typedef

module dstress.run.s.struct_initialization_13_C;

struct BaseStruct {
	int n;
	char c;
}

typedef BaseStruct MyStruct;

int main() {
	MyStruct m = MyStruct(3, '\x02');

        return 0;
}
