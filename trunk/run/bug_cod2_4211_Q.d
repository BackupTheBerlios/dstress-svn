// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -O

module dstress.run.bug_cod2_4211_Q;

creal[1] a;
creal[1] b;

creal[] concat() {
	return a~b;
}

int main(){
	a[]=0.5l+1.0li;
	b[]=0.5l+3.0li;

	creal[] arr=concat();

	assert(arr.length==2);
	assert(arr[0]==0.5l+1.0li);
	assert(arr[1]==0.5l+3.0li);
	
	return 0;
}

