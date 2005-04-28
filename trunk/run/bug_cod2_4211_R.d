// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -O

module dstress.run.bug_cod2_4211_R;

bit[1] a;
bit[1] b;

bit[] concat() {
	return a~b;
}

int main(){
	a[]=0;
	b[]=1;

	bit[] arr=concat();

	assert(arr.length==2);
	assert(arr[0]==0);
	assert(arr[1]==1);
	
	return 0;
}

