// $HeadURL$
// $Date$
// $Author$

module dstress.run.memory_management_02;

void test(int[] arr){
	arr[1]++;
}

int main(){
	int[] c;
	c.length=3;
	c[0]=1;
	c[1]=4;
	c[2]=2;
	test(c);
	assert(c[0]==1);
	assert(c[1]==5);
	assert(c[2]==2);
	return 0;
}
