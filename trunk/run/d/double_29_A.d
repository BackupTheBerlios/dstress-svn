// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-03-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6682

module dstress.run.d.double_29_A;

int main(){
	const double d = real.max;
	const real r = f;

	static assert(r == r.infinity);

	return 0;
}

