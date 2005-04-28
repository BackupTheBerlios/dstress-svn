// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -O

module dstress.run.bug_cod2_4211_K;

cfloat[1] a;
cfloat[1] b;

cfloat[] concat() {
	return a~b;
}

int main(){
	a[]=0.5f+1.0fi;
	b[]=0.5f+3.0fi;

	cfloat[] arr=concat();

	assert(arr.length==2);
	assert(arr[0]==0.5f+1.0fi);
	assert(arr[1]==0.5f+3.0fi);
	
	return 0;
}

