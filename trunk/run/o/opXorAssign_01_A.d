// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <derek@psych.ward>
// @date@	2005-06-20
// @uri@	news:z9tq34fp6es8$.1qbwawa43urrx$.dlg@40tude.net
// @desc@	Internal error: ../ztc/cgcs.c 213

module dstress.run.o.opXorAssign_01_A;

int main(){
	bit[1] arr;

	arr[0] ^= false;
	assert(!arr[0]);

	arr[0] ^= true;
	assert(arr[0]);

	arr[0] ^= true;
	assert(!arr[0]);

	arr[0] = true;
	arr[0] ^= false;
	assert(arr[0]);

	return 0;
}
