// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-08-06
// @uri@	news:dd23j9$1b6c$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -release -O

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