// @author@	tetsuya <tetsuya_member@pathlink.com>
// @dateq@	2004-10-16
// @uri@	news://ckrq8e$1cnl$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2121

module dstress.run.overload_08;

int test(real a, real b){
	assert(0);
	return 1;
}

int test(real a, int b){
	assert(0);
	return 2;
}

int test(real a, uint b){
	return 3;
}

int main(){
	assert(test(5.0, 6u)==3);
	return 0;
}
