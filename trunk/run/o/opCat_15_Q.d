// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	news:d99i1h$f70$1@digitaldaemon.com

module dstress.run.o.opCat_15_Q;

int main(){
	cdouble x=1.0i+2.0;
	cdouble[] arr;

	arr = arr ~ x;
	assert(arr.length==1);
	assert(arr[0]==1.0i+2.0);

	x=0.0i+5.0;
	assert(arr[0]==1.0i+2.0);

	return 0;
}
