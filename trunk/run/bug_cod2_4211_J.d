// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -O

module dstress.run.bug_cod2_4211_J;

ifloat[1] a;
ifloat[1] b;

ifloat[] concat() {
	return a~b;
}

int main(){
	a[]=1.0fi;
	b[]=3.0fi;

	float[] arr=concat();

	assert(arr.length==2);
	assert(arr[0]==1.0fi);
	assert(arr[1]==3.0fi);
	
	return 0;
}

