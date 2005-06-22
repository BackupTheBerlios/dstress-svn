// $HeadURL$
// $Date$
// $Author$

// @author@	Florian Sonnenberger <nairolf@online.de>
// @date@	2005-06-20
// @uri@	news:d9738b$1bgr$3@digitaldaemon.com
// @desc@	internal error: ..\ztc\cgcs.c 353

module dstress.run.b.bug_cgcs_353_V2;

int main(){
	ubyte[] arr;
	arr.length=1;
	arr[0]=2;

	arr = arr ~ 5u;

	assert(arr.length==2);
	assert(arr[0]==2);
	assert(arr[1]==5);

	return 0;
}
