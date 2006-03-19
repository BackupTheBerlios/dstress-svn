// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-07
// @uri@	news:dko4pv$95q$3@digitaldaemon.com

module dstress.run.c.creal_29_A;

void foo(creal[] data){
	data[0] /= cast(real)data.length;
}

int main(){
	creal[] data;
	data.length = 2;
	data[0] = 4.0L + 2.0Li;
	data[1] = 2.0L + 4.0Li;

	foo(data);

	assert(data.length == 2);
	assert(data[0].im == 1.0L);
	assert(data[0].re == 2.0L);
	assert(data[1].im == 4.0L);
	assert(data[1].re == 2.0L);
	
	return 0;
}
