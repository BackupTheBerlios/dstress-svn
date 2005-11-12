// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-08-06
// @uri@	news:dd23j9$1b6c$1@digitaldaemon.com

module dstress.run.f.for_06_G;

int foo(inout real[] arr) {
	size_t i = 1;
	int counter;
	
	for(size_t j = arr.length-1; j >= i; j--) {
		arr[j] = arr[j - i];
		counter++;
	}

	return counter;
}

int main(){
	real[] array;
	array.length = 1;
	
	if(foo(array)==0){
		return 0;
	}else{
		return 1;
	}
}
