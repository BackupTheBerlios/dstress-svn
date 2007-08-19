// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com


module dstress.run.bug_cgcs_353_L;

cdouble[1] a;
cdouble[1] b;

cdouble[] concat() {
	return a~b;
}

int main(){
	a[]=0.5+1.0i;
	b[]=0.5+3.0i;

	cdouble[] arr=concat();

	if(2 != arr.length){
		assert(0);
	}
	if(0.5+1.0i != arr[0]){
		assert(0);
	}
	if(0.5+3.0i != arr[1]){
		assert(0);
	}
	
	return 0;
}

