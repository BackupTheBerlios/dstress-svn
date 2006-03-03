// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-03-02
// @uri@	news:<du6chp$hub$1@digitaldaemon.com

module dstress.run.c.cfloat_09_C;

union S{
	float f;
	uint i;
}

int main(){
	float re = 0.0;
	ifloat im = -0.0i;
	cfloat a = re + im;

	S s;

	s.f = a.re;
	if(s.i != 0x00000000){
		assert(0);
	}

	s.f = a.im;
	if(s.i != 0x80000000){
		assert(0);
	}

	return 0;
}
