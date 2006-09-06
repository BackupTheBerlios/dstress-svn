// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-09-22
// @uri@	news:dgup0c$1j47$1@digitaldaemon.com

module dstress.run.v.variadic_argument_07_A;

int counter;

void test(char[] s){
	if(s != "string"){
		assert(0);
	}
	counter++;
}

int main(){
	if(counter != 0){
		assert(0);
	}
	
	test("string");
	if(counter != 1){
		assert(0);
	}
	
	test(cast(char[])"string");
	if(counter != 2){
		assert(0);
	}
	
	test("string"c);
	if(counter != 3){
		assert(0);
	}
	
	return 0;
}
