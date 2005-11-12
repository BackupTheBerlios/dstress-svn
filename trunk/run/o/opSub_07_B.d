// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-11-08
// @uri@	news:dkq3ck$2370$1@digitaldaemon.com

module dstress.run.o.opSub_07_B;

int main(){
	const ifloat a = 1.0i;
	const ifloat b = 3.0i;

	static assert(a - b == -2.0i);

	return 0;
}
