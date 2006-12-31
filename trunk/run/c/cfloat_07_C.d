// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-03-02
// @uri@	news:du6chp$hub$1@digitaldaemon.com

module dstress.run.c.cfloat_07_C;

union S{
	float f;
	uint i;
}

int main(){
	cfloat a = 0.0f - 0.0fi;

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
