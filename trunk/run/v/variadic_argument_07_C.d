// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-09-22
// @uri@	news:dgup0c$1j47$1@digitaldaemon.com

module dstress.run.v.variadic_argument_07_C;

int counter;

void test(wchar[] s){
	if(s != "string"){
		assert(0);
	}
	counter++;
}

void test(...){
	assert(0);
}

int main(){
	if(counter != 0){
		assert(0);
	}
	
	test("string");
	if(counter != 1){
		assert(0);
	}
	
	test(cast(wchar[])"string");
	if(counter != 2){
		assert(0);
	}
	
	test("string"w);
	if(counter != 3){
		assert(0);
	}
	
	return 0;
}
