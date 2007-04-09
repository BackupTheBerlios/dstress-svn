// $HeadURL$
// $Date$
// $Author$

// @author@	Florian Sonnenberger <nairolf@online.de>
// @date@	2005-06-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4377
// @desc@	internal error: ..\ztc\cgcs.c 353

module dstress.run.b.bug_cgcs_353_J2;

int main(){
	ifloat[] arr;
	arr.length=1;
	arr[0]=2.0fi;

	arr = arr ~ 1.0fi;

	assert(arr[0]==2.0fi);
	assert(arr[1]==1.0fi);

	return 0;
}
