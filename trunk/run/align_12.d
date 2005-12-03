// $HeadURL$
// $Date$
// $Author$

// @author@	Robert Atkinson <Robert.Atkinson@gmail.com>
// @date@	2005-05-04
// @uri@	news:d5afkg$1svk$1@digitaldaemon.com

module dstress.run.align_12;

version(X86){
	version(linux) version=testA; // c compiler: gcc
	version(Windows) version(DigitalMars) version=testA; // c compiler: dmc
}

align(2) struct S{
	byte a;
	byte b;
}

int main(){
	S s;
	version(testA){
		assert(&s.a-&s.b==-2);
	}else{
		pragma(msg, "no C alignment data present");
		static assert(0);
	}
	return 0;
}

