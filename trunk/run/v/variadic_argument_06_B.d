// $HeadURL$
// $Date$
// $Author$

// @author@	Unknown W. Brackets <unknown@simplemachines.org>
// @date@	2005-06-11
// @uri@	news:d8g6e8$1kak$1@digitaldaemon.com
// @desc@	expression.c:272: void functionArguments(Loc, Scope*, TypeFunction*, Array*): Assertion `0' failed
	
module dstress.run.v.variadic_argument_06_B;

void test(int[] i ...){
	if(i.length != 1){
		assert(0);
	}

	if(i[0] != 7){
		assert(0);
	}
}

int main(){
	int j = 7;
	test(j);

	return 0;
}
