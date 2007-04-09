// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-11-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5360

module dstress.run.c.cdouble_02_A;

int main(){
	const cdouble a = 2.0i + 1.0;

	static assert(a.re == 1.0);

	return 0;
}
