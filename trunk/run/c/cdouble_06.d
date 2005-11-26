// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-24
// @uri@	news:dm3vu1$2vaf$1@digitaldaemon.com

module dstress.run.c.cdouble_06;

int main( ){
	cdouble[] array;
	array.length = 3;
	array[0] = 1.0;
	array[1] = 1.0i;
	array[2] = 1.0 + 1.0i;

	for(int i = 0; i < array.length; i++ ){
		array[i] += -1.0i * array[i];
	}

	assert(array[0] == 1.0 - 1.0i);
	assert(array[1] == 1.0 + 1.0i);
	assert(array[2] == 2.0);

	return 0;
}
