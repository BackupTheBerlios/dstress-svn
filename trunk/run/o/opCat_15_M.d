// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	news:d99i1h$f70$1@digitaldaemon.com

module dstress.run.o.opCat_15_M;

int main(){
	ifloat x=1.0i;
	ifloat[] arr;

	arr = arr ~ x;
	assert(arr.length==1);
	assert(arr[0]==1.0i);

	x=0.0i;
	assert(arr[0]==1.0i);

	return 0;
}
