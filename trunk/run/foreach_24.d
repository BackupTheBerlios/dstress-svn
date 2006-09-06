// $HeadURL$
// $Date$
// $Author$

module dstress.compile.foreach_24;

int main(){
	int[] x;
	x.length=3;
	x[0]=9;
	x[1]=7;
	x[2]=11;

	int y=0;
	foreach(int index, int z; x){
		y += z;
	}
	if(y != 27){
		assert(0);
	}

	return 0;
}
