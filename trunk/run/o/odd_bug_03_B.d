// $HeadURL$
// $Date$
// $Author$

// @desc@	vararg / char[] / foreach code generation bug
// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-05-29
// @uri@	news:d7d2kq$1mc$1@digitaldaemon.com

// @WARNING@ direct use of Phobos

module dstress.run.o.odd_bug_03_B;

import std.format;

const char[] culprit;

void f(...){
	char[] s;

	void putc(dchar c){
		s ~= c;
	}

	std.format.doFormat(&putc, _arguments, _argptr);

	assert(s=="mystery");
}

int main(){
	f("mystery");
	return 0;
}
