// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.array_initialization_25_A;

int main(){
	int[] a;
	a = [0, 1, 2];

	if(a.length != 3){
		assert(0);
	}
	if((a[0] != 0) || (a[1] != 1) || (a[2] != 2)){
		assert(0);
	}

	return 0;
}
