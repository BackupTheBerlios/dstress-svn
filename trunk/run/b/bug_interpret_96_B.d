// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <kevinbealer@gmail.com>
// @date@	2007-02-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=981
// @desc@	[Issue 981] CFTE fails in non-template and functions that takes no args.

module dstress.run.b.bug_interpret_96_B;

char[] foo(char[] text){
	return "abc" ~ text;
}

struct S(){
	const char[] x = foo("d");
}

int main(){
	S!() s;
	if("abcd" != s.x){
		assert(0);
	}
	return 0;
}
