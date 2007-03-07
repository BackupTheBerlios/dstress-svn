// $HeadURL$
// $Date$
// $Author$

// @author@	Robert Atkinson <Robert.Atkinson@gmail.com>
// @date@	2005-05-04
// @uri@	news:d5afkg$1svk$1@digitaldaemon.com

module dstress.run.align_12;

version(X86) version = type1;
version(X86_64) version = type1;

version(type1){
	version(linux) version=testA; // c compiler: gcc
	version(Windows) version=testA; // c compiler: dmc
}else{
	static assert(0);
}

align(2) struct S{
	byte a;
	int b;
}

int main(){
	S s;
	version(testA){
		assert((cast(void*)&s.a)-(cast(void*)&s.b)==-2);
	}else{
		pragma(msg, "no C alignment data present");
		static assert(0);
	}
	return 0;
}
