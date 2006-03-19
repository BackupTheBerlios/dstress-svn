// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-03-02
// @uri@	news:<du6chp$hub$1@digitaldaemon.com
// @WARNING@	direct use of phobos

module dstress.run.c.creal_32_A;

import std.math;

int main(){
	creal a = -0.0L + 0.0Li;

	if(!signbit(a.re)){
		assert(0);
	}

	if(signbit(a.im)){
		assert(0);
	}

	return 0;
}
