// $HeadURL$
// $Date$
// $Author$

// @author@	Florian Sonnenberger <nairolf@online.de>
// @date@	2005-06-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4377
// @desc@	internal error: ..\ztc\cgcs.c 353

module dstress.run.b.bug_cgcs_353_Q2;

int main(){
	creal[] arr;
	arr.length=1;
	arr[0] = 2.0Li + 5.0L;

	arr = arr ~ (1.0Li+3.0L);

	assert(arr[0] == 2.0Li + 5.0L);
	assert(arr[1] == 1.0Li + 3.0L);

	return 0;
}
