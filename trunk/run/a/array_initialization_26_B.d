// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.array_initialization_26_B;

int main(){
	int[][] a = new int [][](1, 1);

	if((a.length != 1) || (a[0].length != 1)){
		assert(0);
	}
	if(a[0][0] != 0){
		assert(0);
	}

	return 0;
}
