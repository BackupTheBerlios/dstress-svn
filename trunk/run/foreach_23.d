// $HeadURL$
// $Date$
// $Author$

module dstress.run.foreach_23;

int main(){
	int[] array;
	array.length = 6;
	foreach(size_t i, int c; array){
		array[0]+=i;
	}
	assert(array[0]==15);
	return 0;
}
