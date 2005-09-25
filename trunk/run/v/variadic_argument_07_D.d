// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-09-22
// @uri@	news:dgup0c$1j47$1@digitaldaemon.com

module dstress.run.v.variadic_argument_07_D;

int counter;

void test(dchar[] s){
	assert(s=="string");
	counter++;
}

void test(...){
	assert(0);
}

int main(){
	assert(counter==0);
	
	test("string");
	assert(counter==1);
	
	test(cast(dchar[])"string");
	assert(counter==2);
	
	test("string"d);
	assert(counter==3);
	
	return 0;
}
