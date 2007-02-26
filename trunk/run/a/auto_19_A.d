// $HeadURL$
// $Date$
// $Author$

// @author@	Bill Baxter <wbaxter@gmail.com>
// @date@	2007-02-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=999
// @desc@	[Issue 999] Problem with auto and nested array literals

module dstress.run.a.auto_19_A;

auto gfoo = [[3.0],[4.0]];

int main(){
	if(2 != gfoo.length){
		assert(0);
	}
	if(1 != gfoo[0].length){
		assert(0);
	}
	if(3.0 != gfoo[0][0]){
		assert(0);
	}
	if(1 != gfoo[1].length){
		assert(0);
	}
	if(4.0 != gfoo[1][0]){
		assert(0);
	}
	return 0;
}
