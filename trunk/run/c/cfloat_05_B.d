// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5344

module dstress.run.c.cfloat_05_B;

void foo(cfloat[] data){
	data[0] /= cast(cfloat)data.length;
}

int main(){
	cfloat[] data;
	data.length = 2;
	data[0] = 4.0f + 2.0fi;
	data[1] = 2.0f + 4.0fi;

	foo(data);

	if(data.length != 2){
		assert(0);
	}
	if(data[0].im != 1.0f){
		assert(0);
	}
	if(data[0].re != 2.0f){
		assert(0);
	}
	if(data[1].im != 4.0f){
		assert(0);
	}
	if(data[1].re != 2.0f){
		assert(0);
	}

	return 0;
}
