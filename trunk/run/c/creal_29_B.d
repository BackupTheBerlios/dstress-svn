// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5344

module dstress.run.c.creal_29_B;

void foo(creal[] data){
	data[0] /= cast(creal)data.length;
}

int main(){
	creal[] data;
	data.length = 2;
	data[0] = 4.0L + 2.0Li;
	data[1] = 2.0L + 4.0Li;

	foo(data);

	if(data.length != 2){
		assert(0);
	}
	if(data[0].im != 1.0L){
		assert(0);
	}
	if(data[0].re != 2.0L){
		assert(0);
	}
	if(data[1].im != 4.0L){
		assert(0);
	}
	if(data[1].re != 2.0L){
		assert(0);
	}

	return 0;
}
