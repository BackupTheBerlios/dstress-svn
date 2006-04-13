// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com

module dstress.run.bug_cgcs_353_O;

real[1] a;
real[1] b;

real[] concat() {
	return a~b;
}

int main(){
	a[] = 1.0L;
	b[] = 3.0L;

	real[] arr=concat();

	if(arr.length != 2){
		assert(0);
	}
	
	if(arr[0] != 1.0L){
		assert(0);
	}

	if(arr[1] != 3.0L){
		assert(0);
	}
	
	return 0;
}

