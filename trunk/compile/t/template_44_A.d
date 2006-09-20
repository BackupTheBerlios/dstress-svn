// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-09-16
// @uri@	news:bug-351-3@http.d.puremagic.com/issues/
// @desc@	[Issue 351] New: Recursive string template doesn't work if the terminating specialisation is given first

module dstress.compile.t.template_44_A;

template Reverse(char[] s) {
	const char[] Reverse = Reverse!(s[1 .. s.length]) ~ s[0];
}

template Reverse(char[] s : "") {
	const char[] Reverse = "";
}

static assert(Reverse!("abcD") == "Dcba");
