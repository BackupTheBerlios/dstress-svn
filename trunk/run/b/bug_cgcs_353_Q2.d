// $HeadURL$
// $Date$
// $Author$

// @author@	Florian Sonnenberger <nairolf@online.de>
// @date@	2005-06-20
// @uri@	news:d9738b$1bgr$3@digitaldaemon.com
// @desc@	internal error: ..\ztc\cgcs.c 353

module dstress.run.b.bug_cgcs_353_Q2;

int main(){
	creal[] arr;
	arr.length=1;
	arr[0]=2.0i+5.0;

	arr = arr ~ (1.0i+3.0);

	assert(arr[0]==2.0i+5.0);
	assert(arr[1]==1.0i+3.0);

	return 0;
}
