// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <derek@psych.ward>
// @date@	2005-06-20
// @uri@	news:z9tq34fp6es8$.1qbwawa43urrx$.dlg@40tude.net
// @desc@	Internal error: ../ztc/cgcs.c 213

module dstress.run.o.opOrAssign_01_G;

int main(){
	uint[1] arr=8;
	assert(arr[0]==8);

	arr[0]|=1;
	assert(arr[0]==9);

	arr[0]|=8;
	assert(arr[0]==9);

	return 0;
}