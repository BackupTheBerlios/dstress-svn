// $HeadURL$
// $Date$
// $Author$

// @author@	Unknown W. Brackets <unknown@simplemachines.org>
// @date@	2005-06-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4296
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
