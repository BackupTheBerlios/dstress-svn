// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-03-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6425
// @WARNING@	direct use of phobos

module dstress.run.c.creal_34_B;

import std.math;

int main(){
	real re = 0.0L;
	ireal im = 0.0Li;
	creal a = re + im;

	if(signbit(a.re)){
		assert(0);
	}

	if(signbit(a.im)){
		assert(0);
	}

	return 0;
}
