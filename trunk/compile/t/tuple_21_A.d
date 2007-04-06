// $HeadURL$
// $Date$
// $Author$

// @author@	Daniel <Daniel919@web.de>
// @date@	2007-02-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=938
// @desc@	[Issue 938] struct with Tuple

module dstress.compile.t.tuple_21_A;

struct Tuple(A...) {
	alias A Tuple;
}

template removeSpace(char[] s, int x = 0) {
	static if (s[0] == ' '){
		alias removeSpace!(s[1..$], x+1) removeSpace;
	}else{
		alias Tuple!(s, x) removeSpace;
	}
}

static assert("Hello you !" == removeSpace!("       Hello you !").Tuple[0]);
