// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	news:d99i1h$f70$1@digitaldaemon.com

module dstress.run.o.opCat_15_N;

int main(){
	idouble x=1.0i;
	idouble[] arr;

	arr = arr ~ x;
	assert(arr.length==1);
	assert(arr[0]==1.0i);

	x=0.0i;
	assert(arr[0]==1.0i);

	return 0;
}
