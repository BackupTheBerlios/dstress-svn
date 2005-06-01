// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-05-25
// @uri@	news:d72fan$60m$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -O

module dstress.run.c.cdouble_01_B;

int main(){
	static cdouble[] params = [1,3,5];

	cdouble[] sums = new cdouble[3];
	sums[] = 0;

	foreach(cdouble d; params){
		cdouble prod = d;

		for(int i; i<2; i++){
			sums[i] += prod;
			prod *= d;
		}
		sums[2] += prod;
	}

	assert(sums[0].re==9);
	assert(sums[0].im==0);
	assert(sums[1].re==35);
	assert(sums[1].im==0);
	assert(sums[2].re==153);
	assert(sums[2].im==0);

	return 0;
}
