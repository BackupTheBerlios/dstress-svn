// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	news:d99i1h$f70$1@digitaldaemon.com

module dstress.run.o.opCat_15_A;

int main(){
	bit x=true;
	bit[] arr;

	arr = arr ~ x;
	assert(arr.length==1);
	assert(arr[0]);

	x=false;
	assert(arr[0]);

	return 0;
}
