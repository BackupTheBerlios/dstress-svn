// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4382

module dstress.run.o.opCat_15_R;

int main(){
	creal x = 1.0Li + 2.0L;
	creal[] arr;

	arr = arr ~ x;
	assert(arr.length==1);
	assert(arr[0] == 1.0Li + 2.0L);

	x= 0.0Li + 5.0L;
	assert(arr[0] == 1.0Li + 2.0L);

	return 0;
}
