// $HeadURL$
// $Date$
// $Author$

// @author@	Hasan Aljudy <hasan.aljudy@gmail.com>
// @date@	2007-02-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1002
// @desc@	[Issue 1002] debug statement crashes at compile-time function execution

module dstress.run.d.debug_14_A;

dchar[] testd( dchar[] input ){
	debug int x = 10;
	return "my";
}

int main(){
	static x = testd("hello");
	if("my" != x){
		assert(0);
	}
	return 0;
}
