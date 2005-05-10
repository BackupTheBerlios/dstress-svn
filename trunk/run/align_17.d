// $HeadURL: http://dstress.kuehne.cn/run/align_17.d $
// $Date: 2005-05-06 14:14:51 +0200 (Fr, 06 Mai 2005) $
// $Author: thomask $

// @author@	Robert Atkinson <Robert.Atkinson@gmail.com>
// @date@	2005-05-04
// @uri@	news:d5afkg$1svk$1@digitaldaemon.com

module dstress.run.align_17;

version(X86){
	version(linux) version=testA; // c compiler: gcc
}

align(128) struct S{
	byte a;
	byte b;
}

int main(){
	S s;
	version(testA){
		assert(&s.a-&s.b==-128);
	}else{
		pragma(msg, "no C alignment data present");
		static assert(0);
	}
	return 0;
}

