// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-06-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4382

module dstress.run.o.opCat_15_P;

int main(){
	cfloat x=1.0fi+2.0f;
	cfloat[] arr;

	arr = arr ~ x;
	assert(arr.length==1);
	assert(arr[0]==1.0fi+2.0f);

	x=0.0fi+5.0f;
	assert(arr[0]==1.0fi+2.0f);

	return 0;
}
