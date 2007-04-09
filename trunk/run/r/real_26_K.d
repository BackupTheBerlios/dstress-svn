// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-03-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6682

module dstress.run.r.real_26_K;

int main(){
	const double d = real.max;
	const real r = d;

	static assert(r == r.infinity);

	return 0;
}
	

