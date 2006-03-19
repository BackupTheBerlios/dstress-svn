// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-07
// @uri@	news:dko4pv$95q$3@digitaldaemon.com

module dstress.run.c.cfloat_05_C;

void foo(cfloat[] data){
	data[0] /= data.length;
}

int main(){
	cfloat[] data;
	data.length = 2;
	data[0] = 4.0f + 2.0fi;
	data[1] = 2.0f + 4.0fi;

	foo(data);

	assert(data.length == 2);
	assert(data[0].im == 1.0f);
	assert(data[0].re == 2.0f);
	assert(data[1].im == 4.0f);
	assert(data[1].re == 2.0f);
	
	return 0;
}
