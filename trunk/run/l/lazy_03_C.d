// $HeadURL$
// $Date$
// $Author$

// @author@	Mark Guidarelli <guido@grumpy-cat.com>
// @date@	2007-03-31
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1088
// @desc@	[Issue 1088] structs allocated with a struct allocator will not have default initializer values assigned

module dstress.run.l.lazy_03_C;

import std.stdarg;

int step;
int[] master = [0x12_34_56_78, 0x12_34_56_78, 0xAB_CD_EF_00, 0xAB_CD_EF_00];

void test(...){
	if(1 != _arguments.length){
		assert(0);
	}
	if(typeid(int) != _arguments[0]){
		assert(0);
	}
	int i = va_arg!(int)(_argptr);
	if(master[step] != i){
		assert(0);
	}
	step++;
}

int foo() {
	test(0x12_34_56_78);
	return 0xAB_CD_EF_00;
}

void bar(lazy int[] bla ...) {
	foreach (elem; bla){
		test(elem);
	}
}

int main() {
	bar([foo(), foo()]);
	if(step != master.length){
		assert(0);
	}
	return 0;
}
