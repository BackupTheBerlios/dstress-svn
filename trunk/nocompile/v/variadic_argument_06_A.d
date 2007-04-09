// $HeadURL$
// $Date$
// $Author$

// @author@	Unknown W. Brackets <unknown@simplemachines.org>
// @date@	2005-06-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4296
// @desc@	expression.c:272: void functionArguments(Loc, Scope*, TypeFunction*, Array*): Assertion `0' failed
	
// __DSTRESS_ELINE__ 19

module dstress.nocompile.v.variadic_argument_06_A;

void test(int i ...){
}

void main(){
	int[] j;
	test(j);
}
