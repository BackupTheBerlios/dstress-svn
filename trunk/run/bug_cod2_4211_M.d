// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com

module dstress.run.bug_cod2_4211_M;

idouble[1] a;
idouble[1] b;

idouble[] concat() {
	return a~b;
}

int main(){
	a[]=1.0i;
	b[]=3.0i;

	idouble[] arr=concat();

	assert(arr.length==2);
	assert(arr[0]==1.0i);
	assert(arr[1]==3.0i);
	
	return 0;
}

