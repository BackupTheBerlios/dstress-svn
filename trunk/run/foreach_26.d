// $HeadURL$
// $Date$
// $Author$

module dstress.run.foreach_26;

int main(){
	bool[] bArray;
	int[] iArray;

	bArray[]=false;

	foreach(int c; iArray){
		assert(0);
	}
	
	return 0;
}
