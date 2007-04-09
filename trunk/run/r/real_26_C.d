// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-03-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6682

module dstress.run.r.real_26_C;

int main(){
	const float f = real.max;
	real r;
	r = f;

	if(r != r.infinity){
		assert(0);
	}

	return 0;
}
	

