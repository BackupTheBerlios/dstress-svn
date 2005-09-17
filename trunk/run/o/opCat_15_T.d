// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	news:d99i1h$f70$1@digitaldaemon.com

module dstress.run.o.opCat_15_T;

int main(){
	dchar x = 'a';
	dchar[] arr;

	arr = arr ~ x;
	assert(arr.length==1);
	assert(arr[0]=='a');

	x='b';
	assert(arr[0]=='a');

	return 0;
}
