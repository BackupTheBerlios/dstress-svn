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

	if(2 != arr.length){
		assert(0);
	}
	if(arr[0]){
		assert(0);
	}
	if(!arr[1]){
		assert(0);
	}
	
	return 0;
}

