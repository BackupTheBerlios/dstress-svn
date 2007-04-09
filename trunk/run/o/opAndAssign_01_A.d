// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <derek@psych.ward>
// @date@	2005-06-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4363
// @desc@	Internal error: ../ztc/cgcs.c 213

module dstress.run.o.opAndAssign_01_A;

int main(){
	bool[1] arr;

	arr[0] &= false;
	assert(!arr[0]);

	arr[0] &= true;
	assert(!arr[0]);

	arr[0] = true;

	arr[0] &= true;
	assert(arr[0]);

	arr[0] &= false;
	assert(!arr[0]);

	return 0;
}
