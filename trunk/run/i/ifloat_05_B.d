// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5415

module dstress.run.i.ifloat_05_B;

int main(){
	ifloat a = 1.0fi;

	assert(a.im == 1.0f);
	assert(a.re == 0.0f);

	return 0;
}

