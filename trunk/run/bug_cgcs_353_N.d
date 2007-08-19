// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com


module dstress.run.bug_cgcs_353_N;

double[1] a;
double[1] b;

double[] concat() {
	return a~b;
}

int main(){
	a[]=1.0;
	b[]=3.0;

	double[] arr=concat();

	if(2 != arr.length){
		assert(0);
	}
	if(1.0 != arr[0]){
		assert(0);
	}
	if(3.0 != arr[1]){
		assert(0);
	}
	
	return 0;
}

