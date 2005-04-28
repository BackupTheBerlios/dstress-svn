// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -O

module dstress.run.bug_cod2_4211_P;

ireal[1] a;
ireal[1] b;

ireal[] concat() {
	return a~b;
}

int main(){
	a[]=1.0li;
	b[]=3.0li;

	ireal[] arr=concat();

	assert(arr.length==2);
	assert(arr[0]==1.0li);
	assert(arr[1]==3.0li);
	
	return 0;
}

