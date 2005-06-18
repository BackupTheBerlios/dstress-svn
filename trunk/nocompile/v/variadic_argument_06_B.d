// $HeadURL$
// $Date$
// $Author$

// @author@	Unknown W. Brackets <unknown@simplemachines.org>
// @date@	2005-06-11
// @uri@	news:d8g6e8$1kak$1@digitaldaemon.com
// @desc@	expression.c:272: void functionArguments(Loc, Scope*, TypeFunction*, Array*): Assertion `0' failed
	
// __DSTRESS_ELINE__ 19

module dstress.nocompile.v.variadic_argument_06_B;

void test(int[] i ...){
}

void main(){
	int j;
	test(j);
}
