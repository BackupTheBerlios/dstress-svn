// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-09-16
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=351
// @desc@	[Issue 351] New: Recursive string template doesn't work if the terminating specialisation is given first

module dstress.compile.t.template_44_B;

template Reverse(char[] s : "") {
	const char[] Reverse = "";
}

template Reverse(char[] s) {
	const char[] Reverse = Reverse!(s[1 .. s.length]) ~ s[0];
}

static assert(Reverse!("abcD") == "Dcba");
