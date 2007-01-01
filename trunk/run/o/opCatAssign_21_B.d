// $HeadURL$
// $Date$
// $Author$

// @author@	Bill Baxter <wbaxter@gmail.com>
// @date@	2006-12-25
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=748
// @desc@	[Issue 748] internal error with mixed static / dynamic array

module dstress.run.o.opCatAssign_21_B;

int main(){
	int[][] a;
	a ~= [3, 4];
	if(a.length != 1){
		assert(0);
	}
	if(a[0].length != 2){
		assert(0);
	}
	if(a[0][0] != 3){
		assert(0);
	}
	if(a[0][1] != 4){
		assert(0);
	}

	return 0;
}
