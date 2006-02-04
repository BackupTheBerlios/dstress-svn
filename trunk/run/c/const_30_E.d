// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-02-02
// @uri@	news:drt42o$o0d$1@digitaldaemon.com

module dstress.run.c.const_30_E;

const int baboon = 3;
const int monkey = 4;

const ape = monkey * baboon;

int main(){
	static assert(ape == 12);
	return 0;
}
