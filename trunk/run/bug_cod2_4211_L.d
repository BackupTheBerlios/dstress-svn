// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com

module dstress.run.bug_cod2_4211_L;

cdouble[1] a;
cdouble[1] b;

cdouble[] concat() {
	return a~b;
}

int main(){
	a[]=0.5+1.0i;
	b[]=0.5+3.0i;

	cdouble[] arr=concat();

	assert(arr.length==2);
	assert(arr[0]==0.5+1.0i);
	assert(arr[1]==0.5+3.0i);
	
	return 0;
}

