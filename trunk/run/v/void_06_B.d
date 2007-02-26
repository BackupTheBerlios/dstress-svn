// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Miller <chris@dprogramming.com>
// @date@	2007-02-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=991
// @desc@	[Issue 991] void static array: integral constant must be scalar type, not void

module dstress.run.v.void_06_B;

int main(){
	void[] x = new void[8];
	if(x.length != 8){
		assert(0);
	}
	return 0;
}
