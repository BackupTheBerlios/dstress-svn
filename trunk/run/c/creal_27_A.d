// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-11-08
// @uri@	news:dkq3ck$2370$1@digitaldaemon.com

module dstress.run.c.creal_27_A;

int main(){
	const creal a = 2.0i + 1.0;

	static assert(a.im == 2.0);

	return 0;
}
