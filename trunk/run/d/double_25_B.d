// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-05-25
// @uri@	news:d72fan$60m$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -O

module dstress.run.d.double_25_B;

int main(){
	static double[] params = [1,3,5];

	double[] sums = new double[3];
	sums[] = 0;

	foreach(double d; params){
		double prod = d;

		for(int i; i<2; i++){
			sums[i] += prod;
			prod *= d;
		}
		sums[2] += prod;
	}

	assert(sums[0]==9);
	assert(sums[1]==35);
	assert(sums[2]==153);

	return 0;
}
