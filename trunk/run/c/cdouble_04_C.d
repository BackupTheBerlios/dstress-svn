// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5344

module dstress.run.c.cdouble_04_C;

void foo(cdouble[] data){
	data[0] /= data.length;
}

int main(){
	cdouble[] data;
	data.length = 2;
	data[0] = 4.0 + 2.0i;
	data[1] = 2.0 + 4.0i;

	foo(data);

	assert(data.length == 2);
	assert(data[0].im == 1.0);
	assert(data[0].re == 2.0);
	assert(data[1].im == 4.0);
	assert(data[1].re == 2.0);

	return 0;
}
