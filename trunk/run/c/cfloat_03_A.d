// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-11-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5360

module dstress.run.c.cfloat_03_A;

int main(){
	const cfloat a = 2.0fi + 1.0f;

	static assert(a.im == 2.0f);

	return 0;
}
