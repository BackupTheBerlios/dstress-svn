// $HeadURL$
// $Date$
// $Author$

module dstress.run.foreach_27;

int main(){
	byte[] bArray;
	int[] iArray;

	bArray[]=0;

	foreach(int c; iArray){
		assert(0);
	}
	
	return 0;
}
