// $HeadURL$
// $Date$
// $Author$

// @author@	Florian Sonnenberger <nairolf@online.de>
// @date@	2005-06-20
// @uri@	news:d9738b$1bgr$3@digitaldaemon.com
// @desc@	internal error: ..\ztc\cgcs.c 353

module dstress.run.b.bug_cgcs_353_I2;

int main(){
	float[] arr;
	arr.length=1;
	arr[0]=2.0f;

	arr = arr ~ 1.0f;

	assert(arr[0]==2.0f);
	assert(arr[1]==1.0f);

	return 0;
}
