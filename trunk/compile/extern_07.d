// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2004-12-14
// @uri@	news:cpoao4$lqs$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs:2556

module dstress.compile.extern_07;

extern(C) void *wglGetProcAddress(char*);
extern(C) int function() glFunctionFoo;
  
int main(){
	glFunctionFoo = cast(extern(C) int function()) wglGetProcAddress("glFunctionFoo");
	return 0;
}


