// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -O

module dstress.run.bug_cod2_4211_N;

double[1] a;
double[1] b;

double[] concat() {
	return a~b;
}

int main(){
	a[]=1.0;
	b[]=3.0;

	double[] arr=concat();

	assert(arr.length==2);
	assert(arr[0]==1.0);
	assert(arr[1]==3.0);
	
	return 0;
}

