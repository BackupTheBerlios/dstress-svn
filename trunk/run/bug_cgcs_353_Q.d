// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com


module dstress.run.bug_cgcs_353_Q;

creal[1] a;
creal[1] b;

creal[] concat() {
	return a~b;
}

int main(){
	a[] = 0.5L + 1.0Li;
	b[] = 0.5L + 3.0Li;

	creal[] arr=concat();

	if(arr.length != 2){
		assert(0);
	}

	if(arr[0] != 0.5L + 1.0Li){
		assert(0);
	}

	if(arr[1] != 0.5L + 3.0Li){
		assert(0);
	}
	
	return 0;
}

