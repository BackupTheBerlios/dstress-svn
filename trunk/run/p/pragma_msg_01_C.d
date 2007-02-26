// $HeadURL$
// $Date$
// $Author$

// @author@	Tyler Knott <tknott@gmail.com>
// @date@	2007-02-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=998
// @desc@	[Issue 998] Crash in compile-time functions with pragma(msg,...)

module dstress.run.p.pragma_msg_01_C;

int test(){
	return 2;
}

int main(){
	static x = test();
	return 0;
}

