// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	news:d99i1h$f70$1@digitaldaemon.com

module dstress.run.o.opCat_15_J;

int main(){
	float x=1.0;
	float[] arr;

	arr = arr ~ x;
	assert(arr.length==1);
	assert(arr[0]==1.0);

	x=0.0;
	assert(arr[0]==1.0);

	return 0;
}
