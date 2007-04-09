// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <derek@psych.ward>
// @date@	2005-06-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4363
// @desc@	Internal error: ../ztc/cgcs.c 213

module dstress.run.o.opXorAssign_01_F;

int main(){
	int[1] arr=8;
	assert(arr[0]==8);

	arr[0] ^= 1;
	assert(arr[0]==9);

	arr[0] ^= 1;
	assert(arr[0]==8);

	return 0;
}
