// $HeadURL$
// $Date$
// $Author$

// @author@	david <davidl@126.com>
// @date@	2006-12-13
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=685
// @desc@	[Issue 685] dmd assertion failure

module dstress.run.t.tuple_10_B;

int status;

void foo(M...)(M m){
	status += M.length + 2;
}

int main(){
	foo();

	if(status != 2){
		assert(0);
	}
	return 0;
}
