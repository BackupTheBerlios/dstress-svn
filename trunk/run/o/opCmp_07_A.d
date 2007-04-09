// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-09-27
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5073

module dstress.run.o.opCmp_07_A;

int main(){
	bool[9] a;
	a[8] = true;
	bool[9] b;
	b[8] = false;

	assert(a>b);

	return 0;
}
