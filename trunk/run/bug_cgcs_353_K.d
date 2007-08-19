// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com


module dstress.run.bug_cgcs_353_K;

cfloat[1] a;
cfloat[1] b;

cfloat[] concat() {
	return a~b;
}

int main(){
	a[]=0.5f+1.0fi;
	b[]=0.5f+3.0fi;

	cfloat[] arr=concat();

	if(2 != arr.length){
		assert(0);
	}
	if(0.5f+1.0fi != arr[0]){
		assert(0);
	}
	if(0.5f+3.0fi != arr[1]){
		assert(0);
	}
	
	return 0;
}

