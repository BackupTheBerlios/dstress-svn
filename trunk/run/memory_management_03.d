// $HeadURL$
// $Date$
// $Author$

module dstress.run.memory_management_03;

void test(bit[] arr){
	arr[1] = !arr[1];
}

int main(){
	bit[] c;
	c.length=3;
	c[0]=true;
	c[1]=false;
	c[2]=false;
	test(c);
	assert(c[0]==true);
	assert(c[1]==true);
	assert(c[2]==false);
	return 0;
}
