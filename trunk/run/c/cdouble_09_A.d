// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-03-02
// @uri@	news:<du6chp$hub$1@digitaldaemon.com

module dstress.run.c.cdouble_09_A;

union S{
	double f;
	uint[2] i;
}

int main(){
	double re = -0.0;
	idouble im = 0.0i;
	cdouble a = re + im;

	S s;
	s.f = 1;
	int top = (s.i[0]==0) ? 1 : 0;

	s.f = a.re;
	if(s.i[top] != 0x80000000){
		assert(0);
	}

	s.f = a.im;
	if(s.i[top] != 0x00000000){
		assert(0);
	}

	return 0;
}
