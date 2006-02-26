// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-27
// @uri@	news:d4or18$1th1$1@digitaldaemon.com


module dstress.run.bug_cgcs_353_R;

bool[1] a;
bool[1] b;

bool[] concat() {
	return a~b;
}

int main(){
	a[] = false;
	b[] = true;

	bool[] arr=concat();

	assert(arr.length==2);
	assert(!arr[0]);
	assert(arr[1]);
	
	return 0;
}

