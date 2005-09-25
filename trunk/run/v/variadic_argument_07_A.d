// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-09-22
// @uri@	news:dgup0c$1j47$1@digitaldaemon.com

module dstress.run.v.variadic_argument_07_A;

int counter;

void test(char[] s){
	assert(s=="string");
	counter++;
}

int main(){
	assert(counter==0);
	
	test("string");
	assert(counter==1);
	
	test(cast(char[])"string");
	assert(counter==2);
	
	test("string"c);
	assert(counter==3);
	
	return 0;
}
