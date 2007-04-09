// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-08-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4699

module dstress.run.f.for_06_I;

int foo(double[] arr) {
	size_t i = 1;
	int counter;

	for(size_t j = arr.length-1; j >= i; j--) {
		arr[j] = arr[j - i];
		counter++;
	}

	return counter;
}

int main(){
	double[] array;
	array.length = 2;

	if(foo(array)==1){
		return 0;
	}else{
		return 1;
	}
}
