// $HeadURL$
// $Date$
// $Author$

// @author@	Bill Baxter <wbaxter@gmail.com>
// @date@	2007-02-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=999
// @desc@	[Issue 999] Problem with auto and nested array literals

module dstress.run.a.auto_19_B;

int main(){
	auto foo = [[3.0],[4.0]];

	if(2 != foo.length){
		assert(0);
	}
	if(1 != foo[0].length){
		assert(0);
	}
	if(3.0 != foo[0][0]){
		assert(0);
	}
	if(1 != foo[1].length){
		assert(0);
	}
	if(4.0 != foo[1][0]){
		assert(0);
	}
	return 0;
}
