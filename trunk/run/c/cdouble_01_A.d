// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-05-25
// @uri@	news:d72fan$60m$1@digitaldaemon.com

module dstress.run.c.cdouble_01_A;

int main(){
	static cdouble[] params = [1.0 + 0.0i, 3.0 + 0.0i, 5.0 + 0.0i];

	cdouble[] sums = new cdouble[3];
	sums[] = 0.0 + 0.0i;

	foreach(cdouble d; params){
		cdouble prod = d;

		for(int i; i<2; i++){
			sums[i] += prod;
			prod *= d;
		}
		sums[2] += prod;
	}

	assert(sums[0].re == 9.0);
	assert(sums[0].im == 0.0);
	assert(sums[1].re == 35.0);
	assert(sums[1].im == 0.0);
	assert(sums[2].re == 153.0);
	assert(sums[2].im == 0.0);

	return 0;
}
