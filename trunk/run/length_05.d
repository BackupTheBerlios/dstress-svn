// $HeadURL$
// $Date$
// $Author$

module dstress.run.length_05;

int main(){
	int[] array;
	array.length=3;
	array[0]=0;
	array[1]=2;
	array[2]=0;
	assert(array[$-2]==2);
	return 0;
}