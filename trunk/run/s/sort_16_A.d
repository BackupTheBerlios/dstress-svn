// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <ddparnell@bigpond.com>
// @date@	2006-10-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=391
// @desc@	[Issue 391] New: .sort and .reverse break utf8 encoding

module dstress.run.s.sort_16_A;

int main(){
	dchar[] a = "a\U00000081b\U00002000c\U00010000"d.dup;

	if(a.sort != "abc\U00000081\U00002000\U00010000"){
		assert(0);
	}

	dchar[] b = "\U00010000a\U00002000c\U00000081b"d.dup;

	if(b.sort != "abc\U00000081\U00002000\U00010000"){
		assert(0);
	}

	return 0;
}

