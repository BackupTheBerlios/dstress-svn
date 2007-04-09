// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5343

module dstress.run.c.cdouble_03_A;

void foo(cdouble[] data){
	data[0] -= data[0].im;
}

int main(){
	cdouble[1] d;
	d[0] = 1.0 + 2.0i;

	foo(d);

	assert(d[0].im == 2.0);
	assert(d[0].re == -1.0);

	return 0;
}
