// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-24
// @uri@	news:dm3vu1$2vaf$1@digitaldaemon.com

module dstress.run.c.cfloat_06;

int main( ){
	cfloat[] array;
	array.length = 3;
	array[0] = 1.0f + 0.0fi;
	array[1] = 0.0f + 1.0fi;
	array[2] = 1.0f + 1.0fi;

	for(int i = 0; i < array.length; i++ ){
		array[i] += -1.0fi * array[i];
	}

	if(array[0] != 1.0f - 1.0fi){
		assert(0);
	}
	if(array[1] != 1.0f + 1.0fi){
		assert(0);
	}
	if(array[2] != 2.0f + 0.0fi){
		assert(0);
	}

	return 0;
}
