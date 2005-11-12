// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-05-25
// @uri@	news:d72fan$60m$1@digitaldaemon.com

module dstress.run.f.real_23_B;

int main(){
	static real[] params = [1,3,5];

	real[] sums = new real[3];
	sums[] = 0;

	foreach(real d; params){
		real prod = d;

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
