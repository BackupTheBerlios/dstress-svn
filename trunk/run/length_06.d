// $HeadURL$
// $Date$
// $Author$

module dstress.run.length_06;

int main(){
	int[3] array;
	array[0]=0;
	array[1]=2;
	array[2]=0;
	assert(array[$-2]==2);
	return 0;
}