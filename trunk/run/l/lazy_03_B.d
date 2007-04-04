// $HeadURL$
// $Date$
// $Author$

// @author@	Mark Guidarelli <guido@grumpy-cat.com>
// @date@	2007-03-31
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1088
// @desc@	[Issue 1088] structs allocated with a struct allocator will not have default initializer values assigned

module dstress.run.l.lazy_03_B;

int step;
int[] master = [0x12_34_56_78, 0x12_34_56_78, 0xAB_CD_EF_00, 0xAB_CD_EF_00];

void test(int i){
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
	bar(foo(), foo());
	if(step != master.length){
		assert(0);
	}
	return 0;
}
