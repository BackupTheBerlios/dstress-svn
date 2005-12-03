// $HeadURL$
// $Date$
// $Author$

module dstress.run.array_initialization_02;

int main(){
	static int[5] a = [ 3:2, 3, 0:5, -2];
	assert(a[0]== 5);
	assert(a[1]==-2);
	assert(a[2]== 0);
	assert(a[3]== 2);
	assert(a[4]== 3);
	return 0;
}
