// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <kevinbealer@gmail.com>
// @date@	2007-02-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=981
// @desc@	[Issue 981] CFTE fails in non-template and functions that takes no args.

module dstress.run.b.bug_interpret_96_C;

char[] foo(){
	return "abc";
}

struct S(){
	const char[] x = foo();
}

int main(){
	S!() s;
	if("abc" != s.x){
		assert(0);
	}
	return 0;
}
