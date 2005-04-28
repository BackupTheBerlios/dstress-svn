// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -O

module dstress.run.bug_cod2_4211_A;

ubyte[1] a;
ubyte[1] b;

ubyte[] concat() {
	return a~b;
}

int main(){
	a[]=1;
	b[]=3;

	ubyte[] arr=concat();

	assert(arr.length==2);
	assert(arr[0]==1);
	assert(arr[1]==3);
	
	return 0;
}

