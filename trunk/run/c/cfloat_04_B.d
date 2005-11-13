// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-07
// @uri@	news:dko4a8$95q$2@digitaldaemon.com

module dstress.run.c.cfloat_04_B;

void foo(cfloat[] data){
	data[0] -= data[0].re;
}

int main(){
	cfloat[1] d;
	d[0] = 1.0 + 2.0i;

	foo(d);

	assert(d[0].im == 2.0);
	assert(d[0].re == 0.0);

	return 0;
}
