// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-11-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5360

module dstress.run.o.opMul_08_B;

int main(){
	const ifloat a = 1.0i;
	static assert(a * a == -1.0);

	return 0;
}
