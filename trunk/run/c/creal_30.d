// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5643

module dstress.run.c.creal_30;

int main( ){
	creal[] array;
	array.length = 3;
	array[0] = 1.0L + 0.0Li;
	array[1] = 0.0L + 1.0Li;
	array[2] = 1.0L + 1.0Li;

	for(int i = 0; i < array.length; i++ ){
		array[i] += -1.0Li * array[i];
	}

	if(array[0] != 1.0L - 1.0Li){
		assert(0);
	}
	if(array[1] != 1.0L + 1.0Li){
		assert(0);
	}
	if(array[2] != 2.0L + 0.0Li){
		assert(0);
	}

	return 0;
}
