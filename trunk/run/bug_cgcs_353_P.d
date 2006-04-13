// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com

module dstress.run.bug_cgcs_353_P;

ireal[1] a;
ireal[1] b;

ireal[] concat() {
	return a~b;
}

int main(){
	a[] = 1.0Li;
	b[] = 3.0Li;

	ireal[] arr=concat();

	if(arr.length != 2){
		assert(0);
	}

	if(arr[0] != 1.0Li){
		assert(0);
	}

	if(arr[1] != 3.0Li){
		assert(0);
	}
	
	return 0;
}

