// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.array_initialization_26_A;

int main(){
	int[] a = new int [](3);

	if(a.length != 3){
		assert(0);
	}
	if((a[0] != 0) || (a[1] != 0) || (a[2] != 0)){
		assert(0);
	}

	return 0;
}
