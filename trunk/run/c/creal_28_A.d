// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5343

module dstress.run.c.creal_28_A;

void foo(creal[] data){
	data[0] -= data[0].im;
}

int main(){
	creal[1] d;
	d[0] = 1.0L + 2.0Li;

	foo(d);

	if(d[0].im != 2.0L){
		assert(0);
	}
	if(d[0].re != -1.0L){
		assert(0);
	}

	return 0;
}
