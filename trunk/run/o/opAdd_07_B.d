// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-11-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5360

module dstress.run.o.opAdd_07_B;

int main(){
	const ifloat a = 1.0i;
	const ifloat b = 3.0i;

	static assert(a + b == 4.0i);

	return 0;
}
