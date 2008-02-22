// $HeadURL$
// $Date$
// $Author$

// @author@	<mariusmuja@gmail.com>
// @date@	2007-11-24
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1689
// @desc@	[Issue 1689] New: Segfaults for nested array allocation with GDC

module dstress.run.a.array_initialization_26_F;

int main(){
        float[][] bar;
        bar = new float[][](2,3);

	if(2 != bar.length){
		assert(0);
	}
	if(3 != bar[0].length){
		assert(0);
	}
	if(3 != bar[1].length){
		assert(0);
	}

	return 0;
}
