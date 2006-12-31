// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <ddparnell@bigpond.com>
// @date@	2006-10-02
// @uri@	news:bug-391-3@http.d.puremagic.com/issues/
// @desc@	[Issue 391] New: .sort and .reverse break utf8 encoding

module dstress.run.s.sort_16_A;

int main(){
	dchar[] a = "a\U00000081b\U00002000c\U00010000";

	if(a.sort != "abc\U00000081\U00002000\U00010000"){
		assert(0);
	}

	dchar[] b = "\U00010000a\U00002000c\U00000081b";

	if(b.sort != "abc\U00000081\U00002000\U00010000"){
		assert(0);
	}

	return 0;
}

