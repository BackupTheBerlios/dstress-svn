// $HeadURL$
// $Date$
// $Author$

// @desc@	vararg / char[] / foreach code generation bug
// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-05-29
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4171

// @WARNING@ direct use of Phobos

module dstress.run.o.odd_bug_03_C;

import std.format;

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
