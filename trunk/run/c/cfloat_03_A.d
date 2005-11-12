// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-11-08
// @uri@	news:dkq3ck$2370$1@digitaldaemon.com

module dstress.run.c.cfloat_03_A;

int main(){
	const cfloat a = 2.0fi + 1.0f;

	static assert(a.im == 2.0f);

	return 0;
}
