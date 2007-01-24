// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <ddparnell@bigpond.com>
// @date@	2006-10-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=391
// @desc@	[Issue 391] New: .sort and .reverse break utf8 encoding

module dstress.run.r.reverse_08_A;

int main(){
	char[] a = "a\U00000081b\U00002000c\U00010000";
	char[] b = a.dup.reverse;

	if(b != "\U00010000c\U00002000b\U00000081a"){
		assert(0);
	}

	if(b.reverse != a){
		assert(0);
	}

	return 0;
}

