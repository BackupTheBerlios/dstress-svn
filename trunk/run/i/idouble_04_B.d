// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5415

module dstress.run.i.idouble_04_B;

int main(){
	idouble a = 1.0i;

	assert(a.im == 1.0);
	assert(a.re == 0.0);

	return 0;
}

