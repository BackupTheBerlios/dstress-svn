// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	news:d99i1h$f70$1@digitaldaemon.com

module dstress.run.o.opCat_15_F;

int main(){
	int x=1;
	int[] arr;

	arr = arr ~ x;
	assert(arr.length==1);
	assert(arr[0]==1);

	x=0;
	assert(arr[0]==1);

	return 0;
}