// $HeadURL$
// $Date$
// $Author$

module dstress.run.foreach_04;

int main(){
	int array[3];
	array[0]=0;
	array[1]=2;
	array[2]=4;
	int count=0;
	assert(count==0);
	foreach(int index, int value; array){
		assert(index*2==value);
		count++;
	}
	assert(count==3);
	return 0;
}
