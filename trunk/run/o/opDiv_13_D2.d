// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-12-06
// @uri@	news:dn3old$hhr$1@digitaldaemon.com

module dstress.run.o.opDiv_13_D2;

int main() {
	uint a = 1_000_000_000;
	uint b =   100_000_000;

	assert(a / b == 10);

	return 0;
}

