// $HeadURL$
// $Date$
// $Author$

// @author@	Florian Sonnenberger <nairolf@online.de>
// @date@	2005-06-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4377
// @desc@	internal error: ..\ztc\cgcs.c 353

module dstress.run.b.bug_cgcs_353_R2;

int main(){
	bool[] arr;
	arr.length=1;
	arr[0]=false;

	arr = arr ~ true;

	assert(arr.length==2);
	assert(!arr[0]);
	assert(arr[1]);

	arr = arr ~ false;

	assert(arr.length==3);
	assert(!arr[0]);
	assert(arr[1]);
	assert(!arr[2]);

	return 0;
}
